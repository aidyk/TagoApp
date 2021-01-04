package com.liber8tech.tago.analytics.google;

import android.content.Context;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.analytics.Dimension;
import com.liber8tech.tago.analytics.Metric;
import com.liber8tech.tago.analytics.Product;
import com.liber8tech.tago.analytics.ProductAction;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J(\u0010\u0010\u001a\u00020\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0014H\u0002Jy\u0010\u0015\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u00122\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001c2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u001c2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016Jy\u0010&\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00122\b\u0010'\u001a\u0004\u0018\u00010\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u00122\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001c2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u001c2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0002\u0010$R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/liber8tech/tago/analytics/google/GoogleAnalyticsApi;", "Lcom/liber8tech/tago/analytics/AnalyticsApi;", "ctx", "Landroid/content/Context;", "xmlRes", "", "(Landroid/content/Context;I)V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/google/android/gms/analytics/GoogleAnalytics;", "kotlin.jvm.PlatformType", "tracker", "Lcom/google/android/gms/analytics/Tracker;", "enableDryRun", "", "enable", "", "send", "screen", "", "map", "", "trackEvent", "category", NativeProtocol.WEB_DIALOG_ACTION, "label", "value", "", "dimensions", "", "Lcom/liber8tech/tago/analytics/Dimension;", "metrics", "Lcom/liber8tech/tago/analytics/Metric;", "products", "Lcom/liber8tech/tago/analytics/Product;", "productAction", "Lcom/liber8tech/tago/analytics/ProductAction;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;)V", "trackScreen", "trackTiming", "variable", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: GoogleAnalyticsApi.kt */
public final class GoogleAnalyticsApi implements AnalyticsApi {
    private final GoogleAnalytics analytics;
    private final Tracker tracker;

    public GoogleAnalyticsApi(@NotNull Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        GoogleAnalytics instance = GoogleAnalytics.getInstance(context);
        instance.setDryRun(true);
        this.analytics = instance;
        this.tracker = this.analytics.newTracker(i);
        this.analytics.setLocalDispatchPeriod(300);
        this.tracker.enableAdvertisingIdCollection(true);
    }

    @Override // com.liber8tech.tago.analytics.AnalyticsApi
    public void trackScreen(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "screen");
        Map<String, String> build = new HitBuilders.ScreenViewBuilder().build();
        Intrinsics.checkExpressionValueIsNotNull(build, "HitBuilders.ScreenViewBuilder().build()");
        send(str, build);
    }

    @Override // com.liber8tech.tago.analytics.AnalyticsApi
    public void trackEvent(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Long l, @Nullable Dimension[] dimensionArr, @Nullable Metric[] metricArr, @Nullable Product[] productArr, @Nullable ProductAction productAction) {
        HitBuilders.EventBuilder eventBuilder = new HitBuilders.EventBuilder();
        if (str2 != null) {
            eventBuilder.setCategory(str2);
        }
        if (str3 != null) {
            eventBuilder.setAction(str3);
        }
        if (str4 != null) {
            eventBuilder.setLabel(str4);
        }
        if (l != null) {
            eventBuilder.setValue(l.longValue());
        }
        if (dimensionArr != null) {
            for (Dimension dimension : dimensionArr) {
                eventBuilder.setCustomDimension(dimension.getIndex(), dimension.getValue());
            }
        }
        if (metricArr != null) {
            for (Metric metric : metricArr) {
                eventBuilder.setCustomMetric(metric.getIndex(), metric.getMetric());
            }
        }
        if (productArr != null) {
            for (Product product : productArr) {
                eventBuilder.addProduct(GoogleAnalyticsApiKt.access$toGoogle(product));
            }
        }
        if (productAction != null) {
            eventBuilder.setProductAction(GoogleAnalyticsApiKt.access$toGoogle(productAction));
        }
        Map<String, String> build = eventBuilder.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "builder.build()");
        send(str, build);
    }

    @Override // com.liber8tech.tago.analytics.AnalyticsApi
    public void trackTiming(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Long l, @Nullable Dimension[] dimensionArr, @Nullable Metric[] metricArr, @Nullable Product[] productArr, @Nullable ProductAction productAction) {
        HitBuilders.TimingBuilder timingBuilder = new HitBuilders.TimingBuilder();
        if (str2 != null) {
            timingBuilder.setCategory(str2);
        }
        if (str3 != null) {
            timingBuilder.setVariable(str3);
        }
        if (str4 != null) {
            timingBuilder.setLabel(str4);
        }
        if (l != null) {
            timingBuilder.setValue(l.longValue());
        }
        if (dimensionArr != null) {
            for (Dimension dimension : dimensionArr) {
                timingBuilder.setCustomDimension(dimension.getIndex(), dimension.getValue());
            }
        }
        if (metricArr != null) {
            for (Metric metric : metricArr) {
                timingBuilder.setCustomMetric(metric.getIndex(), metric.getMetric());
            }
        }
        if (productArr != null) {
            for (Product product : productArr) {
                timingBuilder.addProduct(GoogleAnalyticsApiKt.access$toGoogle(product));
            }
        }
        if (productAction != null) {
            timingBuilder.setProductAction(GoogleAnalyticsApiKt.access$toGoogle(productAction));
        }
        Map<String, String> build = timingBuilder.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "builder.build()");
        send(str, build);
    }

    static /* synthetic */ void send$default(GoogleAnalyticsApi googleAnalyticsApi, String str, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        googleAnalyticsApi.send(str, map);
    }

    private final void send(String str, Map<String, String> map) {
        this.tracker.setScreenName(str);
        this.tracker.send(map);
        this.tracker.setScreenName(null);
    }

    @Override // com.liber8tech.tago.analytics.AnalyticsApi
    public void enableDryRun(boolean z) {
        this.analytics.setDryRun(z);
    }
}
