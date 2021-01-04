package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.view.View;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.ToolbarElements;
import com.trello.rxlifecycle2.components.support.RxAppCompatActivity;
import io.reactivex.disposables.CompositeDisposable;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContextKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0006\u0010\u0014\u001a\u00020\u000bJ\u0006\u0010\u0015\u001a\u00020\u000bJ\u0006\u0010\u0016\u001a\u00020\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/liber8tech/tago/android/activity/BaseActivity;", "Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;", "Lcom/liber8tech/tago/android/activity/ToolbarElements;", "()V", "disposeBag", "Lio/reactivex/disposables/CompositeDisposable;", "getDisposeBag", "()Lio/reactivex/disposables/CompositeDisposable;", "ui", "Lcom/liber8tech/tago/android/activity/BaseActivityUI;", "changeView", "", "errorView", "Landroid/view/View;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "refreshToolbarTitle", "title", "", "selectorIconDown", "selectorIconUp", "showSelectorIcon", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: BaseActivity.kt */
public abstract class BaseActivity extends RxAppCompatActivity implements ToolbarElements {
    private HashMap _$_findViewCache;
    @NotNull
    private final CompositeDisposable disposeBag = new CompositeDisposable();
    private BaseActivityUI ui = new BaseActivityUI();

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getTitleOnClick() {
        return ToolbarElements.DefaultImpls.getTitleOnClick(this);
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @Nullable
    public Integer getToolbarLeftIcon() {
        return ToolbarElements.DefaultImpls.getToolbarLeftIcon(this);
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return ToolbarElements.DefaultImpls.getToolbarLeftIconClick(this);
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @Nullable
    public Integer getToolbarRightIcon() {
        return ToolbarElements.DefaultImpls.getToolbarRightIcon(this);
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarRightIconClick() {
        return ToolbarElements.DefaultImpls.getToolbarRightIconClick(this);
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @Nullable
    public CharSequence getToolbarTitle() {
        return ToolbarElements.DefaultImpls.getToolbarTitle(this);
    }

    @NotNull
    public final CompositeDisposable getDisposeBag() {
        return this.disposeBag;
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        AnkoContextKt.setContentView(this.ui, this);
    }

    public final void refreshToolbarTitle(@Nullable CharSequence charSequence) {
        this.ui.getToolbar().setText(charSequence);
    }

    public final void changeView(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "errorView");
        int childCount = this.ui.getRoot().getChildCount();
        for (int i = 1; i < childCount; i++) {
            this.ui.getRoot().removeViewAt(i);
        }
        this.ui.getRoot().addView(view);
    }

    public final void showSelectorIcon() {
        this.ui.getToolbar().getSelectorIcon().setVisibility(0);
    }

    public final void selectorIconDown() {
        Sdk15PropertiesKt.setImageResource(this.ui.getToolbar().getSelectorIcon(), R.drawable.ic_arrow_drop_down_white_24dp);
    }

    public final void selectorIconUp() {
        Sdk15PropertiesKt.setImageResource(this.ui.getToolbar().getSelectorIcon(), R.drawable.ic_arrow_drop_up_white_24dp);
    }
}
