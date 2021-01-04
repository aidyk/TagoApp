package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzrv;
import com.google.android.gms.internal.measurement.zzrz;
import com.google.android.gms.internal.measurement.zzsd;
import com.google.android.gms.tagmanager.zzeh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@VisibleForTesting
public class Container {
    private final String zzbaa;
    private final DataLayer zzbab;
    private zzfb zzbac;
    private Map<String, FunctionCallMacroCallback> zzbad = new HashMap();
    private Map<String, FunctionCallTagCallback> zzbae = new HashMap();
    private volatile long zzbaf;
    private volatile String zzbag = "";
    private final Context zzri;

    public interface FunctionCallMacroCallback {
        Object getValue(String str, Map<String, Object> map);
    }

    public interface FunctionCallTagCallback {
        void execute(String str, Map<String, Object> map);
    }

    /* access modifiers changed from: package-private */
    public class zza implements zzan {
        private zza() {
        }

        @Override // com.google.android.gms.tagmanager.zzan
        public final Object zza(String str, Map<String, Object> map) {
            FunctionCallMacroCallback zzde = Container.this.zzde(str);
            if (zzde == null) {
                return null;
            }
            return zzde.getValue(str, map);
        }
    }

    /* access modifiers changed from: package-private */
    public class zzb implements zzan {
        private zzb() {
        }

        @Override // com.google.android.gms.tagmanager.zzan
        public final Object zza(String str, Map<String, Object> map) {
            FunctionCallTagCallback zzdf = Container.this.zzdf(str);
            if (zzdf != null) {
                zzdf.execute(str, map);
            }
            return zzgj.zzqp();
        }
    }

    Container(Context context, DataLayer dataLayer, String str, long j, zzrz zzrz) {
        this.zzri = context;
        this.zzbab = dataLayer;
        this.zzbaa = str;
        this.zzbaf = 0;
        zza(zzrz);
    }

