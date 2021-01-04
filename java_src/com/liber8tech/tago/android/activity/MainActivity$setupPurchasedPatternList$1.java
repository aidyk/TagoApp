package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Pattern;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0004H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lkotlin/Pair;", "", "", "Lcom/liber8tech/tago/model/Pattern;", "it", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivity$setupPurchasedPatternList$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$setupPurchasedPatternList$1(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @NotNull
    public final Observable<Pair<String, List<Pattern>>> apply(@NotNull List<String> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        return this.this$0.getImageEditorService().getPurchasedPattern(this.this$0, list);
    }
}
