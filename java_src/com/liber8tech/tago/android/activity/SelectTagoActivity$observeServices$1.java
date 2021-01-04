package com.liber8tech.tago.android.activity;

import android.support.design.widget.Snackbar;
import android.view.View;
import com.facebook.internal.ServerProtocol;
import com.liber8tech.tago.R;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Pair;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004 \u0005*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", ServerProtocol.DIALOG_PARAM_STATE, "Lkotlin/Pair;", "", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
public final class SelectTagoActivity$observeServices$1<T> implements Consumer<Pair<? extends Boolean, ? extends Boolean>> {
    final /* synthetic */ Snackbar $snackbar;
    final /* synthetic */ SelectTagoActivity this$0;

    SelectTagoActivity$observeServices$1(SelectTagoActivity selectTagoActivity, Snackbar snackbar) {
        this.this$0 = selectTagoActivity;
        this.$snackbar = snackbar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // io.reactivex.functions.Consumer
    public /* bridge */ /* synthetic */ void accept(Pair<? extends Boolean, ? extends Boolean> pair) {
        accept((Pair<Boolean, Boolean>) pair);
    }

    public final void accept(final Pair<Boolean, Boolean> pair) {
        if (!pair.getFirst().booleanValue() || !pair.getSecond().booleanValue()) {
            this.this$0.ui.setDim(true);
            this.$snackbar.setText(pair.getFirst().booleanValue() ? R.string.bt_turned_off : R.string.location_turned_off);
            this.$snackbar.setAction(17039370, new View.OnClickListener(this) {
                /* class com.liber8tech.tago.android.activity.SelectTagoActivity$observeServices$1.AnonymousClass1 */
                final /* synthetic */ SelectTagoActivity$observeServices$1 this$0;

                {
                    this.this$0 = r1;
                }

                public final void onClick(View view) {
                    if (((Boolean) pair.getFirst()).booleanValue()) {
                        this.this$0.this$0.requestBleDialog();
                    } else {
                        this.this$0.this$0.requestLocationDialog();
                    }
                }
            });
            this.$snackbar.show();
            return;
        }
        this.this$0.ui.setDim(false);
        this.$snackbar.dismiss();
    }
}
