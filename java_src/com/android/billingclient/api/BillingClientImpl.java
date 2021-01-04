package com.android.billingclient.api;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.support.annotation.VisibleForTesting;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.util.BillingHelper;
import com.android.vending.billing.IInAppBillingService;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

/* access modifiers changed from: package-private */
public class BillingClientImpl extends BillingClient {
    private static final String GET_SKU_DETAILS_ITEM_LIST = "ITEM_ID_LIST";
    private static final String KEY_VR = "vr";
    private static final String LIBRARY_VERSION = "1.0";
    private static final String LIBRARY_VERSION_KEY = "libraryVersion";
    private static final int MAX_SKU_DETAILS_ITEMS_PER_REQUEST = 20;
    private static final String TAG = "BillingClient";
    private final Context mApplicationContext;
    private final BillingBroadcastManager mBroadcastManager;
    private int mClientState = 0;
    private ExecutorService mExecutorService;
    private boolean mIABv6Supported;
    private IInAppBillingService mService;
    private ServiceConnection mServiceConnection;
    private boolean mSubscriptionUpdateSupported;
    private boolean mSubscriptionsSupported;
    private final Handler mUiThreadHandler = new Handler();
    private final BroadcastReceiver onPurchaseFinishedReceiver = new BroadcastReceiver() {
        /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass1 */

        public void onReceive(Context context, Intent intent) {
            PurchasesUpdatedListener listener = BillingClientImpl.this.mBroadcastManager.getListener();
            if (listener == null) {
                BillingHelper.logWarn(BillingClientImpl.TAG, "PurchasesUpdatedListener is null - no way to return the response.");
            } else {
                listener.onPurchasesUpdated(intent.getIntExtra("response_code_key", 6), BillingHelper.extractPurchases(intent.getBundleExtra("response_bundle_key")));
            }
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface ClientState {
        public static final int CLOSED = 3;
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int DISCONNECTED = 0;
    }

    @UiThread
    BillingClientImpl(@NonNull Context context, @NonNull PurchasesUpdatedListener purchasesUpdatedListener) {
        this.mApplicationContext = context.getApplicationContext();
        this.mBroadcastManager = new BillingBroadcastManager(this.mApplicationContext, purchasesUpdatedListener);
    }

    @Override // com.android.billingclient.api.BillingClient
    public int isFeatureSupported(String str) {
        char c = 65535;
        if (!isReady()) {
            return -1;
        }
        int hashCode = str.hashCode();
        if (hashCode != -422092961) {
            if (hashCode != 292218239) {
                if (hashCode != 1219490065) {
                    if (hashCode == 1987365622 && str.equals(BillingClient.FeatureType.SUBSCRIPTIONS)) {
                        c = 0;
                    }
                } else if (str.equals(BillingClient.FeatureType.SUBSCRIPTIONS_ON_VR)) {
                    c = 3;
                }
            } else if (str.equals(BillingClient.FeatureType.IN_APP_ITEMS_ON_VR)) {
                c = 2;
            }
        } else if (str.equals(BillingClient.FeatureType.SUBSCRIPTIONS_UPDATE)) {
            c = 1;
        }
        switch (c) {
            case 0:
                if (this.mSubscriptionsSupported) {
                    return 0;
                }
                return -2;
            case 1:
                if (this.mSubscriptionUpdateSupported) {
                    return 0;
                }
                return -2;
            case 2:
                return isBillingSupportedOnVr(BillingClient.SkuType.INAPP);
            case 3:
                return isBillingSupportedOnVr(BillingClient.SkuType.SUBS);
            default:
                BillingHelper.logWarn(TAG, "Unsupported feature: " + str);
                return 5;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public boolean isReady() {
        return (this.mClientState != 2 || this.mService == null || this.mServiceConnection == null) ? false : true;
    }

    @Override // com.android.billingclient.api.BillingClient
    public void startConnection(@NonNull BillingClientStateListener billingClientStateListener) {
        if (isReady()) {
            BillingHelper.logVerbose(TAG, "Service connection is valid. No need to re-initialize.");
            billingClientStateListener.onBillingSetupFinished(0);
        } else if (this.mClientState == 1) {
            BillingHelper.logWarn(TAG, "Client is already in the process of connecting to billing service.");
            billingClientStateListener.onBillingSetupFinished(5);
        } else if (this.mClientState == 3) {
            BillingHelper.logWarn(TAG, "Client was already closed and can't be reused. Please create another instance.");
            billingClientStateListener.onBillingSetupFinished(5);
        } else {
            this.mClientState = 1;
            this.mBroadcastManager.registerReceiver();
            LocalBroadcastManager.getInstance(this.mApplicationContext).registerReceiver(this.onPurchaseFinishedReceiver, new IntentFilter("proxy_activity_response_intent_action"));
            BillingHelper.logVerbose(TAG, "Starting in-app billing setup.");
            this.mServiceConnection = new BillingServiceConnection(billingClientStateListener);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.mApplicationContext.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = queryIntentServices.get(0);
                if (resolveInfo.serviceInfo != null) {
                    String str = resolveInfo.serviceInfo.packageName;
                    String str2 = resolveInfo.serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null) {
                        BillingHelper.logWarn(TAG, "The device doesn't have valid Play Store.");
                    } else {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        intent2.putExtra(LIBRARY_VERSION_KEY, "1.0");
                        if (this.mApplicationContext.bindService(intent2, this.mServiceConnection, 1)) {
                            BillingHelper.logVerbose(TAG, "Service was bonded successfully.");
                            return;
                        }
                        BillingHelper.logWarn(TAG, "Connection to Billing service is blocked.");
                    }
                }
            }
            this.mClientState = 0;
            BillingHelper.logVerbose(TAG, "Billing service unavailable on device.");
            billingClientStateListener.onBillingSetupFinished(3);
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void endConnection() {
        LocalBroadcastManager.getInstance(this.mApplicationContext).unregisterReceiver(this.onPurchaseFinishedReceiver);
        this.mBroadcastManager.destroy();
        this.mClientState = 3;
        if (this.mServiceConnection != null) {
            BillingHelper.logVerbose(TAG, "Unbinding from service.");
            this.mApplicationContext.unbindService(this.mServiceConnection);
            this.mServiceConnection = null;
        }
        this.mService = null;
        if (this.mExecutorService != null) {
            this.mExecutorService.shutdownNow();
            this.mExecutorService = null;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public int launchBillingFlow(Activity activity, BillingFlowParams billingFlowParams) {
        Bundle bundle;
        if (!isReady()) {
            return -1;
        }
        String skuType = billingFlowParams.getSkuType();
        String sku = billingFlowParams.getSku();
        if (sku == null) {
            BillingHelper.logWarn(TAG, "Please fix the input params. SKU can't be null.");
            return 5;
        } else if (skuType == null) {
            BillingHelper.logWarn(TAG, "Please fix the input params. SkuType can't be null.");
            return 5;
        } else {
            boolean z = true;
            if (billingFlowParams.getOldSkus() != null && billingFlowParams.getOldSkus().size() < 1) {
                BillingHelper.logWarn(TAG, "Please fix the input params. OldSkus size can't be 0.");
                return 5;
            } else if (!skuType.equals(BillingClient.SkuType.SUBS) || this.mSubscriptionsSupported) {
                if (billingFlowParams.getOldSkus() == null) {
                    z = false;
                }
                if (z && !this.mSubscriptionUpdateSupported) {
                    BillingHelper.logWarn(TAG, "Current client doesn't support subscriptions update.");
                    return -2;
                } else if (!billingFlowParams.hasExtraParams() || this.mIABv6Supported) {
                    try {
                        BillingHelper.logVerbose(TAG, "Constructing buy intent for " + sku + ", item type: " + skuType);
                        if (this.mIABv6Supported) {
                            Bundle constructExtraParams = constructExtraParams(billingFlowParams);
                            constructExtraParams.putString(LIBRARY_VERSION_KEY, "1.0");
                            bundle = this.mService.getBuyIntentExtraParams(billingFlowParams.getVrPurchaseFlow() ? 7 : 6, this.mApplicationContext.getPackageName(), sku, skuType, null, constructExtraParams);
                        } else if (z) {
                            bundle = this.mService.getBuyIntentToReplaceSkus(5, this.mApplicationContext.getPackageName(), billingFlowParams.getOldSkus(), sku, BillingClient.SkuType.SUBS, null);
                        } else {
                            bundle = this.mService.getBuyIntent(3, this.mApplicationContext.getPackageName(), sku, skuType, null);
                        }
                        int responseCodeFromBundle = BillingHelper.getResponseCodeFromBundle(bundle, TAG);
                        if (responseCodeFromBundle != 0) {
                            BillingHelper.logWarn(TAG, "Unable to buy item, Error response code: " + responseCodeFromBundle);
                            return responseCodeFromBundle;
                        }
                        Intent intent = new Intent(activity, ProxyBillingActivity.class);
                        intent.putExtra(BillingHelper.RESPONSE_BUY_INTENT, bundle.getParcelable(BillingHelper.RESPONSE_BUY_INTENT));
                        activity.startActivity(intent);
                        return 0;
                    } catch (RemoteException unused) {
                        BillingHelper.logWarn(TAG, "RemoteException while launching launching replace subscriptions flow: ; for sku: " + sku + "; try to reconnect");
                        return -1;
                    }
                } else {
                    BillingHelper.logWarn(TAG, "Current client doesn't support extra params for buy intent.");
                    return -2;
                }
            } else {
                BillingHelper.logWarn(TAG, "Current client doesn't support subscriptions.");
                return -2;
            }
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public Purchase.PurchasesResult queryPurchases(String str) {
        if (!isReady()) {
            return new Purchase.PurchasesResult(-1, null);
        }
        if (!TextUtils.isEmpty(str)) {
            return queryPurchasesInternal(str, false);
        }
        BillingHelper.logWarn(TAG, "Please provide a valid SKU type.");
        return new Purchase.PurchasesResult(5, null);
    }

    @Override // com.android.billingclient.api.BillingClient
    public void querySkuDetailsAsync(SkuDetailsParams skuDetailsParams, final SkuDetailsResponseListener skuDetailsResponseListener) {
        if (!isReady()) {
            skuDetailsResponseListener.onSkuDetailsResponse(-1, null);
        }
        final String skuType = skuDetailsParams.getSkuType();
        final List<String> skusList = skuDetailsParams.getSkusList();
        if (TextUtils.isEmpty(skuType)) {
            BillingHelper.logWarn(TAG, "Please fix the input params. SKU type can't be empty.");
            skuDetailsResponseListener.onSkuDetailsResponse(5, null);
        } else if (skusList == null) {
            BillingHelper.logWarn(TAG, "Please fix the input params. The list of SKUs can't be empty.");
            skuDetailsResponseListener.onSkuDetailsResponse(5, null);
        } else {
            executeAsync(new Runnable() {
                /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass2 */

                public void run() {
                    final SkuDetails.SkuDetailsResult querySkuDetailsInternal = BillingClientImpl.this.querySkuDetailsInternal(skuType, skusList);
                    BillingClientImpl.this.postToUiThread(new Runnable() {
                        /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass2.AnonymousClass1 */

                        public void run() {
                            skuDetailsResponseListener.onSkuDetailsResponse(querySkuDetailsInternal.getResponseCode(), querySkuDetailsInternal.getSkuDetailsList());
                        }
                    });
                }
            });
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void consumeAsync(final String str, final ConsumeResponseListener consumeResponseListener) {
        if (!isReady()) {
            consumeResponseListener.onConsumeResponse(-1, null);
        }
        if (TextUtils.isEmpty(str)) {
            BillingHelper.logWarn(TAG, "Please provide a valid purchase token got from queryPurchases result.");
            consumeResponseListener.onConsumeResponse(5, str);
            return;
        }
        executeAsync(new Runnable() {
            /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass3 */

            public void run() {
                BillingClientImpl.this.consumeInternal(str, consumeResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.BillingClient
    public void queryPurchaseHistoryAsync(final String str, final PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        if (!isReady()) {
            purchaseHistoryResponseListener.onPurchaseHistoryResponse(-1, null);
        }
        executeAsync(new Runnable() {
            /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass4 */

            public void run() {
                final Purchase.PurchasesResult queryPurchasesInternal = BillingClientImpl.this.queryPurchasesInternal(str, true);
                BillingClientImpl.this.postToUiThread(new Runnable() {
                    /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass4.AnonymousClass1 */

                    public void run() {
                        purchaseHistoryResponseListener.onPurchaseHistoryResponse(queryPurchasesInternal.getResponseCode(), queryPurchasesInternal.getPurchasesList());
                    }
                });
            }
        });
    }

    private Bundle constructExtraParams(BillingFlowParams billingFlowParams) {
        Bundle bundle = new Bundle();
        if (!billingFlowParams.getReplaceSkusProration()) {
            bundle.putBoolean("replaceSkusProration", false);
        }
        if (billingFlowParams.getAccountId() != null) {
            bundle.putString("accountId", billingFlowParams.getAccountId());
        }
        if (billingFlowParams.getVrPurchaseFlow()) {
            bundle.putBoolean(KEY_VR, true);
        }
        if (billingFlowParams.getOldSkus() != null) {
            bundle.putStringArrayList("skusToReplace", billingFlowParams.getOldSkus());
        }
        return bundle;
    }

    private void executeAsync(Runnable runnable) {
        if (this.mExecutorService == null) {
            this.mExecutorService = Executors.newFixedThreadPool(BillingHelper.NUMBER_OF_CORES);
        }
        this.mExecutorService.submit(runnable);
    }

    private int isBillingSupportedOnVr(String str) {
        try {
            return this.mService.isBillingSupportedExtraParams(7, this.mApplicationContext.getPackageName(), str, generateVrBundle()) == 0 ? 0 : -2;
        } catch (RemoteException unused) {
            BillingHelper.logWarn(TAG, "RemoteException while checking if billing is supported; try to reconnect");
            return -1;
        }
    }

    private Bundle generateVrBundle() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(KEY_VR, true);
        return bundle;
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public SkuDetails.SkuDetailsResult querySkuDetailsInternal(String str, List<String> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 20;
            ArrayList<String> arrayList2 = new ArrayList<>(list.subList(i, i2 > size ? size : i2));
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(GET_SKU_DETAILS_ITEM_LIST, arrayList2);
            bundle.putString(LIBRARY_VERSION_KEY, "1.0");
            try {
                Bundle skuDetails = this.mService.getSkuDetails(3, this.mApplicationContext.getPackageName(), str, bundle);
                if (skuDetails == null) {
                    BillingHelper.logWarn(TAG, "querySkuDetailsAsync got null sku details list");
                    return new SkuDetails.SkuDetailsResult(4, null);
                } else if (!skuDetails.containsKey(BillingHelper.RESPONSE_GET_SKU_DETAILS_LIST)) {
                    int responseCodeFromBundle = BillingHelper.getResponseCodeFromBundle(skuDetails, TAG);
                    if (responseCodeFromBundle != 0) {
                        BillingHelper.logWarn(TAG, "getSkuDetails() failed. Response code: " + responseCodeFromBundle);
                        return new SkuDetails.SkuDetailsResult(responseCodeFromBundle, arrayList);
                    }
                    BillingHelper.logWarn(TAG, "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                    return new SkuDetails.SkuDetailsResult(6, arrayList);
                } else {
                    ArrayList<String> stringArrayList = skuDetails.getStringArrayList(BillingHelper.RESPONSE_GET_SKU_DETAILS_LIST);
                    if (stringArrayList == null) {
                        BillingHelper.logWarn(TAG, "querySkuDetailsAsync got null response list");
                        return new SkuDetails.SkuDetailsResult(4, null);
                    }
                    for (int i3 = 0; i3 < stringArrayList.size(); i3++) {
                        try {
                            SkuDetails skuDetails2 = new SkuDetails(stringArrayList.get(i3));
                            BillingHelper.logVerbose(TAG, "Got sku details: " + skuDetails2);
                            arrayList.add(skuDetails2);
                        } catch (JSONException unused) {
                            BillingHelper.logWarn(TAG, "Got a JSON exception trying to decode SkuDetails");
                            return new SkuDetails.SkuDetailsResult(6, null);
                        }
                    }
                    i = i2;
                }
            } catch (RemoteException e) {
                BillingHelper.logWarn(TAG, "querySkuDetailsAsync got a remote exception (try to reconnect): " + e);
                return new SkuDetails.SkuDetailsResult(-1, null);
            }
        }
        return new SkuDetails.SkuDetailsResult(0, arrayList);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Purchase.PurchasesResult queryPurchasesInternal(String str, boolean z) {
        Bundle bundle;
        BillingHelper.logVerbose(TAG, "Querying owned items, item type: " + str + "; history: " + z);
        ArrayList arrayList = new ArrayList();
        String str2 = null;
        do {
            if (z) {
                try {
                    if (!this.mIABv6Supported) {
                        BillingHelper.logWarn(TAG, "getPurchaseHistory is not supported on current device");
                        return new Purchase.PurchasesResult(-2, null);
                    }
                    bundle = this.mService.getPurchaseHistory(6, this.mApplicationContext.getPackageName(), str, str2, null);
                } catch (RemoteException e) {
                    BillingHelper.logWarn(TAG, "Got exception trying to get purchases: " + e + "; try to reconnect");
                    return new Purchase.PurchasesResult(-1, null);
                }
            } else {
                bundle = this.mService.getPurchases(3, this.mApplicationContext.getPackageName(), str, str2);
            }
            if (bundle == null) {
                BillingHelper.logWarn(TAG, "queryPurchases got null owned items list");
                return new Purchase.PurchasesResult(6, null);
            }
            int responseCodeFromBundle = BillingHelper.getResponseCodeFromBundle(bundle, TAG);
            if (responseCodeFromBundle != 0) {
                BillingHelper.logWarn(TAG, "getPurchases() failed. Response code: " + responseCodeFromBundle);
                return new Purchase.PurchasesResult(responseCodeFromBundle, null);
            } else if (!bundle.containsKey(BillingHelper.RESPONSE_INAPP_ITEM_LIST) || !bundle.containsKey(BillingHelper.RESPONSE_INAPP_PURCHASE_DATA_LIST) || !bundle.containsKey(BillingHelper.RESPONSE_INAPP_SIGNATURE_LIST)) {
                BillingHelper.logWarn(TAG, "Bundle returned from getPurchases() doesn't contain required fields.");
                return new Purchase.PurchasesResult(6, null);
            } else {
                ArrayList<String> stringArrayList = bundle.getStringArrayList(BillingHelper.RESPONSE_INAPP_ITEM_LIST);
                ArrayList<String> stringArrayList2 = bundle.getStringArrayList(BillingHelper.RESPONSE_INAPP_PURCHASE_DATA_LIST);
                ArrayList<String> stringArrayList3 = bundle.getStringArrayList(BillingHelper.RESPONSE_INAPP_SIGNATURE_LIST);
                if (stringArrayList == null) {
                    BillingHelper.logWarn(TAG, "Bundle returned from getPurchases() contains null SKUs list.");
                    return new Purchase.PurchasesResult(6, null);
                } else if (stringArrayList2 == null) {
                    BillingHelper.logWarn(TAG, "Bundle returned from getPurchases() contains null purchases list.");
                    return new Purchase.PurchasesResult(6, null);
                } else if (stringArrayList3 == null) {
                    BillingHelper.logWarn(TAG, "Bundle returned from getPurchases() contains null signatures list.");
                    return new Purchase.PurchasesResult(6, null);
                } else {
                    for (int i = 0; i < stringArrayList2.size(); i++) {
                        String str3 = stringArrayList2.get(i);
                        String str4 = stringArrayList3.get(i);
                        BillingHelper.logVerbose(TAG, "Sku is owned: " + stringArrayList.get(i));
                        try {
                            Purchase purchase = new Purchase(str3, str4);
                            if (TextUtils.isEmpty(purchase.getPurchaseToken())) {
                                BillingHelper.logWarn(TAG, "BUG: empty/null token!");
                            }
                            arrayList.add(purchase);
                        } catch (JSONException e2) {
                            BillingHelper.logWarn(TAG, "Got an exception trying to decode the purchase: " + e2);
                            return new Purchase.PurchasesResult(6, null);
                        }
                    }
                    str2 = bundle.getString(BillingHelper.INAPP_CONTINUATION_TOKEN);
                    BillingHelper.logVerbose(TAG, "Continuation token: " + str2);
                }
            }
        } while (!TextUtils.isEmpty(str2));
        return new Purchase.PurchasesResult(0, arrayList);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void postToUiThread(Runnable runnable) {
        this.mUiThreadHandler.post(runnable);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    @WorkerThread
    private void consumeInternal(final String str, final ConsumeResponseListener consumeResponseListener) {
        try {
            BillingHelper.logVerbose(TAG, "Consuming purchase with token: " + str);
            final int consumePurchase = this.mService.consumePurchase(3, this.mApplicationContext.getPackageName(), str);
            if (consumePurchase == 0) {
                BillingHelper.logVerbose(TAG, "Successfully consumed purchase.");
                if (consumeResponseListener != null) {
                    postToUiThread(new Runnable() {
                        /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass5 */

                        public void run() {
                            consumeResponseListener.onConsumeResponse(consumePurchase, str);
                        }
                    });
                    return;
                }
                return;
            }
            BillingHelper.logWarn(TAG, "Error consuming purchase with token. Response code: " + consumePurchase);
            postToUiThread(new Runnable() {
                /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass6 */

                public void run() {
                    BillingHelper.logWarn(BillingClientImpl.TAG, "Error consuming purchase.");
                    consumeResponseListener.onConsumeResponse(consumePurchase, str);
                }
            });
        } catch (RemoteException e) {
            postToUiThread(new Runnable() {
                /* class com.android.billingclient.api.BillingClientImpl.AnonymousClass7 */

                public void run() {
                    BillingHelper.logWarn(BillingClientImpl.TAG, "Error consuming purchase; ex: " + e);
                    consumeResponseListener.onConsumeResponse(-1, str);
                }
            });
        }
    }

    private final class BillingServiceConnection implements ServiceConnection {
        private final BillingClientStateListener mListener;

        private BillingServiceConnection(@NonNull BillingClientStateListener billingClientStateListener) {
            if (billingClientStateListener != null) {
                this.mListener = billingClientStateListener;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when init is done.");
        }

        public void onServiceDisconnected(ComponentName componentName) {
            BillingHelper.logWarn(BillingClientImpl.TAG, "Billing service disconnected.");
            BillingClientImpl.this.mService = null;
            BillingClientImpl.this.mClientState = 0;
            this.mListener.onBillingServiceDisconnected();
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            BillingHelper.logVerbose(BillingClientImpl.TAG, "Billing service connected.");
            BillingClientImpl.this.mService = IInAppBillingService.Stub.asInterface(iBinder);
            String packageName = BillingClientImpl.this.mApplicationContext.getPackageName();
            BillingClientImpl.this.mSubscriptionsSupported = false;
            BillingClientImpl.this.mSubscriptionUpdateSupported = false;
            BillingClientImpl.this.mIABv6Supported = false;
            try {
                int isBillingSupported = BillingClientImpl.this.mService.isBillingSupported(6, packageName, BillingClient.SkuType.SUBS);
                if (isBillingSupported == 0) {
                    BillingHelper.logVerbose(BillingClientImpl.TAG, "In-app billing API version 6 with subs is supported.");
                    BillingClientImpl.this.mIABv6Supported = true;
                    BillingClientImpl.this.mSubscriptionsSupported = true;
                    BillingClientImpl.this.mSubscriptionUpdateSupported = true;
                } else {
                    if (BillingClientImpl.this.mService.isBillingSupported(6, packageName, BillingClient.SkuType.INAPP) == 0) {
                        BillingHelper.logVerbose(BillingClientImpl.TAG, "In-app billing API without subs version 6 supported.");
                        BillingClientImpl.this.mIABv6Supported = true;
                    }
                    isBillingSupported = BillingClientImpl.this.mService.isBillingSupported(5, packageName, BillingClient.SkuType.SUBS);
                    if (isBillingSupported == 0) {
                        BillingHelper.logVerbose(BillingClientImpl.TAG, "In-app billing API version 5 supported.");
                        BillingClientImpl.this.mSubscriptionUpdateSupported = true;
                        BillingClientImpl.this.mSubscriptionsSupported = true;
                    } else {
                        isBillingSupported = BillingClientImpl.this.mService.isBillingSupported(3, packageName, BillingClient.SkuType.SUBS);
                        if (isBillingSupported == 0) {
                            BillingHelper.logVerbose(BillingClientImpl.TAG, "In-app billing API version 3 with subscriptions is supported.");
                            BillingClientImpl.this.mSubscriptionsSupported = true;
                        } else if (BillingClientImpl.this.mIABv6Supported) {
                            isBillingSupported = 0;
                        } else {
                            int isBillingSupported2 = BillingClientImpl.this.mService.isBillingSupported(3, packageName, BillingClient.SkuType.INAPP);
                            if (isBillingSupported2 == 0) {
                                BillingHelper.logVerbose(BillingClientImpl.TAG, "In-app billing API version 3 with in-app items is supported.");
                            } else {
                                BillingHelper.logWarn(BillingClientImpl.TAG, "Even billing API version 3 is not supported on this device.");
                            }
                            isBillingSupported = isBillingSupported2;
                        }
                    }
                }
                if (isBillingSupported == 0) {
                    BillingClientImpl.this.mClientState = 2;
                } else {
                    BillingClientImpl.this.mClientState = 0;
                    BillingClientImpl.this.mService = null;
                }
                this.mListener.onBillingSetupFinished(isBillingSupported);
            } catch (RemoteException e) {
                BillingHelper.logWarn(BillingClientImpl.TAG, "RemoteException while setting up in-app billing" + e);
                BillingClientImpl.this.mClientState = 0;
                BillingClientImpl.this.mService = null;
                this.mListener.onBillingSetupFinished(-1);
            }
        }
    }
}
