package com.liber8tech.tago.util;

import io.reactivex.Observable;
import io.realm.Realm;
import io.realm.RealmObject;
import io.realm.RealmResults;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\b\b\u0000\u0010\u0003*\u00020\u0004*\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0007¨\u0006\b"}, d2 = {"observe", "Lio/reactivex/Observable;", "Lio/realm/RealmResults;", "T", "Lio/realm/RealmObject;", "Lio/realm/Realm;", "clazz", "Ljava/lang/Class;", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: RxRealm.kt */
public final class RxRealmKt {
    @NotNull
    public static final <T extends RealmObject> Observable<RealmResults<T>> observe(@NotNull Realm realm, @NotNull Class<T> cls) {
        Intrinsics.checkParameterIsNotNull(realm, "receiver$0");
        Intrinsics.checkParameterIsNotNull(cls, "clazz");
        Observable<RealmResults<T>> just = Observable.just(realm.where(cls).findAllAsync());
        Intrinsics.checkExpressionValueIsNotNull(just, "Observable.just(where(clazz).findAllAsync())");
        return just;
    }
}
