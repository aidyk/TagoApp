package com.google.android.gms.tasks;

import android.support.annotation.NonNull;

/* access modifiers changed from: package-private */
public interface zzq<TResult> {
    void cancel();

    void onComplete(@NonNull Task<TResult> task);
}
