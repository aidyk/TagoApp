package com.google.android.gms.tagmanager;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* access modifiers changed from: package-private */
public final class zzb implements zzd {
    private final /* synthetic */ zza zzazq;

    zzb(zza zza) {
        this.zzazq = zza;
    }

    @Override // com.google.android.gms.tagmanager.zzd
    public final AdvertisingIdClient.Info zznj() {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(this.zzazq.zzri);
        } catch (IllegalStateException e) {
            zzdi.zzb("IllegalStateException getting Advertising Id Info", e);
        } catch (GooglePlayServicesRepairableException e2) {
            zzdi.zzb("GooglePlayServicesRepairableException getting Advertising Id Info", e2);
        } catch (IOException e3) {
            zzdi.zzb("IOException getting Ad Id Info", e3);
        } catch (GooglePlayServicesNotAvailableException e4) {
            this.zzazq.close();
            zzdi.zzb("GooglePlayServicesNotAvailableException getting Advertising Id Info", e4);
        } catch (Exception e5) {
            zzdi.zzb("Unknown exception. Could not get the Advertising Id Info.", e5);
        }
        return null;
    }
}
