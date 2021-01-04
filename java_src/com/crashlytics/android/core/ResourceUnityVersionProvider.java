package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;

/* access modifiers changed from: package-private */
public class ResourceUnityVersionProvider implements UnityVersionProvider {
    private final Context context;
    private final UnityVersionProvider fallback;
    private boolean hasRead = false;
    private String unityVersion;

    public ResourceUnityVersionProvider(Context context2, UnityVersionProvider unityVersionProvider) {
        this.context = context2;
        this.fallback = unityVersionProvider;
    }

    @Override // com.crashlytics.android.core.UnityVersionProvider
    public String getUnityVersion() {
        if (!this.hasRead) {
            this.unityVersion = CommonUtils.resolveUnityEditorVersion(this.context);
            this.hasRead = true;
        }
        if (this.unityVersion != null) {
            return this.unityVersion;
        }
        if (this.fallback != null) {
            return this.fallback.getUnityVersion();
        }
        return null;
    }
}
