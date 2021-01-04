package com.liber8tech.tago.android.ui;

import android.view.View;
import com.liber8tech.tago.android.view.SettingsRowItem;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\b"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke", "com/liber8tech/tago/android/ui/SettingsActivityUI$createView$1$root$1$1$6$1", "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$settingsRowItem$lambda$1", "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$verticalLayout$lambda$6", "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$scrollView$lambda$4"}, k = 3, mv = {1, 1, 13})
/* compiled from: SettingsActivityUI.kt */
public final class SettingsActivityUI$createView$$inlined$with$lambda$4 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ SettingsRowItem $this_settingsRowItem;
    final /* synthetic */ AnkoContext $this_with$inlined;
    final /* synthetic */ SettingsActivityUI this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    SettingsActivityUI$createView$$inlined$with$lambda$4(SettingsRowItem settingsRowItem, AnkoContext ankoContext, SettingsActivityUI settingsActivityUI) {
        super(1);
        this.$this_settingsRowItem = settingsRowItem;
        this.$this_with$inlined = ankoContext;
        this.this$0 = settingsActivityUI;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        this.this$0.getKioskOnClick().invoke(this.$this_settingsRowItem);
    }
}
