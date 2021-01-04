package com.liber8tech.tago.util;

import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.RealmObject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u0001H\u0002H\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u0001H\u0002H\u0002\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "T", "kotlin.jvm.PlatformType", "Lio/realm/RealmObject;", "mainRealm", "Lio/realm/Realm;", "apply", "com/liber8tech/tago/util/RxRealm$transactionWithResult$1"}, k = 3, mv = {1, 1, 13})
/* compiled from: RxRealm.kt */
public final class RxRealm$find$$inlined$transactionWithResult$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ Class $clazz$inlined;
    final /* synthetic */ String $field$inlined;
    final /* synthetic */ String $value$inlined;

    public RxRealm$find$$inlined$transactionWithResult$1(Class cls, String str, String str2) {
        this.$clazz$inlined = cls;
        this.$field$inlined = str;
        this.$value$inlined = str2;
    }

    public final Observable<T> apply(@NotNull final Realm realm) {
        Intrinsics.checkParameterIsNotNull(realm, "mainRealm");
        return Observable.create(new ObservableOnSubscribe<T>(this) {
            /* class com.liber8tech.tago.util.RxRealm$find$$inlined$transactionWithResult$1.AnonymousClass1 */
            final /* synthetic */ RxRealm$find$$inlined$transactionWithResult$1 this$0;

            {
                this.this$0 = r1;
            }

            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(@NotNull final ObservableEmitter<T> observableEmitter) {
                Intrinsics.checkParameterIsNotNull(observableEmitter, "emitter");
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = (T) null;
                realm.executeTransactionAsync(new Realm.Transaction(this) {
                    /* class com.liber8tech.tago.util.RxRealm$find$$inlined$transactionWithResult$1.AnonymousClass1.AnonymousClass1 */
                    final /* synthetic */ AnonymousClass1 this$0;

                    {
                        this.this$0 = r1;
                    }

                    @Override // io.realm.Realm.Transaction
                    public final void execute(Realm realm) {
                        Ref.ObjectRef objectRef = objectRef;
                        Intrinsics.checkExpressionValueIsNotNull(realm, "it");
                        objectRef.element = (T) ((RealmObject) realm.where(this.this$0.this$0.$clazz$inlined).equalTo(this.this$0.this$0.$field$inlined, this.this$0.this$0.$value$inlined).findFirst());
                        objectRef.element = (T) ((RealmObject) realm.copyFromRealm((RealmModel) objectRef.element));
                    }
                }, new Realm.Transaction.OnSuccess(this) {
                    /* class com.liber8tech.tago.util.RxRealm$find$$inlined$transactionWithResult$1.AnonymousClass1.AnonymousClass2 */
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
                    /* class com.liber8tech.tago.util.RxRealm$find$$inlined$transactionWithResult$1.AnonymousClass1.AnonymousClass3 */
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
