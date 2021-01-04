package com.liber8tech.tago.util;

import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.realm.Realm;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u0002H\u0003 \u0004*\n\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u0002H\u0003 \u0004*\n\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0003*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n¢\u0006\u0002\b\b¨\u0006\t"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "T", "kotlin.jvm.PlatformType", "Lio/realm/RealmObject;", "mainRealm", "Lio/realm/Realm;", "apply", "com/liber8tech/tago/util/RxRealm$transactionWithResults$1"}, k = 3, mv = {1, 1, 13})
/* compiled from: RxRealm.kt */
public final class RxRealm$findAll$$inlined$transactionWithResults$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ Class $clazz$inlined;

    public RxRealm$findAll$$inlined$transactionWithResults$1(Class cls) {
        this.$clazz$inlined = cls;
    }

    public final Observable<List<T>> apply(@NotNull final Realm realm) {
        Intrinsics.checkParameterIsNotNull(realm, "mainRealm");
        return Observable.create(new ObservableOnSubscribe<T>(this) {
            /* class com.liber8tech.tago.util.RxRealm$findAll$$inlined$transactionWithResults$1.AnonymousClass1 */
            final /* synthetic */ RxRealm$findAll$$inlined$transactionWithResults$1 this$0;

            {
                this.this$0 = r1;
            }

            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(@NotNull final ObservableEmitter<List<T>> observableEmitter) {
                Intrinsics.checkParameterIsNotNull(observableEmitter, "emitter");
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = (T) null;
                realm.executeTransactionAsync(new Realm.Transaction(this) {
                    /* class com.liber8tech.tago.util.RxRealm$findAll$$inlined$transactionWithResults$1.AnonymousClass1.AnonymousClass1 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    @Override // io.realm.Realm.Transaction
                    public final void execute(Realm realm) {
                        Ref.ObjectRef objectRef = objectRef;
                        Intrinsics.checkExpressionValueIsNotNull(realm, "it");
                        objectRef.element = (T) realm.where(this.this$0.this$0.$clazz$inlined).findAll();
                        objectRef.element = (T) realm.copyFromRealm((Iterable) objectRef.element);
                    }
                }, new Realm.Transaction.OnSuccess(this) {
                    /* class com.liber8tech.tago.util.RxRealm$findAll$$inlined$transactionWithResults$1.AnonymousClass1.AnonymousClass2 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    @Override // io.realm.Realm.Transaction.OnSuccess
                    public final void onSuccess() {
                        realm.close();
                        T t = objectRef.element;
                        if (t != null) {
                            observableEmitter.onNext(t);
                        }
                        observableEmitter.onComplete();
                    }
                }, new Realm.Transaction.OnError(this) {
                    /* class com.liber8tech.tago.util.RxRealm$findAll$$inlined$transactionWithResults$1.AnonymousClass1.AnonymousClass3 */
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
