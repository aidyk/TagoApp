package com.google.android.gms.internal.measurement;

public enum zzzb {
    DOUBLE(zzzg.DOUBLE, 1),
    FLOAT(zzzg.FLOAT, 5),
    INT64(zzzg.LONG, 0),
    UINT64(zzzg.LONG, 0),
    INT32(zzzg.INT, 0),
    FIXED64(zzzg.LONG, 1),
    FIXED32(zzzg.INT, 5),
    BOOL(zzzg.BOOLEAN, 0),
    STRING(zzzg.STRING, 2) {
    },
    GROUP(zzzg.MESSAGE, 3) {
    },
    MESSAGE(zzzg.MESSAGE, 2) {
    },
    BYTES(zzzg.BYTE_STRING, 2) {
    },
    UINT32(zzzg.INT, 0),
    ENUM(zzzg.ENUM, 0),
    SFIXED32(zzzg.INT, 5),
    SFIXED64(zzzg.LONG, 1),
    SINT32(zzzg.INT, 0),
    SINT64(zzzg.LONG, 0);
    
    private final zzzg zzcfd;
    private final int zzcfe;

    private zzzb(zzzg zzzg, int i) {
        this.zzcfd = zzzg;
        this.zzcfe = i;
    }

    public final zzzg zzzc() {
        return this.zzcfd;
    }

    public final int zzzd() {
        return this.zzcfe;
    }

    /* synthetic */ zzzb(zzzg zzzg, int i, zzza zzza) {
        this(zzzg, i);
    }
}
