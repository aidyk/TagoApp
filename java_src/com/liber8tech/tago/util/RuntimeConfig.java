package com.liber8tech.tago.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.internal.ServerProtocol;
import com.liber8tech.tago.android.activity.MainActivityUI;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001a\u001a\u00020\u0006J\u0006\u0010\u001b\u001a\u00020\u001cJ\b\u0010\u001d\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0010J\b\u0010 \u001a\u0004\u0018\u00010\u0010J\b\u0010!\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0016\u0010%\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u0010J\u000e\u0010'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0006J\u000e\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020\u001cJ\u000e\u0010+\u001a\u00020#2\u0006\u0010,\u001a\u00020\u0010J\u000e\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u0010J\u000e\u0010/\u001a\u00020#2\u0006\u00100\u001a\u00020\u0010R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@FX\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@FX\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u000e\u0010\u000f\u001a\u00020\u0010XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0010XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010XD¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/liber8tech/tago/util/RuntimeConfig;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "value", "", "analyticsEnable", "getAnalyticsEnable", "()Z", "setAnalyticsEnable", "(Z)V", "crashlyticsEnable", "getCrashlyticsEnable", "setCrashlyticsEnable", "keyAnalyticsEnabled", "", "keyAutoUpload", "keyCrashlyticsEnabled", "keyLastSelected", "keyNewestFirmwareId", "keyToken", "keyUserId", "sharedPreferences", "Landroid/content/SharedPreferences;", "tagoAuthDb", "getAutoUpload", "getLastCollection", "Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;", "getLatestFirmwareVersion", "getPackName", "id", "getToken", "getUserId", "removeToken", "", "removeUserId", "savePack", "name", "setAutoUpload", "enabled", "setLastCollection", "collection", "setLatestFirmwareVersion", ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "setToken", "token", "setUserId", "userId", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: RuntimeConfig.kt */
public final class RuntimeConfig {
    private final Context context;
    private final String keyAnalyticsEnabled = "key_analytics_enabled";
    private final String keyAutoUpload = "key_auto_upload";
    private final String keyCrashlyticsEnabled = "key_crashlytics_enabled";
    private final String keyLastSelected = "key_last_selected";
    private final String keyNewestFirmwareId = "key_newest_firmware_id";
    private final String keyToken = "key_token";
    private final String keyUserId = "key_user_id";
    private final SharedPreferences sharedPreferences;
    private final String tagoAuthDb = "tago_auth_db";

    @Inject
    public RuntimeConfig(@NotNull Context context2) {
        Intrinsics.checkParameterIsNotNull(context2, "context");
        this.context = context2;
        SharedPreferences sharedPreferences2 = this.context.getSharedPreferences(this.tagoAuthDb, 0);
        Intrinsics.checkExpressionValueIsNotNull(sharedPreferences2, "context.getSharedPrefere…Db, Context.MODE_PRIVATE)");
        this.sharedPreferences = sharedPreferences2;
    }

    @Nullable
    public final String getToken() {
        return this.sharedPreferences.getString(this.keyToken, null);
    }

    public final void removeToken() {
        this.sharedPreferences.edit().remove(this.keyToken).apply();
    }

    public final void setToken(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.sharedPreferences.edit().putString(this.keyToken, str).apply();
    }

    @Nullable
    public final String getUserId() {
        return this.sharedPreferences.getString(this.keyUserId, null);
    }

    public final void removeUserId() {
        this.sharedPreferences.edit().remove(this.keyUserId).apply();
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "userId");
        this.sharedPreferences.edit().putString(this.keyUserId, str).apply();
    }

    @Nullable
    public final String getLatestFirmwareVersion() {
        return this.sharedPreferences.getString(this.keyNewestFirmwareId, null);
    }

    public final void setLatestFirmwareVersion(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        this.sharedPreferences.edit().putString(this.keyNewestFirmwareId, str).apply();
    }

    public final void setAutoUpload(boolean z) {
        this.sharedPreferences.edit().putBoolean(this.keyAutoUpload, z).apply();
    }

    public final boolean getAutoUpload() {
        return this.sharedPreferences.getBoolean(this.keyAutoUpload, true);
    }

    public final void savePack(@NotNull String str, @NotNull String str2) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        Intrinsics.checkParameterIsNotNull(str2, "name");
        this.sharedPreferences.edit().putString(str, str2).apply();
    }

    @NotNull
    public final String getPackName(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        String string = this.sharedPreferences.getString(str, "");
        Intrinsics.checkExpressionValueIsNotNull(string, "sharedPreferences.getString(id, \"\")");
        return string;
    }

    public final void setLastCollection(@NotNull MainActivityUI.SelectedCollection selectedCollection) {
        Intrinsics.checkParameterIsNotNull(selectedCollection, "collection");
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        Intrinsics.checkExpressionValueIsNotNull(edit, "editor");
        edit.putString(this.keyLastSelected, selectedCollection.name());
        edit.apply();
    }

    @NotNull
    public final MainActivityUI.SelectedCollection getLastCollection() {
        String string = this.sharedPreferences.getString(this.keyLastSelected, MainActivityUI.SelectedCollection.STARTER.name());
        Intrinsics.checkExpressionValueIsNotNull(string, "sharedPreferences.getStr…dCollection.STARTER.name)");
        return MainActivityUI.SelectedCollection.valueOf(string);
    }

    public final void setAnalyticsEnable(boolean z) {
        this.sharedPreferences.edit().putBoolean(this.keyAnalyticsEnabled, z).apply();
    }

    public final boolean getAnalyticsEnable() {
        return this.sharedPreferences.getBoolean(this.keyAnalyticsEnabled, false);
    }

    public final void setCrashlyticsEnable(boolean z) {
        this.sharedPreferences.edit().putBoolean(this.keyCrashlyticsEnabled, z).apply();
    }

    public final boolean getCrashlyticsEnable() {
        return this.sharedPreferences.getBoolean(this.keyCrashlyticsEnabled, false);
    }
}
