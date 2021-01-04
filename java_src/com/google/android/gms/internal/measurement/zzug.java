package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzug;
import com.google.android.gms.internal.measurement.zzuh;
import java.io.IOException;

public abstract class zzug<MessageType extends zzug<MessageType, BuilderType>, BuilderType extends zzuh<MessageType, BuilderType>> implements zzxe {
    private static boolean zzbun = false;
    protected int zzbum = 0;

    @Override // com.google.android.gms.internal.measurement.zzxe
    public final zzun zzud() {
        try {
            zzuv zzan = zzun.zzan(zzwe());
            zzb(zzan.zzup());
            return zzan.zzuo();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + String.valueOf("ByteString").length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* access modifiers changed from: package-private */
    public int zzue() {
        throw new UnsupportedOperationException();
    }

    /* access modifiers changed from: package-private */
    public void zzah(int i) {
        throw new UnsupportedOperationException();
    }
}
