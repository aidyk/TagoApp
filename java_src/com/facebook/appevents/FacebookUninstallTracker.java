package com.facebook.appevents;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.ServerProtocol;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class FacebookUninstallTracker {
    private static final String PLATFORM = "android";
    private static final String SUCCESS = "success";
    private static final String TAG = FacebookUninstallTracker.class.getCanonicalName();
    private static final String UPLOADED_TOKEN_STORE = "com.facebook.appevents.FacebookUninstallTracker.UPLOADED_TOKEN";
    private static final SharedPreferences uploadedTokenSharedPrefs = FacebookSdk.getApplicationContext().getSharedPreferences(UPLOADED_TOKEN_STORE, 0);

    public static void updateDeviceToken(String str) {
        FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
        if (appSettingsWithoutQuery != null) {
            boolean trackUninstallEnabled = appSettingsWithoutQuery.getTrackUninstallEnabled();
            String string = uploadedTokenSharedPrefs.getString("uploaded_token", null);
            boolean z = uploadedTokenSharedPrefs.getBoolean("pre_track_uninstall_enabled", false);
            if (trackUninstallEnabled && (!z || !str.equals(string))) {
                sendToServer(str);
            } else if (!trackUninstallEnabled && z) {
                uploadedTokenSharedPrefs.edit().putBoolean("pre_track_uninstall_enabled", false).apply();
            }
        }
    }

    private static void sendToServer(final String str) {
        FacebookSdk.getExecutor().execute(new Runnable() {
            /* class com.facebook.appevents.FacebookUninstallTracker.AnonymousClass1 */

            public void run() {
                GraphRequest buildPushDeviceTokenRequest = FacebookUninstallTracker.buildPushDeviceTokenRequest(FacebookSdk.getApplicationId(), str);
                if (buildPushDeviceTokenRequest != null) {
                    GraphResponse executeAndWait = buildPushDeviceTokenRequest.executeAndWait();
                    try {
                        JSONObject jSONObject = executeAndWait.getJSONObject();
                        if (jSONObject == null) {
                            return;
                        }
                        if (!jSONObject.has("success") || !jSONObject.getString("success").equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)) {
                            String str = FacebookUninstallTracker.TAG;
                            Log.e(str, "Error sending device token to Facebook: " + executeAndWait.getError());
                            return;
                        }
                        FacebookUninstallTracker.uploadedTokenSharedPrefs.edit().putString("uploaded_token", str).putBoolean("pre_track_uninstall_enabled", true).apply();
                    } catch (JSONException e) {
                        Log.e(FacebookUninstallTracker.TAG, "Error decoding server response.", e);
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    @Nullable
    public static GraphRequest buildPushDeviceTokenRequest(String str, String str2) {
        GraphRequest newPostRequest = GraphRequest.newPostRequest(null, String.format(Locale.US, "%s/app_push_device_token", str), null, null);
        newPostRequest.setSkipClientToken(true);
        AttributionIdentifiers attributionIdentifiers = AttributionIdentifiers.getAttributionIdentifiers(FacebookSdk.getApplicationContext());
        if (attributionIdentifiers == null) {
            return null;
        }
        String androidAdvertiserId = attributionIdentifiers.getAndroidAdvertiserId();
        Bundle parameters = newPostRequest.getParameters();
        if (parameters == null) {
            parameters = new Bundle();
        }
        parameters.putString("device_id", androidAdvertiserId);
        parameters.putString("device_token", str2);
        parameters.putString("platform", "android");
        newPostRequest.setParameters(parameters);
        return newPostRequest;
    }
}
