package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.model.Pack;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;

public final class PackActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    public AnalyticsService analytics;
    public IAPService iapService;
    public ImageEditorService imageService;
    private final PackActivityUI ui = new PackActivityUI();

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

    public final IAPService getIapService() {
        IAPService iAPService = this.iapService;
        if (iAPService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("iapService");
        }
        return iAPService;
    }

    public final void setIapService(IAPService iAPService) {
        Intrinsics.checkParameterIsNotNull(iAPService, "<set-?>");
        this.iapService = iAPService;
    }

    public final ImageEditorService getImageService() {
        ImageEditorService imageEditorService = this.imageService;
        if (imageEditorService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageService");
        }
        return imageEditorService;
    }

    public final void setImageService(ImageEditorService imageEditorService) {
        Intrinsics.checkParameterIsNotNull(imageEditorService, "<set-?>");
        this.imageService = imageEditorService;
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
        analyticsService.trackScreen(Screens.pack);
        Serializable serializableExtra = getIntent().getSerializableExtra(Constants.currentPack);
        if (serializableExtra != null) {
            Pack pack = (Pack) serializableExtra;
            setBackgroundImage(pack.getPackImageUrl());
            if (pack.getProductId() != null) {
                IAPService iAPService = this.iapService;
                if (iAPService == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("iapService");
                }
                Observable<R> flatMap = iAPService.createConnection(this).flatMap(new PackActivity$onCreate$1(this, pack));
                Intrinsics.checkExpressionValueIsNotNull(flatMap, "iapService.createConnect… currentPack.productId) }");
                RxExtensionsKt.asyncIO(flatMap).subscribe(new PackActivity$onCreate$2(this), new PackActivity$onCreate$3(this));
            }
            this.ui.setPurchaseButtonClick(new PackActivity$onCreate$4(this, pack));
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.liber8tech.tago.model.Pack");
    }

    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDisposeBag().clear();
    }

    /* access modifiers changed from: public */
    private final void showPurchasedMain() {
        Intent intent = new Intent(this, MainActivity.class);
        intent.putExtra(Constants.collectionType, Constants.purchased);
        intent.setFlags(335544320);
        startActivity(intent);
    }

    private final void setBackgroundImage(String str) {
        getDisposeBag().add(Observable.fromCallable(new PackActivity$setBackgroundImage$1(str)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new PackActivity$setBackgroundImage$2(this)));
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    public View getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public String getToolbarTitle() {
        String string = getString(R.string.collection);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.collection)");
        return string;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new PackActivity$getToolbarLeftIconClick$1(this);
    }
}
