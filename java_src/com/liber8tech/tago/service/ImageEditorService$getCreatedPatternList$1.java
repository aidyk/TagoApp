package com.liber8tech.tago.service;

import com.liber8tech.tago.model.CreatedPattern;
import com.liber8tech.tago.model.Pattern;
import io.reactivex.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "Lcom/liber8tech/tago/model/Pattern;", "it", "", "apply", "(Ljava/lang/Boolean;)Ljava/util/List;"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$getCreatedPatternList$1<T, R> implements Function<T, R> {
    final /* synthetic */ ImageEditorService this$0;

    ImageEditorService$getCreatedPatternList$1(ImageEditorService imageEditorService) {
        this.this$0 = imageEditorService;
    }

    @NotNull
    public final List<Pattern> apply(@NotNull Boolean bool) {
        Intrinsics.checkParameterIsNotNull(bool, "it");
        File file = new File(this.this$0.context.getFilesDir(), this.this$0.runtimeConfig.getUserId());
        if (!file.exists()) {
            return CollectionsKt.emptyList();
        }
        File[] listFiles = file.listFiles();
        Intrinsics.checkExpressionValueIsNotNull(listFiles, "userDir.listFiles()");
        // isn't it possible? if the user removes all the patterns in the directory.
        ArrayList arrayList = new ArrayList(listFiles.length);
        for (File file2 : listFiles) {
            StringBuilder sb = new StringBuilder();
            sb.append("file://");
            Intrinsics.checkExpressionValueIsNotNull(file2, "file");
            sb.append(file2.getPath());
            String sb2 = sb.toString();
            String path = file2.getPath();
            Intrinsics.checkExpressionValueIsNotNull(path, "file.path");
            arrayList.add(new CreatedPattern("Custom", "Demo Copy For Demo Pattern Demo.", sb2, path));
        }
        return CollectionsKt.toList(arrayList);
    }
}
