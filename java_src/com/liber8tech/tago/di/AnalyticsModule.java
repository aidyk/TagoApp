package com.liber8tech.tago.di;

import com.liber8tech.tago.analytics.google.GoogleTrackerXml;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0017\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0017¨\u0006\u0005"}, d2 = {"Lcom/liber8tech/tago/di/AnalyticsModule;", "", "()V", "provideGoogleTrackerXml", "", "app_release"}, k = 1, mv = {1, 1, 13})
@Module
/* compiled from: AnalyticsModule.kt */
public class AnalyticsModule {
    @GoogleTrackerXml
    @Provides
    public int provideGoogleTrackerXml() {
        return 0;
    }
}
