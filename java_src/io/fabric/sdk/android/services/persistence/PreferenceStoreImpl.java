package io.fabric.sdk.android.services.persistence;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import io.fabric.sdk.android.Kit;

public class PreferenceStoreImpl implements PreferenceStore {
    private final Context context;
    private final String preferenceName;
    private final SharedPreferences sharedPreferences;

    public PreferenceStoreImpl(Context context2, String str) {
        if (context2 != null) {
            this.context = context2;
            this.preferenceName = str;
            this.sharedPreferences = this.context.getSharedPreferences(this.preferenceName, 0);
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    @Deprecated
    public PreferenceStoreImpl(Kit kit) {
        this(kit.getContext(), kit.getClass().getName());
    }

    @Override // io.fabric.sdk.android.services.persistence.PreferenceStore
    public SharedPreferences get() {
        return this.sharedPreferences;
    }

    @Override // io.fabric.sdk.android.services.persistence.PreferenceStore
    public SharedPreferences.Editor edit() {
        return this.sharedPreferences.edit();
    }

    @Override // io.fabric.sdk.android.services.persistence.PreferenceStore
    @TargetApi(9)
    public boolean save(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT < 9) {
            return editor.commit();
        }
        editor.apply();
        return true;
    }
}
