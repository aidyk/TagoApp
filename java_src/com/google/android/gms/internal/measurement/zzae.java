package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.HashMap;

@ShowFirstParty
public final class zzae extends zzi<zzae> {
    private String category;
    private String label;
    private long value;
    private String zzul;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("category", this.category);
        hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, this.zzul);
        hashMap.put("label", this.label);
        hashMap.put("value", Long.valueOf(this.value));
        return zza((Object) hashMap);
    }

    public final String zzbb() {
        return this.category;
    }

    public final String getAction() {
        return this.zzul;
    }

    public final String getLabel() {
        return this.label;
    }

    public final long getValue() {
        return this.value;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzae zzae) {
        zzae zzae2 = zzae;
        if (!TextUtils.isEmpty(this.category)) {
            zzae2.category = this.category;
        }
        if (!TextUtils.isEmpty(this.zzul)) {
            zzae2.zzul = this.zzul;
        }
        if (!TextUtils.isEmpty(this.label)) {
            zzae2.label = this.label;
        }
        if (this.value != 0) {
            zzae2.value = this.value;
        }
    }
}
