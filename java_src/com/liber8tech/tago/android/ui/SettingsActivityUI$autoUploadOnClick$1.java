package com.liber8tech.tago.android.ui;

import android.widget.CompoundButton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/widget/CompoundButton;", "<anonymous parameter 1>", "", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: SettingsActivityUI.kt */
public final class SettingsActivityUI$autoUploadOnClick$1 extends Lambda implements Function2<CompoundButton, Boolean, Unit> {
    public static final SettingsActivityUI$autoUploadOnClick$1 INSTANCE = new SettingsActivityUI$autoUploadOnClick$1();

    SettingsActivityUI$autoUploadOnClick$1() {
        super(2);
    }

    public final void invoke(@Nullable CompoundButton compoundButton, boolean z) {
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(CompoundButton compoundButton, Boolean bool) {
        invoke(compoundButton, bool.booleanValue());
        return Unit.INSTANCE;
    }
}
