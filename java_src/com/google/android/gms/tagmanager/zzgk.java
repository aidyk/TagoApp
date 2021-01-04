package com.google.android.gms.tagmanager;

import android.content.Context;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@ShowFirstParty
@VisibleForTesting
public final class zzgk extends zzgh {
    private static final String ID = zza.UNIVERSAL_ANALYTICS.toString();
    private static final String zzbhs = zzb.ACCOUNT.toString();
    private static final String zzbht = zzb.ANALYTICS_PASS_THROUGH.toString();
    private static final String zzbhu = zzb.ENABLE_ECOMMERCE.toString();
    private static final String zzbhv = zzb.ECOMMERCE_USE_DATA_LAYER.toString();
    private static final String zzbhw = zzb.ECOMMERCE_MACRO_DATA.toString();
    private static final String zzbhx = zzb.ANALYTICS_FIELDS.toString();
    private static final String zzbhy = zzb.TRACK_TRANSACTION.toString();
    private static final String zzbhz = zzb.TRANSACTION_DATALAYER_MAP.toString();
    private static final String zzbia = zzb.TRANSACTION_ITEM_DATALAYER_MAP.toString();
    private static final List<String> zzbib = Arrays.asList(ProductAction.ACTION_DETAIL, ProductAction.ACTION_CHECKOUT, ProductAction.ACTION_CHECKOUT_OPTION, "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND);
    private static final Pattern zzbic = Pattern.compile("dimension(\\d+)");
    private static final Pattern zzbid = Pattern.compile("metric(\\d+)");
    private static Map<String, String> zzbie;
    private static Map<String, String> zzbif;
    private final DataLayer zzbab;
    private final Set<String> zzbig;
    private final zzgf zzbih;

    public zzgk(Context context, DataLayer dataLayer) {
        this(context, dataLayer, new zzgf(context));
    }

    @VisibleForTesting
    private zzgk(Context context, DataLayer dataLayer, zzgf zzgf) {
        super(ID, new String[0]);
        this.zzbab = dataLayer;
        this.zzbih = zzgf;
        this.zzbig = new HashSet();
        this.zzbig.add("");
        this.zzbig.add(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.zzbig.add("false");
    }

    private static boolean zzc(Map<String, zzp> map, String str) {
        zzp zzp = map.get(str);
        if (zzp == null) {
            return false;
        }
        return zzgj.zzg(zzp).booleanValue();
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0189  */
    @Override // com.google.android.gms.tagmanager.zzgh
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzg(java.util.Map<java.lang.String, com.google.android.gms.internal.measurement.zzp> r11) {
        /*
        // Method dump skipped, instructions count: 1152
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzgk.zzg(java.util.Map):void");
    }

    private final String zzej(String str) {
        Object obj = this.zzbab.get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    private static void zzd(Map<String, String> map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private static Product zzi(Map<String, Object> map) {
        Product product = new Product();
        Object obj = map.get("id");
        if (obj != null) {
            product.setId(String.valueOf(obj));
        }
        Object obj2 = map.get("name");
        if (obj2 != null) {
            product.setName(String.valueOf(obj2));
        }
        Object obj3 = map.get("brand");
        if (obj3 != null) {
            product.setBrand(String.valueOf(obj3));
        }
        Object obj4 = map.get("category");
        if (obj4 != null) {
            product.setCategory(String.valueOf(obj4));
        }
        Object obj5 = map.get("variant");
        if (obj5 != null) {
            product.setVariant(String.valueOf(obj5));
        }
        Object obj6 = map.get("coupon");
        if (obj6 != null) {
            product.setCouponCode(String.valueOf(obj6));
        }
        Object obj7 = map.get("position");
        if (obj7 != null) {
            product.setPosition(zzo(obj7).intValue());
        }
        Object obj8 = map.get("price");
        if (obj8 != null) {
            product.setPrice(zzn(obj8).doubleValue());
        }
        Object obj9 = map.get("quantity");
        if (obj9 != null) {
            product.setQuantity(zzo(obj9).intValue());
        }
        for (String str : map.keySet()) {
            Matcher matcher = zzbic.matcher(str);
            if (matcher.matches()) {
                try {
                    product.setCustomDimension(Integer.parseInt(matcher.group(1)), String.valueOf(map.get(str)));
                } catch (NumberFormatException unused) {
                    String valueOf = String.valueOf(str);
                    zzdi.zzab(valueOf.length() != 0 ? "illegal number in custom dimension value: ".concat(valueOf) : new String("illegal number in custom dimension value: "));
                }
            } else {
                Matcher matcher2 = zzbid.matcher(str);
                if (matcher2.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher2.group(1)), zzo(map.get(str)).intValue());
                    } catch (NumberFormatException unused2) {
                        String valueOf2 = String.valueOf(str);
                        zzdi.zzab(valueOf2.length() != 0 ? "illegal number in custom metric value: ".concat(valueOf2) : new String("illegal number in custom metric value: "));
                    }
                }
            }
        }
        return product;
    }

    private static Map<String, String> zzi(zzp zzp) {
        Object zzh = zzgj.zzh(zzp);
        if (!(zzh instanceof Map)) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) zzh).entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private final Map<String, String> zzj(zzp zzp) {
        if (zzp == null) {
            return new HashMap();
        }
        Map<String, String> zzi = zzi(zzp);
        if (zzi == null) {
            return new HashMap();
        }
        String str = zzi.get("&aip");
        if (str != null && this.zzbig.contains(str.toLowerCase())) {
            zzi.remove("&aip");
        }
        return zzi;
    }

    private static Double zzn(Object obj) {
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf) : new String("Cannot convert the object to Double: "));
            }
        } else if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        } else {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            String valueOf2 = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf2) : new String("Cannot convert the object to Double: "));
        }
    }

    private static Integer zzo(Object obj) {
        if (obj instanceof String) {
            try {
                return Integer.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf) : new String("Cannot convert the object to Integer: "));
            }
        } else if (obj instanceof Double) {
            return Integer.valueOf(((Double) obj).intValue());
        } else {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            String valueOf2 = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf2) : new String("Cannot convert the object to Integer: "));
        }
    }

    @Override // com.google.android.gms.tagmanager.zzgh, com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ zzp zze(Map map) {
        return super.zze(map);
    }

    @Override // com.google.android.gms.tagmanager.zzgh, com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ boolean zznk() {
        return super.zznk();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ Set zzou() {
        return super.zzou();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ String zzot() {
        return super.zzot();
    }
}
