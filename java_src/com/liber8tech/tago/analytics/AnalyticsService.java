package com.liber8tech.tago.analytics;

import android.content.Context;
import com.facebook.internal.NativeProtocol;
import com.liber8tech.tago.analytics.google.GoogleAnalyticsApi;
import com.liber8tech.tago.analytics.google.GoogleTrackerXml;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016Jy\u0010\u000f\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00172\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00172\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0002\u0010\u001fJ\u0010\u0010 \u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016Jy\u0010!\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\b\u0010\"\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00172\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00172\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0002\u0010\u001fR\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010\bX\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/liber8tech/tago/analytics/AnalyticsService;", "Lcom/liber8tech/tago/analytics/AnalyticsApi;", "ctx", "Landroid/content/Context;", "xmlRes", "", "(Landroid/content/Context;I)V", "apis", "", "enableDryRun", "", "enable", "", "toString", "", "trackEvent", "screen", "category", NativeProtocol.WEB_DIALOG_ACTION, "label", "value", "", "dimensions", "", "Lcom/liber8tech/tago/analytics/Dimension;", "metrics", "Lcom/liber8tech/tago/analytics/Metric;", "products", "Lcom/liber8tech/tago/analytics/Product;", "productAction", "Lcom/liber8tech/tago/analytics/ProductAction;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;)V", "trackScreen", "trackTiming", "variable", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AnalyticsService.kt */
public final class AnalyticsService implements AnalyticsApi {
    private final List<AnalyticsApi> apis = new ArrayList();

    @Inject
    public AnalyticsService(@NotNull Context context, @GoogleTrackerXml int i) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        if (Implementations.INSTANCE.getHasGoogle()) {
            this.apis.add(new GoogleAnalyticsApi(context, i));
        }
    }

    @Override // com.liber8tech.tago.analytics.AnalyticsApi
    public void trackScreen(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "screen");
        Iterator<T> it2 = this.apis.iterator();
        while (it2.hasNext()) {
            it2.next().trackScreen(str);
        }
    }

    @Override // com.liber8tech.tago.analytics.AnalyticsApi
    public void trackEvent(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Long l, @Nullable Dimension[] dimensionArr, @Nullable Metric[] metricArr, @Nullable Product[] productArr, @Nullable ProductAction productAction) {
        Iterator<T> it2 = this.apis.iterator();
        while (it2.hasNext()) {
            it2.next().trackEvent(str, str2, str3, str4, l, dimensionArr, metricArr, productArr, productAction);
        }
    }

    @Override // com.liber8tech.tago.analytics.AnalyticsApi
    public void trackTiming(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Long l, @Nullable Dimension[] dimensionArr, @Nullable Metric[] metricArr, @Nullable Product[] productArr, @Nullable ProductAction productAction) {
        Iterator<T> it2 = this.apis.iterator();
        while (it2.hasNext()) {
            it2.next().trackTiming(str, str2, str3, str4, l, dimensionArr, metricArr, productArr, productAction);
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Installed APIs:");
        List<AnalyticsApi> list = this.apis;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getClass().getName());
        }
        sb.append(CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null));
        return sb.toString();
    }

    @Override // com.liber8tech.tago.analytics.AnalyticsApi
    public void enableDryRun(boolean z) {
        Iterator<T> it2 = this.apis.iterator();
        while (it2.hasNext()) {
            it2.next().enableDryRun(false);
        }
    }
}
