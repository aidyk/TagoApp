package com.liber8tech.tago.android.activity;

import android.widget.CompoundButton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/widget/CompoundButton;", "isChecked", "", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: SettingsActivity.kt */
final class SettingsActivity$onCreate$7 extends Lambda implements Function2<CompoundButton, Boolean, Unit> {
    final /* synthetic */ SettingsActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    SettingsActivity$onCreate$7(SettingsActivity settingsActivity) {
        super(2);
        this.this$0 = settingsActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(CompoundButton compoundButton, Boolean bool) {
        invoke(compoundButton, bool.booleanValue());
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable CompoundButton compoundButton, boolean z) {
        this.this$0.getRuntimeConfig().setAutoUpload(z);
    }
}
