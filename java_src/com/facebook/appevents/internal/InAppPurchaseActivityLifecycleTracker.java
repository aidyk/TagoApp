package com.facebook.appevents.internal;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.facebook.FacebookSdk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class InAppPurchaseActivityLifecycleTracker {
    private static final String BILLING_ACTIVITY_NAME = "com.android.billingclient.api.ProxyBillingActivity";
    private static final String SERVICE_INTERFACE_NAME = "com.android.vending.billing.IInAppBillingService$Stub";
    private static final String TAG = InAppPurchaseActivityLifecycleTracker.class.getCanonicalName();
    private static Application.ActivityLifecycleCallbacks callbacks;
    private static Boolean hasBiillingActivity = null;
    private static Boolean hasBillingService = null;
    private static Object inAppBillingObj;
    private static Intent intent;
    private static final AtomicBoolean isTracking = new AtomicBoolean(false);
    private static ServiceConnection serviceConnection;

    public static void update() {
        initializeIfNotInitialized();
        if (hasBillingService.booleanValue() && AutomaticAnalyticsLogger.isImplicitPurchaseLoggingEnabled()) {
            startTracking();
        }
    }

    private static void initializeIfNotInitialized() {
        if (hasBillingService == null) {
            try {
                Class.forName(SERVICE_INTERFACE_NAME);
                hasBillingService = true;
                try {
                    Class.forName(BILLING_ACTIVITY_NAME);
                    hasBiillingActivity = true;
                } catch (ClassNotFoundException unused) {
                    hasBiillingActivity = false;
                }
                InAppPurchaseEventManager.clearSkuDetailsCache();
                intent = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
                serviceConnection = new ServiceConnection() {
                    /* class com.facebook.appevents.internal.InAppPurchaseActivityLifecycleTracker.AnonymousClass1 */

                    public void onServiceDisconnected(ComponentName componentName) {
                    }

                    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        Object unused = InAppPurchaseActivityLifecycleTracker.inAppBillingObj = InAppPurchaseEventManager.asInterface(FacebookSdk.getApplicationContext(), iBinder);
                    }
                };
                callbacks = new Application.ActivityLifecycleCallbacks() {
                    /* class com.facebook.appevents.internal.InAppPurchaseActivityLifecycleTracker.AnonymousClass2 */

                    public void onActivityCreated(Activity activity, Bundle bundle) {
                    }

                    public void onActivityDestroyed(Activity activity) {
                    }

                    public void onActivityPaused(Activity activity) {
                    }

                    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }

                    public void onActivityStarted(Activity activity) {
                    }

                    public void onActivityResumed(Activity activity) {
                        FacebookSdk.getExecutor().execute(new Runnable() {
                            /* class com.facebook.appevents.internal.InAppPurchaseActivityLifecycleTracker.AnonymousClass2.AnonymousClass1 */

                            public void run() {
                                Context applicationContext = FacebookSdk.getApplicationContext();
                                InAppPurchaseActivityLifecycleTracker.logPurchaseInapp(applicationContext, InAppPurchaseEventManager.getPurchasesInapp(applicationContext, InAppPurchaseActivityLifecycleTracker.inAppBillingObj));
                                Map<String, SubscriptionType> purchasesSubs = InAppPurchaseEventManager.getPurchasesSubs(applicationContext, InAppPurchaseActivityLifecycleTracker.inAppBillingObj);
                                Iterator<String> it2 = InAppPurchaseEventManager.getPurchasesSubsExpire(applicationContext, InAppPurchaseActivityLifecycleTracker.inAppBillingObj).iterator();
                                while (it2.hasNext()) {
                                    purchasesSubs.put(it2.next(), SubscriptionType.EXPIRE);
                                }
                                InAppPurchaseActivityLifecycleTracker.logPurchaseSubs(applicationContext, purchasesSubs);
                            }
                        });
                    }

                    public void onActivityStopped(Activity activity) {
                        if (InAppPurchaseActivityLifecycleTracker.hasBiillingActivity.booleanValue() && activity.getLocalClassName().equals(InAppPurchaseActivityLifecycleTracker.BILLING_ACTIVITY_NAME)) {
                            FacebookSdk.getExecutor().execute(new Runnable() {
                                /* class com.facebook.appevents.internal.InAppPurchaseActivityLifecycleTracker.AnonymousClass2.AnonymousClass2 */

                                public void run() {
                                    Context applicationContext = FacebookSdk.getApplicationContext();
                                    ArrayList<String> purchasesInapp = InAppPurchaseEventManager.getPurchasesInapp(applicationContext, InAppPurchaseActivityLifecycleTracker.inAppBillingObj);
                                    if (purchasesInapp.isEmpty()) {
                                        purchasesInapp = InAppPurchaseEventManager.getPurchaseHistoryInapp(applicationContext, InAppPurchaseActivityLifecycleTracker.inAppBillingObj);
                                    }
                                    InAppPurchaseActivityLifecycleTracker.logPurchaseInapp(applicationContext, purchasesInapp);
                                }
                            });
                        }
                    }
                };
            } catch (ClassNotFoundException unused2) {
                hasBillingService = false;
            }
        }
    }

    private static void startTracking() {
        if (isTracking.compareAndSet(false, true)) {
            Context applicationContext = FacebookSdk.getApplicationContext();
            if (applicationContext instanceof Application) {
                ((Application) applicationContext).registerActivityLifecycleCallbacks(callbacks);
                applicationContext.bindService(intent, serviceConnection, 1);
            }
        }
    }

    /* access modifiers changed from: private */
    public static void logPurchaseInapp(Context context, ArrayList<String> arrayList) {
        if (!arrayList.isEmpty()) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                try {
                    String string = new JSONObject(next).getString("productId");
                    hashMap.put(string, next);
                    arrayList2.add(string);
                } catch (JSONException e) {
                    Log.e(TAG, "Error parsing in-app purchase data.", e);
                }
            }
            for (Map.Entry<String, String> entry : InAppPurchaseEventManager.getSkuDetails(context, arrayList2, inAppBillingObj, false).entrySet()) {
                AutomaticAnalyticsLogger.logPurchaseInapp((String) hashMap.get(entry.getKey()), entry.getValue());
            }
        }
    }

    /* access modifiers changed from: private */
    public static void logPurchaseSubs(Context context, Map<String, SubscriptionType> map) {
        if (!map.isEmpty()) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (String str : map.keySet()) {
                try {
                    String string = new JSONObject(str).getString("productId");
                    arrayList.add(string);
                    hashMap.put(string, str);
                } catch (JSONException e) {
                    Log.e(TAG, "Error parsing in-app purchase data.", e);
                }
            }
            Map<String, String> skuDetails = InAppPurchaseEventManager.getSkuDetails(context, arrayList, inAppBillingObj, true);
            for (String str2 : skuDetails.keySet()) {
                String str3 = (String) hashMap.get(str2);
                AutomaticAnalyticsLogger.logPurchaseSubs(map.get(str3), str3, skuDetails.get(str2));
            }
        }
    }
}
