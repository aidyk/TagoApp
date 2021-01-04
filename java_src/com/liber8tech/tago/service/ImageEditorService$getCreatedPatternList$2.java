package com.liber8tech.tago.service;

import com.liber8tech.tago.model.Pattern;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/Single;", "", "Lcom/liber8tech/tago/model/Pattern;", "kotlin.jvm.PlatformType", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$getCreatedPatternList$2<T, R> implements Function<Throwable, SingleSource<? extends List<? extends Pattern>>> {
    public static final ImageEditorService$getCreatedPatternList$2 INSTANCE = new ImageEditorService$getCreatedPatternList$2();

    ImageEditorService$getCreatedPatternList$2() {
    }

    public final Single<List<Pattern>> apply(@NotNull Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "it");
        return Single.just(CollectionsKt.emptyList());
    }
}
