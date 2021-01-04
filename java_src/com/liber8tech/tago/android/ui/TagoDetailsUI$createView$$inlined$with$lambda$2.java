package com.liber8tech.tago.android.ui;

import android.view.View;
import com.liber8tech.tago.android.view.TagoButton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0007"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke", "com/liber8tech/tago/android/ui/TagoDetailsUI$createView$1$root$1$6$1", "com/liber8tech/tago/android/ui/TagoDetailsUI$$special$$inlined$tagoButton$lambda$1", "com/liber8tech/tago/android/ui/TagoDetailsUI$$special$$inlined$verticalLayout$lambda$2"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoDetailsUI.kt */
public final class TagoDetailsUI$createView$$inlined$with$lambda$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ TagoButton $this_tagoButton;
    final /* synthetic */ TagoDetailsUI this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    TagoDetailsUI$createView$$inlined$with$lambda$2(TagoButton tagoButton, TagoDetailsUI tagoDetailsUI) {
        super(1);
        this.$this_tagoButton = tagoButton;
        this.this$0 = tagoDetailsUI;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        this.this$0.getDeleteOnClick().invoke(this.$this_tagoButton);
    }
}
