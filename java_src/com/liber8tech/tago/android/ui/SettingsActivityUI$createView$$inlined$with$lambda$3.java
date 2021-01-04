package com.liber8tech.tago.android.ui;

import android.widget.CompoundButton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¾\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006¨\u0006\u000b"}, d2 = {"<anonymous>", "", "buttonView", "Landroid/widget/CompoundButton;", "isChecked", "", "invoke", "com/liber8tech/tago/android/ui/SettingsActivityUI$createView$1$root$1$1$3$3$1", "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$switch$lambda$1", "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$relativeLayout$lambda$1", "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$verticalLayout$lambda$5", "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$scrollView$lambda$3"}, k = 3, mv = {1, 1, 13})
/* compiled from: SettingsActivityUI.kt */
public final class SettingsActivityUI$createView$$inlined$with$lambda$3 extends Lambda implements Function2<CompoundButton, Boolean, Unit> {
    final /* synthetic */ AnkoContext $this_with$inlined;
    final /* synthetic */ SettingsActivityUI this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    SettingsActivityUI$createView$$inlined$with$lambda$3(AnkoContext ankoContext, SettingsActivityUI settingsActivityUI) {
        super(2);
        this.$this_with$inlined = ankoContext;
        this.this$0 = settingsActivityUI;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(CompoundButton compoundButton, Boolean bool) {
        invoke(compoundButton, bool.booleanValue());
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable CompoundButton compoundButton, boolean z) {
        this.this$0.getAutoUploadOnClick().invoke(compoundButton, Boolean.valueOf(z));
    }
}
