package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;

public final class zzru {
    private String zzbbh;
    @VisibleForTesting
    private Map<String, Object> zzbof;
    private final Map<String, Object> zzbog;
    private final zzse zzbqp;
    private final Context zzri;
    private final Clock zzrz;

    public zzru(Context context) {
        this(context, new HashMap(), new zzse(context), DefaultClock.getInstance());
    }

    @VisibleForTesting
    private zzru(Context context, Map<String, Object> map, zzse zzse, Clock clock) {
        this.zzbbh = null;
        this.zzbof = new HashMap();
        this.zzri = context;
        this.zzrz = clock;
        this.zzbqp = zzse;
        this.zzbog = map;
    }

    public final void zzfj(String str) {
        this.zzbbh = str;
    }
}
