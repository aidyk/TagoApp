package com.facebook.appevents.codeless;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.UnityReflection;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ViewIndexer {
    private static final String APP_VERSION_PARAM = "app_version";
    private static final String PLATFORM_PARAM = "platform";
    private static final String REQUEST_TYPE = "request_type";
    private static final String SUCCESS = "success";
    private static final String TAG = ViewIndexer.class.getCanonicalName();
    private static final String TREE_PARAM = "tree";
    private static ViewIndexer instance;
    private WeakReference<Activity> activityReference;
    private Timer indexingTimer;
    private String previousDigest = null;
    private final Handler uiThreadHandler = new Handler(Looper.getMainLooper());

    public ViewIndexer(Activity activity) {
        this.activityReference = new WeakReference<>(activity);
        instance = this;
    }

    public void schedule() {
        final Activity activity = this.activityReference.get();
        if (activity != null) {
            final String simpleName = activity.getClass().getSimpleName();
            FacebookSdk.getApplicationId();
            final AnonymousClass1 r2 = new TimerTask() {
                /* class com.facebook.appevents.codeless.ViewIndexer.AnonymousClass1 */

                public void run() {
                    String str;
                    try {
                        View rootView = activity.getWindow().getDecorView().getRootView();
                        if (ActivityLifecycleTracker.getIsAppIndexingEnabled()) {
                            if (InternalSettings.isUnityApp()) {
                                UnityReflection.captureViewHierarchy();
                                return;
                            }
                            FutureTask futureTask = new FutureTask(new ScreenshotTaker(rootView));
                            ViewIndexer.this.uiThreadHandler.post(futureTask);
                            try {
                                str = (String) futureTask.get(1, TimeUnit.SECONDS);
                            } catch (Exception e) {
                                Log.e(ViewIndexer.TAG, "Failed to take screenshot.", e);
                                str = "";
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("screenname", simpleName);
                                jSONObject.put("screenshot", str);
                                JSONArray jSONArray = new JSONArray();
                                jSONArray.put(ViewHierarchy.getDictionaryOfView(rootView));
                                jSONObject.put(Promotion.ACTION_VIEW, jSONArray);
                            } catch (JSONException unused) {
                                Log.e(ViewIndexer.TAG, "Failed to create JSONObject");
                            }
                            ViewIndexer.this.sendToServer(jSONObject.toString(), simpleName);
                        }
                    } catch (Exception e2) {
                        Log.e(ViewIndexer.TAG, "UI Component tree indexing failure!", e2);
                    }
                }
            };
            FacebookSdk.getExecutor().execute(new Runnable() {
                /* class com.facebook.appevents.codeless.ViewIndexer.AnonymousClass2 */

                public void run() {
                    try {
                        if (ViewIndexer.this.indexingTimer != null) {
                            ViewIndexer.this.indexingTimer.cancel();
                        }
                        ViewIndexer.this.previousDigest = null;
                        ViewIndexer.this.indexingTimer = new Timer();
                        ViewIndexer.this.indexingTimer.scheduleAtFixedRate(r2, 0, 1000);
                    } catch (Exception e) {
                        Log.e(ViewIndexer.TAG, "Error scheduling indexing job", e);
                    }
                }
            });
        }
    }

    public void unschedule() {
        if (this.activityReference.get() != null && this.indexingTimer != null) {
            try {
                this.indexingTimer.cancel();
                this.indexingTimer = null;
            } catch (Exception e) {
                Log.e(TAG, "Error unscheduling indexing job", e);
            }
        }
    }

    public static void sendToServerUnityInstance(String str) {
        if (instance != null) {
            instance.sendToServerUnity(str);
        }
    }

    @Deprecated
    public void sendToServerUnity(String str) {
        Activity activity = this.activityReference.get();
        String str2 = "";
        if (activity != null) {
            str2 = activity.getClass().getSimpleName();
        }
        instance.sendToServer(str, str2);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void sendToServer(final String str, String str2) {
        FacebookSdk.getExecutor().execute(new Runnable() {
            /* class com.facebook.appevents.codeless.ViewIndexer.AnonymousClass3 */

            public void run() {
                GraphRequest buildAppIndexingRequest;
                String applicationId = FacebookSdk.getApplicationId();
                String md5hash = Utility.md5hash(str);
                AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                if ((md5hash == null || !md5hash.equals(ViewIndexer.this.previousDigest)) && (buildAppIndexingRequest = ViewIndexer.buildAppIndexingRequest(str, currentAccessToken, applicationId, Constants.APP_INDEXING)) != null) {
                    GraphResponse executeAndWait = buildAppIndexingRequest.executeAndWait();
                    try {
                        JSONObject jSONObject = executeAndWait.getJSONObject();
                        if (jSONObject != null) {
                            if (jSONObject.has("success") && jSONObject.getString("success") == ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) {
                                Logger.log(LoggingBehavior.APP_EVENTS, ViewIndexer.TAG, "Successfully send UI component tree to server");
                                ViewIndexer.this.previousDigest = md5hash;
                            }
                            if (jSONObject.has(Constants.APP_INDEXING_ENABLED)) {
                                ActivityLifecycleTracker.updateAppIndexing(Boolean.valueOf(jSONObject.getBoolean(Constants.APP_INDEXING_ENABLED)));
                                return;
                            }
                            return;
                        }
                        String str = ViewIndexer.TAG;
                        Log.e(str, "Error sending UI component tree to Facebook: " + executeAndWait.getError());
                    } catch (JSONException e) {
                        Log.e(ViewIndexer.TAG, "Error decoding server response.", e);
                    }
                }
            }
        });
    }

    @Nullable
    public static GraphRequest buildAppIndexingRequest(String str, AccessToken accessToken, String str2, String str3) {
        if (str == null) {
            return null;
        }
        GraphRequest newPostRequest = GraphRequest.newPostRequest(accessToken, String.format(Locale.US, "%s/app_indexing", str2), null, null);
        Bundle parameters = newPostRequest.getParameters();
        if (parameters == null) {
            parameters = new Bundle();
        }
        parameters.putString(TREE_PARAM, str);
        parameters.putString(APP_VERSION_PARAM, AppEventUtility.getAppVersion());
        parameters.putString(PLATFORM_PARAM, "android");
        parameters.putString(REQUEST_TYPE, str3);
        if (str3.equals(Constants.APP_INDEXING)) {
            parameters.putString(Constants.DEVICE_SESSION_ID, ActivityLifecycleTracker.getCurrentDeviceSessionID());
        }
        newPostRequest.setParameters(parameters);
        newPostRequest.setCallback(new GraphRequest.Callback() {
            /* class com.facebook.appevents.codeless.ViewIndexer.AnonymousClass4 */

            @Override // com.facebook.GraphRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                Logger.log(LoggingBehavior.APP_EVENTS, ViewIndexer.TAG, "App index sent to FB!");
            }
        });
        return newPostRequest;
    }

    private static class ScreenshotTaker implements Callable<String> {
        private WeakReference<View> rootView;

        public ScreenshotTaker(View view) {
            this.rootView = new WeakReference<>(view);
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            View view = this.rootView.get();
            if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
                return "";
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            view.draw(new Canvas(createBitmap));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            createBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        }
    }
}
