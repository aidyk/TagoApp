package com.liber8tech.tago.service;

import android.content.Context;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.model.PurchasedPattern;
import com.liber8tech.tago.util.RuntimeConfig;
import io.reactivex.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00012\u0006\u0010\u0005\u001a\u00020\u0002H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "", "", "Lcom/liber8tech/tago/model/Pattern;", "it", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$getPurchasedPattern$1<T, R> implements Function<T, R> {
    final /* synthetic */ Context $context;
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$getPurchasedPattern$1(ImageEditorService imageEditorService, Context context) {
        this.this$0 = imageEditorService;
        this.$context = context;
    }

    @NotNull
    public final Pair<String, List<Pattern>> apply(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "it");
        File file = new File(this.$context.getFilesDir(), Constants.INSTANCE.getPurchasedFolderPath() + str);
        if (!file.exists()) {
            return new Pair<>("", CollectionsKt.emptyList());
        }
        RuntimeConfig runtimeConfig = this.this$0.runtimeConfig;
        String name = file.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "purchasedDir.name");
        String packName = runtimeConfig.getPackName(name);
        File[] listFiles = file.listFiles();
        Intrinsics.checkExpressionValueIsNotNull(listFiles, "purchasedDir.listFiles()");
        ArrayList arrayList = new ArrayList(listFiles.length);
        for (File file2 : listFiles) {
            RuntimeConfig runtimeConfig2 = this.this$0.runtimeConfig;
            String name2 = file.getName();
            Intrinsics.checkExpressionValueIsNotNull(name2, "purchasedDir.name");
            String packName2 = runtimeConfig2.getPackName(name2);
            StringBuilder sb = new StringBuilder();
            sb.append("file://");
            Intrinsics.checkExpressionValueIsNotNull(file2, "file");
            sb.append(file2.getPath());
            String sb2 = sb.toString();
            String path = file2.getPath();
            Intrinsics.checkExpressionValueIsNotNull(path, "file.path");
            arrayList.add(new PurchasedPattern(packName2, "One of the purchased pattern", sb2, path));
        }
        return new Pair<>(packName, CollectionsKt.toList(arrayList));
    }
}
