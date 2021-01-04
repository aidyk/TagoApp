package retrofit2.adapter.rxjava2;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import retrofit2.Call;
import retrofit2.CallAdapter;

final class RxJava2CallAdapter<R> implements CallAdapter<R, Object> {
    private final boolean isAsync;
    private final boolean isBody;
    private final boolean isCompletable;
    private final boolean isFlowable;
    private final boolean isMaybe;
    private final boolean isResult;
    private final boolean isSingle;
    private final Type responseType;
    @Nullable
    private final Scheduler scheduler;

    RxJava2CallAdapter(Type type, @Nullable Scheduler scheduler2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.responseType = type;
        this.scheduler = scheduler2;
        this.isAsync = z;
        this.isResult = z2;
        this.isBody = z3;
        this.isFlowable = z4;
        this.isSingle = z5;
        this.isMaybe = z6;
        this.isCompletable = z7;
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        return this.responseType;
    }

    @Override // retrofit2.CallAdapter
    public Object adapt(Call<R> call) {
        Observable observable;
        Observable observable2;
        if (this.isAsync) {
            observable = new CallEnqueueObservable(call);
        } else {
            observable = new CallExecuteObservable(call);
        }
        if (this.isResult) {
            observable2 = new ResultObservable(observable);
        } else {
            observable2 = this.isBody ? new BodyObservable(observable) : observable;
        }
        if (this.scheduler != null) {
            observable2 = observable2.subscribeOn(this.scheduler);
        }
        if (this.isFlowable) {
            return observable2.toFlowable(BackpressureStrategy.LATEST);
        }
        if (this.isSingle) {
            return observable2.singleOrError();
        }
        if (this.isMaybe) {
            return observable2.singleElement();
        }
        return this.isCompletable ? observable2.ignoreElements() : observable2;
    }
}
