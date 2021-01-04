package com.liber8tech.tago.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import com.facebook.share.internal.ShareConstants;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.model.CreatedPattern;
import com.liber8tech.tago.model.Pack;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.util.RuntimeConfig;
import io.reactivex.Observable;
import io.reactivex.Single;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.zip.ZipInputStream;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import net.glxn.qrgen.android.MatrixToImageWriter;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Retrofit;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0002J(\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J \u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001aH\u0002J\u0006\u0010 \u001a\u00020!J\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#2\u0006\u0010%\u001a\u00020&J\u0006\u0010'\u001a\u00020!J\f\u0010(\u001a\b\u0012\u0004\u0012\u00020$0)J\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020$0)2\u0006\u0010+\u001a\u00020,J\u0018\u0010-\u001a\u00020$2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0016H\u0002J\u0012\u00101\u001a\u0004\u0018\u00010\u00182\u0006\u00102\u001a\u00020\u001aH\u0002J\u0012\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000205040#J\u0012\u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0016040)J4\u00107\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020504080)2\u0006\u0010\u0004\u001a\u00020\u00052\f\u00109\u001a\b\u0012\u0004\u0012\u00020\u001604J \u0010:\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001aH\u0002J,\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020$0)2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u001a2\u0006\u0010>\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020\u001aJ$\u0010@\u001a\b\u0012\u0004\u0012\u00020$0)2\u0006\u0010A\u001a\u00020B2\u0006\u0010>\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020\u001aJ\u0014\u0010C\u001a\b\u0012\u0004\u0012\u00020$0)2\u0006\u0010\u001d\u001a\u00020\nJ0\u0010D\u001a\b\u0012\u0004\u0012\u00020$0)2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010F2\n\b\u0002\u0010G\u001a\u0004\u0018\u00010F2\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\nJ\u0014\u0010I\u001a\b\u0012\u0004\u0012\u00020$0)2\u0006\u0010J\u001a\u00020\u0016J \u0010K\u001a\b\u0012\u0004\u0012\u00020$0)*\b\u0012\u0004\u0012\u00020L0)2\u0006\u0010M\u001a\u00020\u0016H\u0002R(\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\t\u001a\u0004\u0018\u00010\n@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000¨\u0006N"}, d2 = {"Lcom/liber8tech/tago/service/ImageEditorService;", "", "retrofit", "Lretrofit2/Retrofit;", "context", "Landroid/content/Context;", "runtimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "(Lretrofit2/Retrofit;Landroid/content/Context;Lcom/liber8tech/tago/util/RuntimeConfig;)V", "value", "Landroid/graphics/Bitmap;", "cameraImage", "getCameraImage", "()Landroid/graphics/Bitmap;", "setCameraImage", "(Landroid/graphics/Bitmap;)V", "imageApi", "Lcom/liber8tech/tago/service/ImageApi;", "addQRBackground", "qr", "barcodeToBitmap", "contents", "", "format", "Lcom/google/zxing/BarcodeFormat;", "img_width", "", "img_height", "centerCropGrayscale", ShareConstants.FEED_SOURCE_PARAM, "newHeight", "newWidth", "deleteCreatedPattern", "", "deletePattern", "Lio/reactivex/Single;", "", "createdPattern", "Lcom/liber8tech/tago/model/CreatedPattern;", "deletePurchasedPattern", "downloadCreatedImages", "Lio/reactivex/Observable;", "downloadPackZip", "pack", "Lcom/liber8tech/tago/model/Pack;", "extractFile", "zipIn", "Ljava/util/zip/ZipInputStream;", "filePath", "getBarcodeType", "type", "getCreatedPatternList", "", "Lcom/liber8tech/tago/model/Pattern;", "getLocalPurchasePatternId", "getPurchasedPattern", "Lkotlin/Pair;", "purchasedPattern", "resizedGrayscale", "jpegBytes", "", "rotation", "targetWidth", "targetHeight", "setGalleryImage", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", "uploadBitmap", "uploadImage", "leftTop", "Landroid/graphics/PointF;", "rightBottom", "src", "uploadQrCodeImage", ShareConstants.WEB_DIALOG_PARAM_DATA, "storeDownloadedImage", "Lokhttp3/ResponseBody;", "id", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService {
    @Nullable
    private Bitmap cameraImage;
    private final Context context;
    private final ImageApi imageApi;
    private final RuntimeConfig runtimeConfig;

    @Inject
    public ImageEditorService(@NotNull Retrofit retrofit, @NotNull Context context2, @NotNull RuntimeConfig runtimeConfig2) {
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Intrinsics.checkParameterIsNotNull(context2, "context");
        Intrinsics.checkParameterIsNotNull(runtimeConfig2, "runtimeConfig");
        this.context = context2;
        this.runtimeConfig = runtimeConfig2;
        Object create = retrofit.create(ImageApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(ImageApi::class.java)");
        this.imageApi = (ImageApi) create;
    }

    @Nullable
    public final Bitmap getCameraImage() {
        return this.cameraImage;
    }

    public final void setCameraImage(@Nullable Bitmap bitmap) {
        if (bitmap != null) {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), (bitmap.getHeight() * 2) - ((int) Constants.INSTANCE.getTagoCameraGapHeightPx()), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            paint.setDither(true);
            canvas.drawBitmap(bitmap, 0.0f, (((float) 0) + (((float) bitmap.getHeight()) / 2.0f)) - ((float) (((int) Constants.INSTANCE.getTagoCameraGapHeightPx()) / 2)), paint);
            this.cameraImage = createBitmap;
        }
    }

    @NotNull
    public final Observable<Unit> setCameraImage(@NotNull byte[] bArr, int i, int i2, int i3) {
        Intrinsics.checkParameterIsNotNull(bArr, "jpegBytes");
        Observable<Unit> map = Observable.just(bArr).map(new ImageEditorService$setCameraImage$1(this, bArr, i, i3, i2)).map(ImageEditorService$setCameraImage$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "Observable.just(jpegByte…= bitmap\n  }.map { Unit }");
        return map;
    }

    @NotNull
    public final Observable<Unit> setGalleryImage(@NotNull Uri uri, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(uri, ShareConstants.MEDIA_URI);
        Observable<Unit> map = Observable.just(Unit.INSTANCE).map(new ImageEditorService$setGalleryImage$1(this, uri, i2, i)).map(ImageEditorService$setGalleryImage$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "Observable.just(Unit).ma…edBitmap\n  }.map { Unit }");
        return map;
    }

    @NotNull
    public final Observable<Unit> uploadQrCodeImage(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, ShareConstants.WEB_DIALOG_PARAM_DATA);
        Observable<Unit> flatMap = Observable.just(str).map(new ImageEditorService$uploadQrCodeImage$1(this)).flatMap(new ImageEditorService$uploadQrCodeImage$2(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "Observable.just(data)\n  …{ uploadImage(src = it) }");
        return flatMap;
    }

    private final BarcodeFormat getBarcodeType(int i) {
        if (i == 1) {
            return BarcodeFormat.CODE_128;
        }
        if (i == 2048) {
            return BarcodeFormat.PDF_417;
        }
        if (i != 4096) {
            return null;
        }
        return BarcodeFormat.AZTEC;
    }

    private final Bitmap barcodeToBitmap(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EncodeHintType.CHARACTER_SET, "UTF-8");
        Bitmap bitmap = MatrixToImageWriter.toBitmap(new MultiFormatWriter().encode(str, barcodeFormat, i, i2, linkedHashMap));
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "bitmap");
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight() * 2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "Bitmap.createBitmap(width, height, config)");
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        Paint paint2 = new Paint();
        paint2.setColor(-1);
        canvas.drawPaint(paint2);
        canvas.drawBitmap(bitmap, 0.0f, (float) (bitmap.getHeight() / 2), paint);
        return createBitmap;
    }

    @NotNull
    public final Observable<Unit> uploadBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(bitmap, ShareConstants.FEED_SOURCE_PARAM);
        Observable<Unit> map = Observable.just(bitmap).map(new ImageEditorService$uploadBitmap$1(this)).flatMap(new ImageEditorService$uploadBitmap$2(this)).flatMap(new ImageEditorService$uploadBitmap$3(this)).map(new ImageEditorService$uploadBitmap$4(this));
        Intrinsics.checkExpressionValueIsNotNull(map, "Observable.just(source)\n….close()\n      Unit\n    }");
        return map;
    }

    @NotNull
    public static /* synthetic */ Observable uploadImage$default(ImageEditorService imageEditorService, PointF pointF, PointF pointF2, Bitmap bitmap, int i, Object obj) {
        if ((i & 1) != 0) {
            pointF = null;
        }
        if ((i & 2) != 0) {
            pointF2 = null;
        }
        if ((i & 4) != 0) {
            bitmap = imageEditorService.cameraImage;
        }
        return imageEditorService.uploadImage(pointF, pointF2, bitmap);
    }

    @NotNull
    public final Observable<Unit> uploadImage(@Nullable PointF pointF, @Nullable PointF pointF2, @Nullable Bitmap bitmap) {
        Observable<Unit> flatMap = Observable.just(bitmap).map(new ImageEditorService$uploadImage$1(this, bitmap, pointF, pointF2)).flatMap(new ImageEditorService$uploadImage$2(this)).flatMap(new ImageEditorService$uploadImage$3(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "Observable.just(src)\n   …wnloadedImage(id)\n      }");
        return flatMap;
    }

    @NotNull
    public final Single<List<Pattern>> getCreatedPatternList() {
        Single<List<Pattern>> onErrorResumeNext = Single.just(true).map(new ImageEditorService$getCreatedPatternList$1(this)).onErrorResumeNext(ImageEditorService$getCreatedPatternList$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(onErrorResumeNext, "Single.just(true)\n      …{ Single.just(listOf()) }");
        return onErrorResumeNext;
    }

    @NotNull
    public final Observable<Unit> downloadPackZip(@NotNull Pack pack) {
        Intrinsics.checkParameterIsNotNull(pack, "pack");
        Observable<Unit> create = Observable.create(new ImageEditorService$downloadPackZip$1(this, pack));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create { emit…Timber.w(e)\n      }\n    }");
        return create;
    }

    /* access modifiers changed from: private */
    public final void extractFile(ZipInputStream zipInputStream, String str) throws IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
        byte[] bArr = new byte[4096];
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = 0;
        while (((Number) new ImageEditorService$extractFile$1(intRef, zipInputStream, bArr).invoke()).intValue() != -1) {
            bufferedOutputStream.write(bArr, 0, intRef.element);
        }
        bufferedOutputStream.close();
    }

    @NotNull
    public final Single<Unit> deletePattern(@NotNull CreatedPattern createdPattern) {
        Intrinsics.checkParameterIsNotNull(createdPattern, "createdPattern");
        Single<Unit> map = Single.just(createdPattern).flatMap(new ImageEditorService$deletePattern$1(this)).map(new ImageEditorService$deletePattern$2(createdPattern));
        Intrinsics.checkExpressionValueIsNotNull(map, "Single.just(createdPatte…elete()\n        }\n      }");
        return map;
    }

    @NotNull
    public final Observable<List<String>> getLocalPurchasePatternId() {
        List list;
        List list2;
        String[] list3 = new File(this.context.getFilesDir(), Constants.INSTANCE.getPurchasedFolderPath()).list();
        if (list3 == null || (list2 = ArraysKt.toList(list3)) == null || (list = CollectionsKt.reversed(list2)) == null) {
            list = CollectionsKt.emptyList();
        }
        Observable<List<String>> just = Observable.just(list);
        Intrinsics.checkExpressionValueIsNotNull(just, "Observable.just(File(con…eversed() ?: emptyList())");
        return just;
    }

    @NotNull
    public final Observable<Pair<String, List<Pattern>>> getPurchasedPattern(@NotNull Context context2, @NotNull List<String> list) {
        Intrinsics.checkParameterIsNotNull(context2, "context");
        Intrinsics.checkParameterIsNotNull(list, "purchasedPattern");
        Observable<Pair<String, List<Pattern>>> map = Observable.fromIterable(list).map(new ImageEditorService$getPurchasedPattern$1(this, context2));
        Intrinsics.checkExpressionValueIsNotNull(map, "Observable.fromIterable(…List())\n        }\n      }");
        return map;
    }

    public final boolean deletePurchasedPattern() {
        return FilesKt.deleteRecursively(new File(this.context.getFilesDir(), Constants.INSTANCE.getPurchasedFolderPath()));
    }

    public final boolean deleteCreatedPattern() {
        return FilesKt.deleteRecursively(new File(this.context.getFilesDir(), this.runtimeConfig.getUserId()));
    }

    /* access modifiers changed from: private */
    public final Bitmap centerCropGrayscale(Bitmap bitmap, int i, int i2) {
        float f = (float) i2;
        float width = (float) bitmap.getWidth();
        float f2 = (float) i;
        float height = (float) bitmap.getHeight();
        float max = Math.max(f / width, f2 / height);
        float f3 = width * max;
        float f4 = max * height;
        float f5 = (float) 2;
        float f6 = (f - f3) / f5;
        float f7 = (f2 - f4) / f5;
        RectF rectF = new RectF(f6, f7, f3 + f6, f4 + f7);
        Bitmap createBitmap = Bitmap.createBitmap(i2, i, bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, (Rect) null, rectF, paint);
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "dest");
        return createBitmap;
    }

    /* access modifiers changed from: private */
    public final Bitmap resizedGrayscale(Bitmap bitmap, int i, int i2) {
        float width = (float) bitmap.getWidth();
        float f = ((float) i2) / width;
        float f2 = (float) i;
        float height = (float) bitmap.getHeight();
        float f3 = f2 / height;
        if (f3 <= f) {
            f = f3;
        }
        float f4 = width * f;
        float f5 = f * height;
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) f4, (int) f5, false);
        Bitmap createBitmap = Bitmap.createBitmap(i2, i, bitmap.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(createScaledBitmap, 0.0f, f5 < f2 ? ((float) (i / 2)) - (f5 / ((float) 2)) : 0.0f, paint);
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "dest");
        return createBitmap;
    }

    @NotNull
    public final Observable<Unit> downloadCreatedImages() {
        Observable<R> flatMap = this.imageApi.getImages().flatMap(ImageEditorService$downloadCreatedImages$1.INSTANCE).flatMap(new ImageEditorService$downloadCreatedImages$2(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "imageApi.getImages()\n   …toreDownloadedImage(id) }");
        return flatMap;
    }

    /* access modifiers changed from: private */
    public final Observable<Unit> storeDownloadedImage(@NotNull Observable<ResponseBody> observable, String str) {
        Observable<R> map = observable.map(new ImageEditorService$storeDownloadedImage$1(this, str));
        Intrinsics.checkExpressionValueIsNotNull(map, "map {\n      val userDir ….close()\n      Unit\n    }");
        return map;
    }

    /* access modifiers changed from: private */
    public final Bitmap addQRBackground(Bitmap bitmap) {
        Bitmap copy = BitmapFactory.decodeStream(this.context.getAssets().open("qr_background_image.png")).copy(Bitmap.Config.ARGB_8888, true);
        Canvas canvas = new Canvas(copy);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        canvas.drawBitmap(copy, 0.0f, 0.0f, paint);
        Intrinsics.checkExpressionValueIsNotNull(copy, "mutableBackground");
        canvas.drawBitmap(bitmap, (float) ((copy.getWidth() / 2) - (bitmap.getWidth() / 2)), 0.0f, paint);
        return copy;
    }
}
