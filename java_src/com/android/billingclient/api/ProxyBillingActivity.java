package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import com.android.billingclient.util.BillingHelper;

public class ProxyBillingActivity extends Activity {
    private static final int REQUEST_CODE = 100;
    static final String RESPONSE_BUNDLE = "response_bundle_key";
    static final String RESPONSE_CODE = "response_code_key";
    static final String RESPONSE_INTENT_ACTION = "proxy_activity_response_intent_action";
    private static final String TAG = "ProxyBillingActivity";

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BillingHelper.logVerbose(TAG, "Launching Play Store billing flow");
        try {
            startIntentSenderForResult(((PendingIntent) getIntent().getParcelableExtra(BillingHelper.RESPONSE_BUY_INTENT)).getIntentSender(), 100, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            BillingHelper.logWarn(TAG, "Got exception while trying to start a purchase flow: " + e);
            broadcastResult(6, null);
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        Bundle bundle;
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            int responseCodeFromIntent = BillingHelper.getResponseCodeFromIntent(intent, TAG);
            if (!(i2 == -1 && responseCodeFromIntent == 0)) {
                BillingHelper.logWarn(TAG, "Got purchases updated result with resultCode " + i2 + " and billing's responseCode: " + responseCodeFromIntent);
            }
            if (intent == null) {
                bundle = null;
            } else {
                bundle = intent.getExtras();
            }
            broadcastResult(responseCodeFromIntent, bundle);
        } else {
            BillingHelper.logWarn(TAG, "Got onActivityResult with wrong requestCode: " + i + "; skipping...");
        }
        finish();
    }

    private void broadcastResult(int i, Bundle bundle) {
        Intent intent = new Intent(RESPONSE_INTENT_ACTION);
        intent.putExtra(RESPONSE_CODE, i);
        intent.putExtra(RESPONSE_BUNDLE, bundle);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }
}
