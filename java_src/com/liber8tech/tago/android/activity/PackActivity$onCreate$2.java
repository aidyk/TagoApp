package com.liber8tech.tago.android.activity;

import android.widget.Button;
import com.android.billingclient.api.SkuDetails;
import com.liber8tech.tago.R;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/android/billingclient/api/SkuDetails;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: PackActivity.kt */
final class PackActivity$onCreate$2<T> implements Consumer<SkuDetails> {
    final /* synthetic */ PackActivity this$0;

    PackActivity$onCreate$2(PackActivity packActivity) {
        this.this$0 = packActivity;
    }

    public final void accept(SkuDetails skuDetails) {
        Button purchaseButton = PackActivity.access$getUi$p(this.this$0).getPurchaseButton();
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkExpressionValueIsNotNull(skuDetails, "it");
        sb.append(skuDetails.getPrice());
        sb.append(StringUtils.SPACE);
        sb.append(this.this$0.getString(R.string.purchase));
        purchaseButton.setText(sb.toString());
    }
}
