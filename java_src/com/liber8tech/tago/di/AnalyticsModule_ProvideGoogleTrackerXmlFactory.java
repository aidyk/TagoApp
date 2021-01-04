package com.liber8tech.tago.di;

import dagger.internal.Factory;

public final class AnalyticsModule_ProvideGoogleTrackerXmlFactory implements Factory<Integer> {
    private final AnalyticsModule module;

    public AnalyticsModule_ProvideGoogleTrackerXmlFactory(AnalyticsModule analyticsModule) {
        this.module = analyticsModule;
    }

    @Override // javax.inject.Provider
    public Integer get() {
        return Integer.valueOf(this.module.provideGoogleTrackerXml());
    }

    public static AnalyticsModule_ProvideGoogleTrackerXmlFactory create(AnalyticsModule analyticsModule) {
        return new AnalyticsModule_ProvideGoogleTrackerXmlFactory(analyticsModule);
    }
}
