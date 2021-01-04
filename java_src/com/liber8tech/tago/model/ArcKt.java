package com.liber8tech.tago.model;

import android.graphics.drawable.Drawable;
import com.liber8tech.tago.android.drawable.DevicePreview;
import com.polidea.rxandroidble2.RxBleDevice;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0003¨\u0006\u0007"}, d2 = {"getColor", "", "getCustomName", "Lcom/polidea/rxandroidble2/RxBleDevice;", "getSize", "preview", "Landroid/graphics/drawable/Drawable;", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: Arc.kt */
public final class ArcKt {
    @NotNull
    public static final Drawable preview(@NotNull RxBleDevice rxBleDevice) {
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "receiver$0");
        if (rxBleDevice.getName() == null) {
            return DevicePreview.Companion.getUnknown();
        }
        String name = rxBleDevice.getName();
        if (name == null) {
            name = "";
        }
        Intrinsics.checkExpressionValueIsNotNull(name, "name ?: \"\"");
        String str = name;
        if (StringsKt.contains((CharSequence) str, (CharSequence) "gold", true)) {
            return DevicePreview.Companion.getGold();
        }
        if (StringsKt.contains((CharSequence) str, (CharSequence) "silver", true)) {
            return DevicePreview.Companion.getSilver();
        }
        if (StringsKt.contains((CharSequence) str, (CharSequence) "black", true)) {
            return DevicePreview.Companion.getBlack();
        }
        return DevicePreview.Companion.getUnknown();
    }

    @NotNull
    public static final String getColor(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "receiver$0");
        String str2 = str;
        if (StringsKt.contains((CharSequence) str2, (CharSequence) "gold", true)) {
            return "Gold";
        }
        if (StringsKt.contains((CharSequence) str2, (CharSequence) "silver", true)) {
            return "Silver";
        }
        return StringsKt.contains(str2, "black", true) ? "Black" : "";
    }

    @NotNull
    public static final String getSize(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "receiver$0");
        String str2 = str;
        if (StringsKt.contains((CharSequence) str2, (CharSequence) "L", false)) {
            return "L";
        }
        if (StringsKt.contains((CharSequence) str2, (CharSequence) "M", false)) {
            return "M";
        }
        return StringsKt.contains(str2, "XL", false) ? "XL" : "";
    }

    @NotNull
    public static final String getCustomName(@NotNull RxBleDevice rxBleDevice) {
        Object obj;
        String str;
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "receiver$0");
        Realm defaultInstance = Realm.getDefaultInstance();
        RealmResults findAll = defaultInstance.where(TagoDevice.class).findAll();
        Intrinsics.checkExpressionValueIsNotNull(findAll, "realm.where(TagoDevice::class.java).findAll()");
        RealmResults<TagoDevice> realmResults = findAll;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(realmResults, 10));
        for (TagoDevice tagoDevice : realmResults) {
            arrayList.add((TagoDevice) defaultInstance.copyFromRealm(tagoDevice));
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((TagoDevice) obj).getIdentifier(), rxBleDevice.getMacAddress())) {
                break;
            }
        }
        TagoDevice tagoDevice2 = (TagoDevice) obj;
        if (tagoDevice2 == null || (str = tagoDevice2.getName()) == null) {
            str = rxBleDevice.getName();
        }
        return str != null ? str : "empty";
    }
}