    Container(Context context, DataLayer dataLayer, String str, long j, zzo zzo) {
        this.zzri = context;
        this.zzbab = dataLayer;
        this.zzbaa = str;
        this.zzbaf = j;
        zzl zzl = zzo.zzqg;
        if (zzl != null) {
            try {
                zza(zzrv.zza(zzl));
            } catch (zzsd e) {
                String valueOf = String.valueOf(zzl);
                String zzsd = e.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(zzsd).length());
                sb.append("Not loading resource: ");
                sb.append(valueOf);
                sb.append(" because it is invalid: ");
                sb.append(zzsd);
                zzdi.e(sb.toString());
            }
            if (zzo.zzqf != null) {
                zzn[] zznArr = zzo.zzqf;
                ArrayList arrayList = new ArrayList();
                for (zzn zzn : zznArr) {
                    arrayList.add(zzn);
                }
                zznp().zzf(arrayList);
                return;
            }
            return;
        }
        throw new NullPointerException();
    }

    public String getContainerId() {
        return this.zzbaa;
    }

    public boolean getBoolean(String str) {
        zzfb zznp = zznp();
        if (zznp == null) {
            zzdi.e("getBoolean called for closed container.");
            return zzgj.zzqn().booleanValue();
        }
        try {
            return zzgj.zzg(zznp.zzeb(str).getObject()).booleanValue();
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 66);
            sb.append("Calling getBoolean() threw an exception: ");
            sb.append(message);
            sb.append(" Returning default value.");
            zzdi.e(sb.toString());
            return zzgj.zzqn().booleanValue();
        }
    }

    public double getDouble(String str) {
        zzfb zznp = zznp();
        if (zznp == null) {
            zzdi.e("getDouble called for closed container.");
            return zzgj.zzqm().doubleValue();
        }
        try {
            return zzgj.zzf(zznp.zzeb(str).getObject()).doubleValue();
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 65);
            sb.append("Calling getDouble() threw an exception: ");
            sb.append(message);
            sb.append(" Returning default value.");
            zzdi.e(sb.toString());
            return zzgj.zzqm().doubleValue();
        }
    }

    public long getLong(String str) {
        zzfb zznp = zznp();
        if (zznp == null) {
            zzdi.e("getLong called for closed container.");
            return zzgj.zzql().longValue();
        }
        try {
            return zzgj.zze(zznp.zzeb(str).getObject()).longValue();
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 63);
            sb.append("Calling getLong() threw an exception: ");
            sb.append(message);
            sb.append(" Returning default value.");
            zzdi.e(sb.toString());
            return zzgj.zzql().longValue();
        }
    }

    public String getString(String str) {
        zzfb zznp = zznp();
        if (zznp == null) {
            zzdi.e("getString called for closed container.");
            return zzgj.zzqp();
        }
        try {
            return zzgj.zzc(zznp.zzeb(str).getObject());
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 65);
            sb.append("Calling getString() threw an exception: ");
            sb.append(message);
            sb.append(" Returning default value.");
            zzdi.e(sb.toString());
            return zzgj.zzqp();
        }
    }

    public long getLastRefreshTime() {
        return this.zzbaf;
    }

    public boolean isDefault() {
        return getLastRefreshTime() == 0;
    }

    public void registerFunctionCallMacroCallback(String str, FunctionCallMacroCallback functionCallMacroCallback) {
        if (functionCallMacroCallback != null) {
            synchronized (this.zzbad) {
                this.zzbad.put(str, functionCallMacroCallback);
            }
            return;
        }
        throw new NullPointerException("Macro handler must be non-null");
    }

    public void unregisterFunctionCallMacroCallback(String str) {
        synchronized (this.zzbad) {
            this.zzbad.remove(str);
        }
    }

    /* access modifiers changed from: package-private */
    @VisibleForTesting
    public final FunctionCallMacroCallback zzde(String str) {
        FunctionCallMacroCallback functionCallMacroCallback;
        synchronized (this.zzbad) {
            functionCallMacroCallback = this.zzbad.get(str);
        }
        return functionCallMacroCallback;
    }

    public void registerFunctionCallTagCallback(String str, FunctionCallTagCallback functionCallTagCallback) {
        if (functionCallTagCallback != null) {
            synchronized (this.zzbae) {
                this.zzbae.put(str, functionCallTagCallback);
            }
            return;
        }
        throw new NullPointerException("Tag callback must be non-null");
    }

    public void unregisterFunctionCallTagCallback(String str) {
        synchronized (this.zzbae) {
            this.zzbae.remove(str);
        }
    }

    @VisibleForTesting
    public final FunctionCallTagCallback zzdf(String str) {
        FunctionCallTagCallback functionCallTagCallback;
        synchronized (this.zzbae) {
            functionCallTagCallback = this.zzbae.get(str);
        }
        return functionCallTagCallback;
    }

    @VisibleForTesting
    public final void zzdg(String str) {
        zznp().zzdg(str);
    }

    @VisibleForTesting
    public final String zzno() {
        return this.zzbag;
    }

    private final void zza(zzrz zzrz) {
        this.zzbag = zzrz.getVersion();
        String str = this.zzbag;
        zzeh.zzpm().zzpn().equals(zzeh.zza.CONTAINER_DEBUG);
        zza(new zzfb(this.zzri, zzrz, this.zzbab, new zza(), new zzb(), new zzdq()));
        if (getBoolean("_gtm.loadEventEnabled")) {
            this.zzbab.pushEvent("gtm.load", DataLayer.mapOf("gtm.id", this.zzbaa));
        }
    }

    private final synchronized void zza(zzfb zzfb) {
        this.zzbac = zzfb;
    }

    private final synchronized zzfb zznp() {
        return this.zzbac;
    }

    /* access modifiers changed from: package-private */
    public final void release() {
        this.zzbac = null;
    }
}
