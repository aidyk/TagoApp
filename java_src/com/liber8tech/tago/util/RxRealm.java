package com.liber8tech.tago.util;

import com.facebook.share.internal.ShareConstants;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.realm.Realm;
import io.realm.RealmObject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\"\b\b\u0000\u0010\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ$\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004\"\b\b\u0000\u0010\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\tJ4\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0004\"\b\b\u0000\u0010\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ*\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00110\u0004\"\b\b\u0000\u0010\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\tJ\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0004J#\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\"\b\b\u0000\u0010\u0006*\u00020\u00072\u0006\u0010\u0015\u001a\u0002H\u0006¢\u0006\u0002\u0010\u0016J#\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0004\"\b\b\u0000\u0010\u0006*\u00020\u00072\u0006\u0010\u0015\u001a\u0002H\u0006¢\u0006\u0002\u0010\u0016J4\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042#\b\u0004\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00050\u001aH\bJ@\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0004\"\b\b\u0000\u0010\u0006*\u00020\u00072%\b\u0004\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u001aH\bJJ\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00110\u0004\"\b\b\u0000\u0010\u0006*\u00020\u00072)\b\u0004\u0010\u0019\u001a#\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00110\u001aH\b¨\u0006 "}, d2 = {"Lcom/liber8tech/tago/util/RxRealm;", "", "()V", "delete", "Lio/reactivex/Observable;", "", "T", "Lio/realm/RealmObject;", "clazz", "Ljava/lang/Class;", "field", "", "value", "deleteAll", "", "find", "findAll", "", "mainRealm", "Lio/realm/Realm;", "save", ShareConstants.WEB_DIALOG_PARAM_DATA, "(Lio/realm/RealmObject;)Lio/reactivex/Observable;", "saveReturnResult", "transaction", "t", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "bgRealm", "transactionWithResult", "transactionWithResults", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: RxRealm.kt */
public final class RxRealm {
    public static final RxRealm INSTANCE = new RxRealm();

    private RxRealm() {
    }

    /* JADX DEBUG: Type inference failed for r3v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T extends io.realm.RealmObject> */
    @NotNull
    public final <T extends RealmObject> Observable<T> transactionWithResult(@NotNull Function1<? super Realm, ? extends T> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "t");
        Observable observable = (Observable<R>) mainRealm().flatMap(new RxRealm$transactionWithResult$1(function1));
        Intrinsics.checkExpressionValueIsNotNull(observable, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return observable;
    }

    @NotNull
    public final <T extends RealmObject> Observable<List<T>> transactionWithResults(@NotNull Function1<? super Realm, ? extends List<? extends T>> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "t");
        Observable<R> flatMap = mainRealm().flatMap(new RxRealm$transactionWithResults$1(function1));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return flatMap;
    }

    @NotNull
    public final Observable<Unit> transaction(@NotNull Function1<? super Realm, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "t");
        Observable<R> flatMap = mainRealm().flatMap(new RxRealm$transaction$1(function1));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return flatMap;
    }

    @NotNull
    public final <T extends RealmObject> Observable<Boolean> deleteAll(@NotNull Class<T> cls) {
        Intrinsics.checkParameterIsNotNull(cls, "clazz");
        Observable<R> flatMap = mainRealm().flatMap(new RxRealm$deleteAll$1(cls));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return flatMap;
    }

    @NotNull
    public final Observable<Realm> mainRealm() {
        Observable<Realm> subscribeOn = Observable.defer(RxRealm$mainRealm$1.INSTANCE).subscribeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(subscribeOn, "Observable.defer { Obser…dSchedulers.mainThread())");
        return subscribeOn;
    }

    /* JADX DEBUG: Type inference failed for r3v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T extends io.realm.RealmObject> */
    @NotNull
    public final <T extends RealmObject> Observable<T> find(@NotNull Class<T> cls, @NotNull String str, @NotNull String str2) {
        Intrinsics.checkParameterIsNotNull(cls, "clazz");
        Intrinsics.checkParameterIsNotNull(str, "field");
        Intrinsics.checkParameterIsNotNull(str2, "value");
        Observable observable = (Observable<R>) mainRealm().flatMap(new RxRealm$find$$inlined$transactionWithResult$1(cls, str, str2));
        Intrinsics.checkExpressionValueIsNotNull(observable, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return observable;
    }

    @NotNull
    public final <T extends RealmObject> Observable<List<T>> findAll(@NotNull Class<T> cls) {
        Intrinsics.checkParameterIsNotNull(cls, "clazz");
        Observable<R> flatMap = mainRealm().flatMap(new RxRealm$findAll$$inlined$transactionWithResults$1(cls));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return flatMap;
    }

    /* JADX DEBUG: Type inference failed for r3v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T extends io.realm.RealmObject> */
    @NotNull
    public final <T extends RealmObject> Observable<T> saveReturnResult(@NotNull T t) {
        Intrinsics.checkParameterIsNotNull(t, ShareConstants.WEB_DIALOG_PARAM_DATA);
        Observable observable = (Observable<R>) mainRealm().flatMap(new RxRealm$saveReturnResult$$inlined$transactionWithResult$1(t));
        Intrinsics.checkExpressionValueIsNotNull(observable, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return observable;
    }

    @NotNull
    public final <T extends RealmObject> Observable<Unit> save(@NotNull T t) {
        Intrinsics.checkParameterIsNotNull(t, ShareConstants.WEB_DIALOG_PARAM_DATA);
        Observable<R> flatMap = mainRealm().flatMap(new RxRealm$save$$inlined$transaction$1(t));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return flatMap;
    }

    @NotNull
    public final <T extends RealmObject> Observable<Unit> delete(@NotNull Class<T> cls, @NotNull String str, @NotNull String str2) {
        Intrinsics.checkParameterIsNotNull(cls, "clazz");
        Intrinsics.checkParameterIsNotNull(str, "field");
        Intrinsics.checkParameterIsNotNull(str2, "value");
        Observable<R> flatMap = mainRealm().flatMap(new RxRealm$delete$$inlined$transaction$1(cls, str, str2));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "mainRealm().flatMap { ma…\n        )\n      })\n    }");
        return flatMap;
    }
}
