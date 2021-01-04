package com.google.android.gms.common.internal;

import android.content.Intent;
import android.support.v4.app.Fragment;

/* access modifiers changed from: package-private */
public final class zad extends DialogRedirect {
    private final /* synthetic */ Fragment val$fragment;
    private final /* synthetic */ int val$requestCode;
    private final /* synthetic */ Intent zaog;

    zad(Intent intent, Fragment fragment, int i) {
        this.zaog = intent;
        this.val$fragment = fragment;
        this.val$requestCode = i;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    public final void redirect() {
        if (this.zaog != null) {
            this.val$fragment.startActivityForResult(this.zaog, this.val$requestCode);
        }
    }
}
