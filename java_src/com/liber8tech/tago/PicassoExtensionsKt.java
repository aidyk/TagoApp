package com.liber8tech.tago;

import android.view.View;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"loadFile", "Lcom/liber8tech/tago/PicassoRequest;", "Landroid/view/View;", "file", "Ljava/io/File;", "loadUrl", "url", "", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: PicassoExtensions.kt */
public final class PicassoExtensionsKt {
    @NotNull
    public static final PicassoRequest loadUrl(@NotNull View view, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(str, "url");
        Picasso picasso = Picasso.get();
        Intrinsics.checkExpressionValueIsNotNull(picasso, "Picasso.get()");
        RequestCreator load = picasso.load(str);
        Intrinsics.checkExpressionValueIsNotNull(load, "requestCreator");
        return new PicassoRequest(view, load);
    }

    @NotNull
    public static final PicassoRequest loadFile(@NotNull View view, @NotNull File file) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(file, "file");
        Picasso picasso = Picasso.get();
        Intrinsics.checkExpressionValueIsNotNull(picasso, "Picasso.get()");
        RequestCreator load = picasso.load(file);
        Intrinsics.checkExpressionValueIsNotNull(load, "requestCreator");
        return new PicassoRequest(view, load);
    }
}
