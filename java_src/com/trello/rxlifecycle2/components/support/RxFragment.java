package com.trello.rxlifecycle2.components.support;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.View;
import com.trello.rxlifecycle2.LifecycleProvider;
import com.trello.rxlifecycle2.LifecycleTransformer;
import com.trello.rxlifecycle2.RxLifecycle;
import com.trello.rxlifecycle2.android.FragmentEvent;
import com.trello.rxlifecycle2.android.RxLifecycleAndroid;
import io.reactivex.Observable;
import io.reactivex.subjects.BehaviorSubject;

public abstract class RxFragment extends Fragment implements LifecycleProvider<FragmentEvent> {
    private final BehaviorSubject<FragmentEvent> lifecycleSubject = BehaviorSubject.create();

    @Override // com.trello.rxlifecycle2.LifecycleProvider
    @CheckResult
    @NonNull
    public final Observable<FragmentEvent> lifecycle() {
        return this.lifecycleSubject.hide();
    }

    @CheckResult
    @NonNull
    public final <T> LifecycleTransformer<T> bindUntilEvent(@NonNull FragmentEvent fragmentEvent) {
        return RxLifecycle.bindUntilEvent(this.lifecycleSubject, fragmentEvent);
    }

    @Override // com.trello.rxlifecycle2.LifecycleProvider
    @CheckResult
    @NonNull
    public final <T> LifecycleTransformer<T> bindToLifecycle() {
        return RxLifecycleAndroid.bindFragment(this.lifecycleSubject);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.lifecycleSubject.onNext(FragmentEvent.ATTACH);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.lifecycleSubject.onNext(FragmentEvent.CREATE);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.lifecycleSubject.onNext(FragmentEvent.CREATE_VIEW);
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.lifecycleSubject.onNext(FragmentEvent.START);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.lifecycleSubject.onNext(FragmentEvent.RESUME);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        this.lifecycleSubject.onNext(FragmentEvent.PAUSE);
        super.onPause();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        this.lifecycleSubject.onNext(FragmentEvent.STOP);
        super.onStop();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        this.lifecycleSubject.onNext(FragmentEvent.DESTROY_VIEW);
        super.onDestroyView();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.lifecycleSubject.onNext(FragmentEvent.DESTROY);
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        this.lifecycleSubject.onNext(FragmentEvent.DETACH);
        super.onDetach();
    }
}
