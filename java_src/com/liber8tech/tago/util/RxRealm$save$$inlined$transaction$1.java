package com.liber8tech.tago.util;

import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.realm.Realm;
import io.realm.RealmObject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", "mainRealm", "Lio/realm/Realm;", "apply", "com/liber8tech/tago/util/RxRealm$transaction$1"}, k = 3, mv = {1, 1, 13})
/* compiled from: RxRealm.kt */
public final class RxRealm$save$$inlined$transaction$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ RealmObject $data$inlined;

    public RxRealm$save$$inlined$transaction$1(RealmObject realmObject) {
        this.$data$inlined = realmObject;
    }

    public final Observable<Unit> apply(@NotNull final Realm realm) {
        Intrinsics.checkParameterIsNotNull(realm, "mainRealm");
        return Observable.create(new ObservableOnSubscribe<T>(this) {
            /* class com.liber8tech.tago.util.RxRealm$save$$inlined$transaction$1.AnonymousClass1 */
            final /* synthetic */ RxRealm$save$$inlined$transaction$1 this$0;

            {
                this.this$0 = r1;
            }

            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(@NotNull final ObservableEmitter<Unit> observableEmitter) {
                Intrinsics.checkParameterIsNotNull(observableEmitter, "emitter");
                realm.executeTransactionAsync(new Realm.Transaction(this) {
                    /* class com.liber8tech.tago.util.RxRealm$save$$inlined$transaction$1.AnonymousClass1.AnonymousClass1 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    @Override // io.realm.Realm.Transaction
                    public final void execute(Realm realm) {
                        Intrinsics.checkExpressionValueIsNotNull(realm, "it");
                        realm.copyToRealm(this.this$0.this$0.$data$inlined);
                    }
                }, new Realm.Transaction.OnSuccess(this) {
                    /* class com.liber8tech.tago.util.RxRealm$save$$inlined$transaction$1.AnonymousClass1.AnonymousClass2 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: io.reactivex.ObservableEmitter */
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // io.realm.Realm.Transaction.OnSuccess
                    public final void onSuccess() {
                        realm.close();
                        observableEmitter.onNext(Unit.INSTANCE);
                        observableEmitter.onComplete();
                    }
                }, new Realm.Transaction.OnError(this) {
                    /* class com.liber8tech.tago.util.RxRealm$save$$inlined$transaction$1.AnonymousClass1.AnonymousClass3 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    @Override // io.realm.Realm.Transaction.OnError
                    public final void onError(Throwable th) {
                        realm.close();
                        observableEmitter.onError(th);
                    }
                });
            }
        });
    }
}
