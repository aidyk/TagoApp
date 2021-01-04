package com.google.android.gms.internal.measurement;

import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@ShowFirstParty
public final class zzad extends zzi<zzad> {
    private ProductAction zzrt;
    private final Map<String, List<Product>> zzru = new HashMap();
    private final List<Promotion> zzrv = new ArrayList();
    private final List<Product> zzrw = new ArrayList();

    public final ProductAction zzax() {
        return this.zzrt;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        if (!this.zzrw.isEmpty()) {
            hashMap.put("products", this.zzrw);
        }
        if (!this.zzrv.isEmpty()) {
            hashMap.put("promotions", this.zzrv);
        }
        if (!this.zzru.isEmpty()) {
            hashMap.put("impressions", this.zzru);
        }
        hashMap.put("productAction", this.zzrt);
        return zza((Object) hashMap);
    }

    public final List<Product> zzay() {
        return Collections.unmodifiableList(this.zzrw);
    }

    public final Map<String, List<Product>> zzaz() {
        return this.zzru;
    }

    public final List<Promotion> zzba() {
        return Collections.unmodifiableList(this.zzrv);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzad zzad) {
        zzad zzad2 = zzad;
        zzad2.zzrw.addAll(this.zzrw);
        zzad2.zzrv.addAll(this.zzrv);
        for (Map.Entry<String, List<Product>> entry : this.zzru.entrySet()) {
            String key = entry.getKey();
            for (Product product : entry.getValue()) {
                if (product != null) {
                    String str = key == null ? "" : key;
                    if (!zzad2.zzru.containsKey(str)) {
                        zzad2.zzru.put(str, new ArrayList());
                    }
                    zzad2.zzru.get(str).add(product);
                }
            }
        }
        if (this.zzrt != null) {
            zzad2.zzrt = this.zzrt;
        }
    }
}
