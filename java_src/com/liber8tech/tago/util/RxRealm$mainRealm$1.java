package com.liber8tech.tago.util;

import android.support.v4.app.NotificationCompat;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.realm.Realm;
import java.util.concurrent.Callable;
import kotlin.Metadata;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lio/realm/Realm;", "kotlin.jvm.PlatformType", NotificationCompat.CATEGORY_CALL}, k = 3, mv = {1, 1, 13})
/* compiled from: RxRealm.kt */
public final class RxRealm$mainRealm$1<V> implements Callable<ObservableSource<? extends T>> {
    public static final RxRealm$mainRealm$1 INSTANCE = new RxRealm$mainRealm$1();

    RxRealm$mainRealm$1() {
    }

    @Override // java.util.concurrent.Callable
    public final Observable<Realm> call() {
        return Observable.just(Realm.getDefaultInstance());
    }
}
