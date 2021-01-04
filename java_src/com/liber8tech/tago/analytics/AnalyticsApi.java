package com.liber8tech.tago.analytics;

import com.facebook.internal.NativeProtocol;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0001\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H&¢\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0001\u0010\u0019\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H&¢\u0006\u0002\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/liber8tech/tago/analytics/AnalyticsApi;", "", "enableDryRun", "", "enable", "", "trackEvent", "screen", "", "category", NativeProtocol.WEB_DIALOG_ACTION, "label", "value", "", "dimensions", "", "Lcom/liber8tech/tago/analytics/Dimension;", "metrics", "Lcom/liber8tech/tago/analytics/Metric;", "products", "Lcom/liber8tech/tago/analytics/Product;", "productAction", "Lcom/liber8tech/tago/analytics/ProductAction;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;)V", "trackScreen", "trackTiming", "variable", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AnalyticsApi.kt */
public interface AnalyticsApi {
    void enableDryRun(boolean z);

    void trackEvent(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Long l, @Nullable Dimension[] dimensionArr, @Nullable Metric[] metricArr, @Nullable Product[] productArr, @Nullable ProductAction productAction);

    void trackScreen(@NotNull String str);

    void trackTiming(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Long l, @Nullable Dimension[] dimensionArr, @Nullable Metric[] metricArr, @Nullable Product[] productArr, @Nullable ProductAction productAction);

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
    /* compiled from: AnalyticsApi.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ void trackEvent$default(AnalyticsApi analyticsApi, String str, String str2, String str3, String str4, Long l, Dimension[] dimensionArr, Metric[] metricArr, Product[] productArr, ProductAction productAction, int i, Object obj) {
            if (obj == null) {
                analyticsApi.trackEvent((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : l, (i & 32) != 0 ? null : dimensionArr, (i & 64) != 0 ? null : metricArr, (i & 128) != 0 ? null : productArr, (i & 256) != 0 ? null : productAction);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trackEvent");
        }

        public static /* synthetic */ void trackTiming$default(AnalyticsApi analyticsApi, String str, String str2, String str3, String str4, Long l, Dimension[] dimensionArr, Metric[] metricArr, Product[] productArr, ProductAction productAction, int i, Object obj) {
            if (obj == null) {
                analyticsApi.trackTiming((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : l, (i & 32) != 0 ? null : dimensionArr, (i & 64) != 0 ? null : metricArr, (i & 128) != 0 ? null : productArr, (i & 256) != 0 ? null : productAction);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trackTiming");
        }
    }
}
