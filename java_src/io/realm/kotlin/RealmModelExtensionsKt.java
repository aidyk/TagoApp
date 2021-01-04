package io.realm.kotlin;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.realm.RealmChangeListener;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.RealmObjectChangeListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u001a'\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007¢\u0006\u0002\u0010\b\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\f\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\u000e\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\u0003\u001a'\u0010\u0010\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a'\u0010\u0010\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007¢\u0006\u0002\u0010\b¨\u0006\u0011"}, d2 = {"addChangeListener", "", "E", "Lio/realm/RealmModel;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lio/realm/RealmChangeListener;", "(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V", "Lio/realm/RealmObjectChangeListener;", "(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V", "deleteFromRealm", "isLoaded", "", "isManaged", "isValid", "load", "removeAllChangeListeners", "removeChangeListener", "realm-kotlin-extensions_baseRelease"}, k = 2, mv = {1, 1, 9})
/* compiled from: RealmModelExtensions.kt */
public final class RealmModelExtensionsKt {
    public static final void deleteFromRealm(@NotNull RealmModel realmModel) {
        Intrinsics.checkParameterIsNotNull(realmModel, "$receiver");
        RealmObject.deleteFromRealm(realmModel);
    }

    public static final boolean isValid(@NotNull RealmModel realmModel) {
        Intrinsics.checkParameterIsNotNull(realmModel, "$receiver");
        return RealmObject.isValid(realmModel);
    }

    public static final boolean isManaged(@NotNull RealmModel realmModel) {
        Intrinsics.checkParameterIsNotNull(realmModel, "$receiver");
        return RealmObject.isManaged(realmModel);
    }

    public static final boolean isLoaded(@NotNull RealmModel realmModel) {
        Intrinsics.checkParameterIsNotNull(realmModel, "$receiver");
        return RealmObject.isLoaded(realmModel);
    }

    public static final boolean load(@NotNull RealmModel realmModel) {
        Intrinsics.checkParameterIsNotNull(realmModel, "$receiver");
        return RealmObject.load(realmModel);
    }

    public static final <E extends RealmModel> void addChangeListener(@NotNull E e, @NotNull RealmChangeListener<E> realmChangeListener) {
        Intrinsics.checkParameterIsNotNull(e, "$receiver");
        Intrinsics.checkParameterIsNotNull(realmChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        RealmObject.addChangeListener(e, realmChangeListener);
    }

    public static final <E extends RealmModel> void addChangeListener(@NotNull E e, @NotNull RealmObjectChangeListener<E> realmObjectChangeListener) {
        Intrinsics.checkParameterIsNotNull(e, "$receiver");
        Intrinsics.checkParameterIsNotNull(realmObjectChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        RealmObject.addChangeListener(e, realmObjectChangeListener);
    }

    public static final <E extends RealmModel> void removeChangeListener(@NotNull E e, @NotNull RealmChangeListener<E> realmChangeListener) {
        Intrinsics.checkParameterIsNotNull(e, "$receiver");
        Intrinsics.checkParameterIsNotNull(realmChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        RealmObject.removeChangeListener(e, realmChangeListener);
    }

    public static final <E extends RealmModel> void removeChangeListener(@NotNull E e, @NotNull RealmObjectChangeListener<E> realmObjectChangeListener) {
        Intrinsics.checkParameterIsNotNull(e, "$receiver");
        Intrinsics.checkParameterIsNotNull(realmObjectChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        RealmObject.removeChangeListener(e, realmObjectChangeListener);
    }

    public static final void removeAllChangeListeners(@NotNull RealmModel realmModel) {
        Intrinsics.checkParameterIsNotNull(realmModel, "$receiver");
        RealmObject.removeAllChangeListeners(realmModel);
    }
}
