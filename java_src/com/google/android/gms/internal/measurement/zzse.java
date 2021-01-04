package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class zzse {
    private static final Integer zzbqw = 0;
    private static final Integer zzbqx = 1;
    private final ExecutorService zzaea;
    private final Context zzri;

    public zzse(Context context) {
        this(context, Executors.newSingleThreadExecutor());
    }

    @VisibleForTesting
    private zzse(Context context, ExecutorService executorService) {
        this.zzri = context;
        this.zzaea = executorService;
    }
}
