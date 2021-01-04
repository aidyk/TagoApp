package com.liber8tech.tago.android.activity;

import android.graphics.Rect;
import android.view.View;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorActivity.kt */
public final class ImageEditorActivity$onCreate$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ImageEditorActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ImageEditorActivity$onCreate$2(ImageEditorActivity imageEditorActivity) {
        super(1);
        this.this$0 = imageEditorActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        this.this$0.ui.getProgressBar().setVisibility(0);
        this.this$0.ui.getUseButton().setEnabled(false);
        this.this$0.ui.getEditorView().setZoomEnabled(false);
        Rect rect = new Rect();
        this.this$0.ui.getTargetAreaView().getDrawingRect(rect);
        this.this$0.ui.getRootLayout().offsetDescendantRectToMyCoords(this.this$0.ui.getTargetAreaView(), rect);
        this.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(ImageEditorService.uploadImage$default(this.this$0.getImageEditorService(), this.this$0.ui.getEditorView().viewToSourceCoord((float) rect.left, (float) rect.top), this.this$0.ui.getEditorView().viewToSourceCoord((float) rect.right, (float) rect.bottom), null, 4, null)).subscribe(new Consumer<Unit>(this) {
            /* class com.liber8tech.tago.android.activity.ImageEditorActivity$onCreate$2.AnonymousClass1 */
            final /* synthetic */ ImageEditorActivity$onCreate$2 this$0;

            {
                this.this$0 = r1;
            }

            public final void accept(Unit unit) {
                ContextExtensionKt.showCreatedMain(this.this$0.this$0);
            }
        }, new Consumer<Throwable>(this) {
            /* class com.liber8tech.tago.android.activity.ImageEditorActivity$onCreate$2.AnonymousClass2 */
            final /* synthetic */ ImageEditorActivity$onCreate$2 this$0;

            {
                this.this$0 = r1;
            }

            public final void accept(Throwable th) {
                this.this$0.this$0.ui.getProgressBar().setVisibility(8);
                this.this$0.this$0.ui.getUseButton().setEnabled(true);
                this.this$0.this$0.ui.getEditorView().setZoomEnabled(true);
                AuthValidationKt.showError(this.this$0.this$0, th);
                Timber.d(th);
            }
        }));
    }
}
