package androidx.core.preference;

import android.preference.Preference;
import android.preference.PreferenceGroup;
import com.facebook.internal.NativeProtocol;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010)\n\u0002\b\u0003\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a0\u0010\t\u001a\u00020\n*\u00020\u00022!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\n0\fH\b\u001aE\u0010\u000f\u001a\u00020\n*\u00020\u000226\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\b¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\n0\u0010H\b\u001a\u0015\u0010\u0012\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\n\u001a\u0015\u0010\u0012\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\r\u0010\u0015\u001a\u00020\u0006*\u00020\u0002H\b\u001a\r\u0010\u0016\u001a\u00020\u0006*\u00020\u0002H\b\u001a\u0013\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u0018*\u00020\u0002H\u0002\u001a\u0015\u0010\u0019\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\n\u001a\u0015\u0010\u001a\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\n\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u001b"}, d2 = {"size", "", "Landroid/preference/PreferenceGroup;", "getSize", "(Landroid/preference/PreferenceGroup;)I", "contains", "", "preference", "Landroid/preference/Preference;", "forEach", "", NativeProtocol.WEB_DIALOG_ACTION, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "forEachIndexed", "Lkotlin/Function2;", "index", "get", "key", "", "isEmpty", "isNotEmpty", "iterator", "", "minusAssign", "plusAssign", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: PreferenceGroup.kt */
public final class PreferenceGroupKt {
    @NotNull
    public static final Preference get(@NotNull PreferenceGroup preferenceGroup, @NotNull CharSequence charSequence) {
        Preference findPreference = preferenceGroup.findPreference(charSequence);
        Intrinsics.checkExpressionValueIsNotNull(findPreference, "findPreference(key)");
        return findPreference;
    }

    @NotNull
    public static final Preference get(@NotNull PreferenceGroup preferenceGroup, int i) {
        Preference preference = preferenceGroup.getPreference(i);
        if (preference != null) {
            return preference;
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + preferenceGroup.getPreferenceCount());
    }

    public static final void plusAssign(@NotNull PreferenceGroup preferenceGroup, @NotNull Preference preference) {
        preferenceGroup.addPreference(preference);
    }

    public static final void minusAssign(@NotNull PreferenceGroup preferenceGroup, @NotNull Preference preference) {
        preferenceGroup.removePreference(preference);
    }

    public static final int getSize(@NotNull PreferenceGroup preferenceGroup) {
        return preferenceGroup.getPreferenceCount();
    }

    @NotNull
    public static final Iterator<Preference> iterator(@NotNull PreferenceGroup preferenceGroup) {
        return new PreferenceGroupKt$iterator$1(preferenceGroup);
    }

    public static final boolean contains(@NotNull PreferenceGroup preferenceGroup, @NotNull Preference preference) {
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            if (Intrinsics.areEqual(get(preferenceGroup, i), preference)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isEmpty(@NotNull PreferenceGroup preferenceGroup) {
        return preferenceGroup.getPreferenceCount() == 0;
    }

    public static final boolean isNotEmpty(@NotNull PreferenceGroup preferenceGroup) {
        return preferenceGroup.getPreferenceCount() != 0;
    }

    public static final void forEach(@NotNull PreferenceGroup preferenceGroup, @NotNull Function1<? super Preference, Unit> function1) {
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            function1.invoke(get(preferenceGroup, i));
        }
    }

    public static final void forEachIndexed(@NotNull PreferenceGroup preferenceGroup, @NotNull Function2<? super Integer, ? super Preference, Unit> function2) {
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            function2.invoke(Integer.valueOf(i), get(preferenceGroup, i));
        }
    }
}
