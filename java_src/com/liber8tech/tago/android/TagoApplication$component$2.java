package com.liber8tech.tago.android;

import com.liber8tech.tago.R;
import com.liber8tech.tago.di.AnalyticsModule;
import com.liber8tech.tago.di.CoreModule;
import com.liber8tech.tago.di.DaggerTagoComponent;
import com.liber8tech.tago.di.TagoComponent;
import com.liber8tech.tago.di.TagoModule;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lcom/liber8tech/tago/di/TagoComponent;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoApplication.kt */
final class TagoApplication$component$2 extends Lambda implements Function0<TagoComponent> {
    final /* synthetic */ TagoApplication this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    TagoApplication$component$2(TagoApplication tagoApplication) {
        super(0);
        this.this$0 = tagoApplication;
    }

    @Override // kotlin.jvm.functions.Function0
    public final TagoComponent invoke() {
        return DaggerTagoComponent.builder().coreModule(new CoreModule(this.this$0)).tagoModule(new TagoModule(this.this$0)).analyticsModule(new AnalyticsModule() {
            /* class com.liber8tech.tago.android.TagoApplication$component$2.AnonymousClass1 */

            @Override // com.liber8tech.tago.di.AnalyticsModule
            public int provideGoogleTrackerXml() {
                return R.xml.global_tracker;
            }
        }).build();
    }
}
