package com.liber8tech.tago.service;

import com.liber8tech.tago.Constants;
import com.liber8tech.tago.model.Pack;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00010\u00010\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "emitter", "Lio/reactivex/ObservableEmitter;", "kotlin.jvm.PlatformType", "subscribe"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$downloadPackZip$1<T> implements ObservableOnSubscribe<T> {
    final /* synthetic */ Pack $pack;
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$downloadPackZip$1(ImageEditorService imageEditorService, Pack pack) {
        this.this$0 = imageEditorService;
        this.$pack = pack;
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public final void subscribe(@NotNull ObservableEmitter<Unit> observableEmitter) {
        Intrinsics.checkParameterIsNotNull(observableEmitter, "emitter");
        try {
            File file = new File(this.this$0.context.getFilesDir(), Constants.INSTANCE.getPurchasedFolderPath());
            if (!file.exists()) {
                file.mkdir();
            }
            File file2 = new File(file.getPath(), this.$pack.getId());
            if (!file2.exists()) {
                file2.mkdir();
                Response execute = new OkHttpClient.Builder().build().newCall(new Request.Builder().url(this.$pack.getZipUrl()).build()).execute();
                Intrinsics.checkExpressionValueIsNotNull(execute, "response");
                if (execute.isSuccessful()) {
                    ResponseBody body = execute.body();
                    ZipInputStream zipInputStream = new ZipInputStream(body != null ? body.byteStream() : null);
                    for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                        File file3 = new File(file2.getPath() + File.separator + nextEntry.getName());
                        ImageEditorService imageEditorService = this.this$0;
                        String path = file3.getPath();
                        Intrinsics.checkExpressionValueIsNotNull(path, "file.path");
                        imageEditorService.extractFile(zipInputStream, path);
                        this.this$0.runtimeConfig.savePack(this.$pack.getId(), this.$pack.getName());
                    }
                    Timber.d("::zip save success path:" + file2.getPath(), new Object[0]);
                    observableEmitter.onNext(Unit.INSTANCE);
                    observableEmitter.onComplete();
                    return;
                }
                observableEmitter.onError(new IOException());
                return;
            }
            observableEmitter.onNext(Unit.INSTANCE);
            observableEmitter.onComplete();
        } catch (Exception e) {
            Timber.w(e);
        }
    }
}
