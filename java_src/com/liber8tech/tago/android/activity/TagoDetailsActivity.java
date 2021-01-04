package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.android.ui.TagoDetailsUI;
import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.RxRealm;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;

public final class TagoDetailsActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    public AnalyticsService analytics;
    private TagoDevice device;
    public TagoService tagoService;
    private final TagoDetailsUI ui = new TagoDetailsUI();

    @Override // com.liber8tech.tago.android.activity.BaseActivity
    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity
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

    public final TagoService getTagoService() {
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        return tagoService2;
    }

    public final void setTagoService(TagoService tagoService2) {
        Intrinsics.checkParameterIsNotNull(tagoService2, "<set-?>");
        this.tagoService = tagoService2;
    }

    public final AnalyticsService getAnalytics() {
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        return analyticsService;
    }

    public final void setAnalytics(AnalyticsService analyticsService) {
        Intrinsics.checkParameterIsNotNull(analyticsService, "<set-?>");
        this.analytics = analyticsService;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        analyticsService.trackScreen(Screens.tagoDetails);
        String stringExtra = getIntent().getStringExtra(SettingsJsonConstants.APP_IDENTIFIER_KEY);
        RxRealm rxRealm = RxRealm.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, "id");
        getDisposeBag().add(rxRealm.find(TagoDevice.class, SettingsJsonConstants.APP_IDENTIFIER_KEY, stringExtra).subscribe(new TagoDetailsActivity$onCreate$1(this)));
        this.ui.setDeleteOnClick(new TagoDetailsActivity$onCreate$3(this, stringExtra));
        this.ui.setEditTextFocusChange(new TagoDetailsActivity$onCreate$4(this));
        this.ui.getSaveButton().setOnClickListener(new TagoDetailsActivity$inlined$sam$i$android_view_View_OnClickListener$0(new TagoDetailsActivity$onCreate$5(this, stringExtra)));
    }

    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDisposeBag().clear();
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    public LinearLayout getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new TagoDetailsActivity$getToolbarLeftIconClick$1(this);
    }
}
