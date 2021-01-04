package com.liber8tech.tago.android.activity;

import android.graphics.Bitmap;
import android.util.SparseArray;
import android.view.View;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.barcode.Barcode;
import com.google.android.gms.vision.barcode.BarcodeDetector;
import com.liber8tech.tago.R;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;
import io.reactivex.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.anko.collections.SparseArraySequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 13})
@DebugMetadata(c = "com/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1", f = "AttachmentActivity.kt", i = {}, l = {91}, m = "invokeSuspend", n = {}, s = {})
/* compiled from: AttachmentActivity.kt */
public final class AttachmentActivity$readQRImage$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ byte[] $bytes;
    final /* synthetic */ List $qrList;
    int label;
    private CoroutineScope p$;
    final /* synthetic */ AttachmentActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    AttachmentActivity$readQRImage$1(AttachmentActivity attachmentActivity, byte[] bArr, List list, Continuation continuation) {
        super(2, continuation);
        this.this$0 = attachmentActivity;
        this.$bytes = bArr;
        this.$qrList = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "completion");
        AttachmentActivity$readQRImage$1 attachmentActivity$readQRImage$1 = new AttachmentActivity$readQRImage$1(this.this$0, this.$bytes, this.$qrList, continuation);
        attachmentActivity$readQRImage$1.p$ = (CoroutineScope) obj;
        return attachmentActivity$readQRImage$1;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AttachmentActivity$readQRImage$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else if (!(obj instanceof Result.Failure)) {
            CoroutineScope coroutineScope = this.p$;
            PdfiumCore pdfiumCore = new PdfiumCore(this.this$0);
            PdfDocument newDocument = pdfiumCore.newDocument(this.$bytes);
            for (int i = 0; pdfiumCore.getPageCount(newDocument) != i; i++) {
                pdfiumCore.openPage(newDocument, i);
                int pageWidth = pdfiumCore.getPageWidth(newDocument, i);
                int pageHeight = pdfiumCore.getPageHeight(newDocument, i);
                Bitmap createBitmap = Bitmap.createBitmap(pageWidth, pageHeight, Bitmap.Config.ARGB_8888);
                pdfiumCore.renderPageBitmap(newDocument, createBitmap, i, 0, 0, pageWidth, pageHeight);
                SparseArray<Barcode> detect = new BarcodeDetector.Builder(this.this$0).build().detect(new Frame.Builder().setBitmap(createBitmap).build());
                Intrinsics.checkExpressionValueIsNotNull(detect, "BarcodeDetector.Builder(…                        )");
                CollectionsKt.addAll(this.$qrList, new SparseArraySequence(detect));
            }
            this.this$0.runOnUiThread(new Runnable(this) {
                /* class com.liber8tech.tago.android.activity.AttachmentActivity$readQRImage$1.AnonymousClass2 */
                final /* synthetic */ AttachmentActivity$readQRImage$1 this$0;

                {
                    this.this$0 = r1;
                }

                public final void run() {
                    if (this.this$0.$qrList.isEmpty()) {
                        AttachmentActivity attachmentActivity = this.this$0.this$0;
                        View findViewById = this.this$0.this$0.findViewById(16908290);
                        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
                        ContextExtensionKt.tintedSnack(attachmentActivity, R.string.empty_qr, R.string.go_back, findViewById, new Function1<View, Unit>(this) {
                            /* class com.liber8tech.tago.android.activity.AttachmentActivity$readQRImage$1.AnonymousClass2.AnonymousClass1 */
                            final /* synthetic */ AnonymousClass2 this$0;

                            {
                                this.this$0 = r1;
                            }

                            /* Return type fixed from 'java.lang.Object' to match base method */
                            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                                invoke(view);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(@NotNull View view) {
                                Intrinsics.checkParameterIsNotNull(view, "it");
                                this.this$0.this$0.this$0.onBackPressed();
                            }
                        }, -2);
                        return;
                    }
                    if (this.this$0.$qrList.size() > 1) {
                        AttachmentActivity.access$getUi$p(this.this$0.this$0).getMorePages().setVisibility(0);
                    }
                    ImageEditorService imageEditorService = this.this$0.this$0.getImageEditorService();
                    String str = ((Barcode) this.this$0.$qrList.get(0)).rawValue;
                    Intrinsics.checkExpressionValueIsNotNull(str, "barcode.rawValue");
                    this.this$0.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(imageEditorService.uploadQrCodeImage(str)).subscribe(new Consumer<Unit>(this) {
                        /* class com.liber8tech.tago.android.activity.AttachmentActivity$readQRImage$1.AnonymousClass2.AnonymousClass2 */
                        final /* synthetic */ AnonymousClass2 this$0;

                        {
                            this.this$0 = r1;
                        }

                        public final void accept(Unit unit) {
                            ContextExtensionKt.showCreatedMain(this.this$0.this$0.this$0);
                            this.this$0.this$0.this$0.finishAffinity();
                        }
                    }, new Consumer<Throwable>(this) {
                        /* class com.liber8tech.tago.android.activity.AttachmentActivity$readQRImage$1.AnonymousClass2.AnonymousClass3 */
                        final /* synthetic */ AnonymousClass2 this$0;

                        {
                            this.this$0 = r1;
                        }

                        public final void accept(Throwable th) {
                            AttachmentActivity attachmentActivity = this.this$0.this$0.this$0;
                            View findViewById = this.this$0.this$0.this$0.findViewById(16908290);
                            Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
                            ContextExtensionKt.tintedSnack(attachmentActivity, R.string.something_went_wrong, R.string.go_back, findViewById, new Function1<View, Unit>(this) {
                                /* class com.liber8tech.tago.android.activity.AttachmentActivity$readQRImage$1.AnonymousClass2.AnonymousClass3.AnonymousClass1 */
                                final /* synthetic */ AnonymousClass3 this$0;

                                {
                                    this.this$0 = r1;
                                }

                                /* Return type fixed from 'java.lang.Object' to match base method */
                                /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                                    invoke(view);
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(@NotNull View view) {
                                    Intrinsics.checkParameterIsNotNull(view, "it");
                                    this.this$0.this$0.this$0.this$0.onBackPressed();
                                }
                            }, -2);
                            Timber.e(th);
                        }
                    }));
                }
            });
            return Unit.INSTANCE;
        } else {
            throw ((Result.Failure) obj).exception;
        }
    }
}
