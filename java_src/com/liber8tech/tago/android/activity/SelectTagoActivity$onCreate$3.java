package com.liber8tech.tago.android.activity;

import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
final class SelectTagoActivity$onCreate$3<T> implements Consumer<Throwable> {
    public static final SelectTagoActivity$onCreate$3 INSTANCE = new SelectTagoActivity$onCreate$3();

    SelectTagoActivity$onCreate$3() {
    }

    public final void accept(Throwable th) {
        Timber.e(th);
    }
}
