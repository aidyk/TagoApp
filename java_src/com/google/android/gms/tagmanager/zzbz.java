package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.measurement.zztg;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

final class zzbz extends Thread implements zzby {
    private static zzbz zzbcz;
    private volatile boolean closed = false;
    private final LinkedBlockingQueue<Runnable> zzbcx = new LinkedBlockingQueue<>();
    private volatile boolean zzbcy = false;
    private volatile zzcb zzbda;
    private final Context zzri;

    static zzbz zzv(Context context) {
        if (zzbcz == null) {
            zzbcz = new zzbz(context);
        }
        return zzbcz;
    }

    private zzbz(Context context) {
        super("GAThread");
        if (context != null) {
            this.zzri = context.getApplicationContext();
        } else {
            this.zzri = context;
        }
        start();
    }

    @Override // com.google.android.gms.tagmanager.zzby
    public final void zzdv(String str) {
        zzh(new zzca(this, this, System.currentTimeMillis(), str));
    }

    @Override // com.google.android.gms.tagmanager.zzby
    public final void zzh(Runnable runnable) {
        this.zzbcx.add(runnable);
    }

    public final void run() {
        while (true) {
            boolean z = this.closed;
            try {
                Runnable take = this.zzbcx.take();
                if (!this.zzbcy) {
                    take.run();
                }
            } catch (InterruptedException e) {
                try {
                    zzdi.zzdo(e.toString());
                } catch (Exception e2) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    PrintStream printStream = new PrintStream(byteArrayOutputStream);
                    zztg.zza(e2, printStream);
                    printStream.flush();
                    String valueOf = String.valueOf(new String(byteArrayOutputStream.toByteArray()));
                    zzdi.e(valueOf.length() != 0 ? "Error on Google TagManager Thread: ".concat(valueOf) : new String("Error on Google TagManager Thread: "));
                    zzdi.e("Google TagManager is shutting down.");
                    this.zzbcy = true;
                }
            }
        }
    }
}
