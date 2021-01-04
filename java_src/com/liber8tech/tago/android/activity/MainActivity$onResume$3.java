package com.liber8tech.tago.android.activity;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.UpdateProfileData;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AlertBuilder;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "profile", "Lcom/liber8tech/tago/service/UpdateProfileData;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivity$onResume$3<T> implements Consumer<UpdateProfileData> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$onResume$3(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    public final void accept(UpdateProfileData updateProfileData) {
        if ((!Intrinsics.areEqual((Object) updateProfileData.getTermsOfCondition(), (Object) true)) && (!Intrinsics.areEqual((Object) updateProfileData.getPrivacyPolicy(), (Object) true))) {
            ContextExtensionKt.showToUDialog(this.this$0, new Function1<AlertBuilder<? extends DialogInterface>, Unit>(this) {
                /* class com.liber8tech.tago.android.activity.MainActivity$onResume$3.AnonymousClass1 */
                final /* synthetic */ MainActivity$onResume$3 this$0;

                {
                    this.this$0 = r1;
                }

                /* Return type fixed from 'java.lang.Object' to match base method */
                /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AlertBuilder<? extends DialogInterface> alertBuilder) {
                    invoke(alertBuilder);
                    return Unit.INSTANCE;
                }

                public final void invoke(@NotNull AlertBuilder<? extends DialogInterface> alertBuilder) {
                    Intrinsics.checkParameterIsNotNull(alertBuilder, "it");
                    RxExtensionsKt.asyncIO(this.this$0.this$0.getProfileService().updateTerms(true, true)).flatMap(new Function<T, SingleSource<? extends R>>(this) {
                        /* class com.liber8tech.tago.android.activity.MainActivity$onResume$3.AnonymousClass1.AnonymousClass1 */
                        final /* synthetic */ AnonymousClass1 this$0;

                        {
                            this.this$0 = r1;
                        }

                        @NotNull
                        public final Single<List<Pattern>> apply(@NotNull Unit unit) {
                            Intrinsics.checkParameterIsNotNull(unit, "it");
                            return this.this$0.this$0.this$0.getImageEditorService().getCreatedPatternList();
                        }
                    }).flatMapObservable(AnonymousClass2.INSTANCE).flatMap(new Function<T, ObservableSource<? extends R>>(this) {
                        /* class com.liber8tech.tago.android.activity.MainActivity$onResume$3.AnonymousClass1.AnonymousClass3 */
                        final /* synthetic */ AnonymousClass1 this$0;

                        {
                            this.this$0 = r1;
                        }

                        @NotNull
                        public final Observable<Unit> apply(@NotNull Pattern pattern) {
                            Intrinsics.checkParameterIsNotNull(pattern, "it");
                            ImageEditorService imageEditorService = this.this$0.this$0.this$0.getImageEditorService();
                            Bitmap decodeFile = BitmapFactory.decodeFile(pattern.getSrc());
                            Intrinsics.checkExpressionValueIsNotNull(decodeFile, "BitmapFactory.decodeFile(it.src)");
                            return imageEditorService.uploadBitmap(decodeFile);
                        }
                    }).subscribe(AnonymousClass4.INSTANCE, AnonymousClass5.INSTANCE);
                }
            }, new Function1<AlertBuilder<? extends DialogInterface>, Unit>(this) {
                /* class com.liber8tech.tago.android.activity.MainActivity$onResume$3.AnonymousClass2 */
                final /* synthetic */ MainActivity$onResume$3 this$0;

                {
                    this.this$0 = r1;
                }

                /* Return type fixed from 'java.lang.Object' to match base method */
                /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AlertBuilder<? extends DialogInterface> alertBuilder) {
                    invoke(alertBuilder);
                    return Unit.INSTANCE;
                }

                public final void invoke(@NotNull AlertBuilder<? extends DialogInterface> alertBuilder) {
                    Intrinsics.checkParameterIsNotNull(alertBuilder, "it");
                    this.this$0.this$0.getRuntimeConfig().removeToken();
                    this.this$0.this$0.getRuntimeConfig().removeUserId();
                    this.this$0.this$0.getImageEditorService().deletePurchasedPattern();
                    this.this$0.this$0.getTagoService().deleteAll().observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer<Boolean>(this) {
                        /* class com.liber8tech.tago.android.activity.MainActivity$onResume$3.AnonymousClass2.AnonymousClass1 */
                        final /* synthetic */ AnonymousClass2 this$0;

                        {
                            this.this$0 = r1;
                        }

                        public final void accept(Boolean bool) {
                            AuthValidationKt.logoutSuccess(this.this$0.this$0.this$0);
                        }
                    }, new Consumer<Throwable>(this) {
                        /* class com.liber8tech.tago.android.activity.MainActivity$onResume$3.AnonymousClass2.AnonymousClass2 */
                        final /* synthetic */ AnonymousClass2 this$0;

                        {
                            this.this$0 = r1;
                        }

                        public final void accept(Throwable th) {
                            AuthValidationKt.showError(this.this$0.this$0.this$0, th);
                            Timber.e(th);
                        }
                    });
                }
            });
        }
    }
}
