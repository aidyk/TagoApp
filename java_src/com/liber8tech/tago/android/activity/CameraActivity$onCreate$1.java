package com.liber8tech.tago.android.activity;

import android.hardware.Camera;
import android.view.View;
import com.liber8tech.tago.android.camera.CameraRenderer;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: CameraActivity.kt */
public final class CameraActivity$onCreate$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CameraActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    CameraActivity$onCreate$1(CameraActivity cameraActivity) {
        super(1);
        this.this$0 = cameraActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        CameraActivity.access$getUi$p(this.this$0).getProgressBar().setVisibility(0);
        CameraActivity.access$getUi$p(this.this$0).getPreviewImageView().setImageBitmap(CameraActivity.access$getUi$p(this.this$0).getTextureView().getBitmap());
        CameraActivity.access$getUi$p(this.this$0).getPreviewImageView().setVisibility(0);
        CameraActivity.access$getUi$p(this.this$0).getShutterButton().setEnabled(false);
        CameraRenderer access$getCameraRenderer$p = CameraActivity.access$getCameraRenderer$p(this.this$0);
        if (access$getCameraRenderer$p != null) {
            access$getCameraRenderer$p.takePicture(new Camera.PictureCallback(this) {
                /* class com.liber8tech.tago.android.activity.CameraActivity$onCreate$1.AnonymousClass1 */
                final /* synthetic */ CameraActivity$onCreate$1 this$0;

                {
                    this.this$0 = r1;
                }

                public final void onPictureTaken(byte[] bArr, Camera camera) {
                    ImageEditorService imageEditorService = this.this$0.this$0.getImageEditorService();
                    Intrinsics.checkExpressionValueIsNotNull(bArr, "bytes");
                    CameraRenderer access$getCameraRenderer$p = CameraActivity.access$getCameraRenderer$p(this.this$0.this$0);
                    this.this$0.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(imageEditorService.setCameraImage(bArr, access$getCameraRenderer$p != null ? access$getCameraRenderer$p.getRotationAngle() : 0, CameraActivity.access$getUi$p(this.this$0.this$0).getRootLayout().getWidth(), CameraActivity.access$getUi$p(this.this$0.this$0).getRootLayout().getHeight())).subscribe(new Consumer<Unit>(this) {
                        /* class com.liber8tech.tago.android.activity.CameraActivity$onCreate$1.AnonymousClass1.AnonymousClass1 */
                        final /* synthetic */ AnonymousClass1 this$0;

                        {
                            this.this$0 = r1;
                        }

                        public final void accept(Unit unit) {
                            CameraActivity.access$getUi$p(this.this$0.this$0.this$0).getProgressBar().setVisibility(8);
                            AnkoInternals.internalStartActivity(this.this$0.this$0.this$0, ImageEditorActivity.class, new Pair[0]);
                        }
                    }, new Consumer<Throwable>(this) {
                        /* class com.liber8tech.tago.android.activity.CameraActivity$onCreate$1.AnonymousClass1.AnonymousClass2 */
                        final /* synthetic */ AnonymousClass1 this$0;

                        {
                            this.this$0 = r1;
                        }

                        public final void accept(Throwable th) {
                            CameraActivity.access$getUi$p(this.this$0.this$0.this$0).getPreviewImageView().setVisibility(8);
                            CameraActivity.access$getUi$p(this.this$0.this$0.this$0).getProgressBar().setVisibility(8);
                            CameraActivity.access$getUi$p(this.this$0.this$0.this$0).getShutterButton().setEnabled(true);
                            Timber.e(th);
                        }
                    }));
                }
            });
        }
    }
}
