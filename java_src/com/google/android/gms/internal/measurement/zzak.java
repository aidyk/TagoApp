package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

@VisibleForTesting
public final class zzak extends zzau {
    private static boolean zzvk;
    private AdvertisingIdClient.Info zzvl;
    private final zzdc zzvm;
    private String zzvn;
    private boolean zzvo = false;
    private final Object zzvp = new Object();

    zzak(zzaw zzaw) {
        super(zzaw);
        this.zzvm = new zzdc(zzaw.zzbx());
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
    }

    public final boolean zzbg() {
        zzcl();
        AdvertisingIdClient.Info zzbo = zzbo();
        if (zzbo == null || zzbo.isLimitAdTrackingEnabled()) {
            return false;
        }
        return true;
    }

    public final String zzbn() {
        zzcl();
        AdvertisingIdClient.Info zzbo = zzbo();
        String id = zzbo != null ? zzbo.getId() : null;
        if (TextUtils.isEmpty(id)) {
            return null;
        }
        return id;
    }

    private final synchronized AdvertisingIdClient.Info zzbo() {
        if (this.zzvm.zzj(1000)) {
            this.zzvm.start();
            AdvertisingIdClient.Info zzbp = zzbp();
            if (zza(this.zzvl, zzbp)) {
                this.zzvl = zzbp;
            } else {
                zzu("Failed to reset client id on adid change. Not using adid");
                this.zzvl = new AdvertisingIdClient.Info("", false);
            }
        }
        return this.zzvl;
    }

    private final boolean zza(AdvertisingIdClient.Info info, AdvertisingIdClient.Info info2) {
        String str = null;
        String id = info2 == null ? null : info2.getId();
        if (TextUtils.isEmpty(id)) {
            return true;
        }
        String zzdr = zzcg().zzdr();
        synchronized (this.zzvp) {
            if (!this.zzvo) {
                this.zzvn = zzbq();
                this.zzvo = true;
            } else if (TextUtils.isEmpty(this.zzvn)) {
                if (info != null) {
                    str = info.getId();
                }
                if (str == null) {
                    String valueOf = String.valueOf(id);
                    String valueOf2 = String.valueOf(zzdr);
                    return zzp(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                }
                String valueOf3 = String.valueOf(str);
                String valueOf4 = String.valueOf(zzdr);
                this.zzvn = zzo(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            }
            String valueOf5 = String.valueOf(id);
            String valueOf6 = String.valueOf(zzdr);
            String zzo = zzo(valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5));
            if (TextUtils.isEmpty(zzo)) {
                return false;
            }
            if (zzo.equals(this.zzvn)) {
                return true;
            }
            if (!TextUtils.isEmpty(this.zzvn)) {
                zzq("Resetting the client id because Advertising Id changed.");
                zzdr = zzcg().zzds();
                zza("New client Id", zzdr);
            }
            String valueOf7 = String.valueOf(id);
            String valueOf8 = String.valueOf(zzdr);
            return zzp(valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7));
        }
    }

    private final AdvertisingIdClient.Info zzbp() {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(getContext());
        } catch (IllegalStateException unused) {
            zzt("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
        } catch (Exception e) {
            if (!zzvk) {
                zzvk = true;
                zzd("Error getting advertiser id", e);
            }
        }
        return null;
    }

    private static String zzo(String str) {
        MessageDigest zzah = zzdg.zzah("MD5");
        if (zzah == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zzah.digest(str.getBytes())));
    }

    private final boolean zzp(String str) {
        try {
            String zzo = zzo(str);
            zzq("Storing hashed adid.");
            FileOutputStream openFileOutput = getContext().openFileOutput("gaClientIdData", 0);
            openFileOutput.write(zzo.getBytes());
            openFileOutput.close();
            this.zzvn = zzo;
            return true;
        } catch (IOException e) {
            zze("Error creating hash file", e);
            return false;
        }
    }

    private final String zzbq() {
        IOException e;
        String str = null;
        try {
            FileInputStream openFileInput = getContext().openFileInput("gaClientIdData");
            byte[] bArr = new byte[128];
            int read = openFileInput.read(bArr, 0, 128);
            if (openFileInput.available() > 0) {
                zzt("Hash file seems corrupted, deleting it.");
                openFileInput.close();
                getContext().deleteFile("gaClientIdData");
                return null;
            } else if (read <= 0) {
                zzq("Hash file is empty.");
                openFileInput.close();
                return null;
            } else {
                String str2 = new String(bArr, 0, read);
                try {
                    openFileInput.close();
                } catch (FileNotFoundException unused) {
                } catch (IOException e2) {
                    e = e2;
                    str = str2;
                    zzd("Error reading Hash file, deleting it", e);
                    getContext().deleteFile("gaClientIdData");
                    return str;
                }
                return str2;
            }
        } catch (FileNotFoundException unused2) {
            return null;
        } catch (IOException e3) {
            e = e3;
            zzd("Error reading Hash file, deleting it", e);
            getContext().deleteFile("gaClientIdData");
            return str;
        }
    }
}
