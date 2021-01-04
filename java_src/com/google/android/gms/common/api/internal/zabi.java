package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.BackgroundDetector;

/* access modifiers changed from: package-private */
public final class zabi implements BackgroundDetector.BackgroundStateChangeListener {
    private final /* synthetic */ GoogleApiManager zail;

    zabi(GoogleApiManager googleApiManager) {
        this.zail = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z) {
        this.zail.handler.sendMessage(this.zail.handler.obtainMessage(1, Boolean.valueOf(z)));
    }
}
