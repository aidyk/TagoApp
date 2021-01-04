package com.liber8tech.tago.model;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.TagoApplication;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/liber8tech/tago/model/Arc;", "", TtmlNode.ATTR_TTS_COLOR, "", "(Ljava/lang/String;II)V", "getColor", "()I", "Gold", "Silver", "Black", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Arc.kt */
public enum Arc {
    Gold(AndroidExtensionsKt.getColorCompat(TagoApplication.Companion.getInstance(), R.color.gold)),
    Silver(AndroidExtensionsKt.getColorCompat(TagoApplication.Companion.getInstance(), R.color.silver)),
    Black(-16777216),
    Unknown(AndroidExtensionsKt.getColorCompat(TagoApplication.Companion.getInstance(), R.color.background));
    
    private final int color;

    protected Arc(int i) {
        this.color = i;
    }

    public final int getColor() {
        return this.color;
    }
}
