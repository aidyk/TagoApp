package com.liber8tech.tago.model;

import android.graphics.drawable.Drawable;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.liber8tech.tago.android.drawable.DevicePreview;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.RealmObject;
import io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u001a\u001a\u00020\u001bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0010X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\t\"\u0004\b\u0019\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/liber8tech/tago/model/TagoDevice;", "Lio/realm/RealmObject;", "id", "", "name", "(Ljava/lang/String;Ljava/lang/String;)V", "()V", TtmlNode.ATTR_TTS_COLOR, "getColor", "()Ljava/lang/String;", "setColor", "(Ljava/lang/String;)V", SettingsJsonConstants.APP_IDENTIFIER_KEY, "getIdentifier", "setIdentifier", "lowBattery", "", "getLowBattery", "()Z", "setLowBattery", "(Z)V", "getName", "setName", "size", "getSize", "setSize", "getIcon", "Landroid/graphics/drawable/Drawable;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoDevice.kt */
public class TagoDevice extends RealmObject implements com_liber8tech_tago_model_TagoDeviceRealmProxyInterface {
    @Nullable
    private String color;
    @NotNull
    private String identifier;
    private boolean lowBattery;
    @Nullable
    private String name;
    @Nullable
    private String size;

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public String realmGet$color() {
        return this.color;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public String realmGet$identifier() {
        return this.identifier;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public boolean realmGet$lowBattery() {
        return this.lowBattery;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public String realmGet$size() {
        return this.size;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$color(String str) {
        this.color = str;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$identifier(String str) {
        this.identifier = str;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$lowBattery(boolean z) {
        this.lowBattery = z;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.com_liber8tech_tago_model_TagoDeviceRealmProxyInterface
    public void realmSet$size(String str) {
        this.size = str;
    }

    public TagoDevice() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$identifier("");
    }

    @NotNull
    public final String getIdentifier() {
        return realmGet$identifier();
    }

    public final void setIdentifier(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        realmSet$identifier(str);
    }

    @Nullable
    public final String getColor() {
        return realmGet$color();
    }

    public final void setColor(@Nullable String str) {
        realmSet$color(str);
    }

    @Nullable
    public final String getSize() {
        return realmGet$size();
    }

    public final void setSize(@Nullable String str) {
        realmSet$size(str);
    }

    @Nullable
    public final String getName() {
        return realmGet$name();
    }

    public final void setName(@Nullable String str) {
        realmSet$name(str);
    }

    public final boolean getLowBattery() {
        return realmGet$lowBattery();
    }

    public final void setLowBattery(boolean z) {
        realmSet$lowBattery(z);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public TagoDevice(@NotNull String str, @NotNull String str2) {
        this();
        Intrinsics.checkParameterIsNotNull(str, "id");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$identifier(str);
        realmSet$name(str2);
        realmSet$color(ArcKt.getColor(str2));
        realmSet$size(ArcKt.getSize(str2));
        realmSet$lowBattery(false);
    }

    @NotNull
    public final Drawable getIcon() {
        if (realmGet$name() == null) {
            return DevicePreview.Companion.getUnknown();
        }
        if (realmGet$color() != null && Intrinsics.areEqual(realmGet$color(), "Gold")) {
            return DevicePreview.Companion.getGold();
        }
        if (realmGet$color() != null && Intrinsics.areEqual(realmGet$color(), "Silver")) {
            return DevicePreview.Companion.getSilver();
        }
        if (realmGet$color() == null || !Intrinsics.areEqual(realmGet$color(), "Black")) {
            return DevicePreview.Companion.getUnknown();
        }
        return DevicePreview.Companion.getBlack();
    }
}
