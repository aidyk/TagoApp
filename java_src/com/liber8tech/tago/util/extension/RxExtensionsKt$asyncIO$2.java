package com.liber8tech.tago.util.extension;

import com.crashlytics.android.Crashlytics;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "T", "it", "", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: RxExtensions.kt */
public final class RxExtensionsKt$asyncIO$2<T> implements Consumer<Throwable> {
    public static final RxExtensionsKt$asyncIO$2 INSTANCE = new RxExtensionsKt$asyncIO$2();

    RxExtensionsKt$asyncIO$2() {
    }

    public final void accept(Throwable th) {
        Crashlytics.logException(th);
    }
}
