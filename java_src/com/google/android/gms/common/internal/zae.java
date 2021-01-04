package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;

/* access modifiers changed from: package-private */
public final class zae extends DialogRedirect {
    private final /* synthetic */ int val$requestCode;
    private final /* synthetic */ Intent zaog;
    private final /* synthetic */ LifecycleFragment zaoh;

    zae(Intent intent, LifecycleFragment lifecycleFragment, int i) {
        this.zaog = intent;
        this.zaoh = lifecycleFragment;
        this.val$requestCode = i;
    }

    @Override // com.google.android.gms.common.internal.DialogRedirect
    public final void redirect() {
        if (this.zaog != null) {
            this.zaoh.startActivityForResult(this.zaog, this.val$requestCode);
        }
    }
}
