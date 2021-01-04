package com.liber8tech.tago.analytics;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class AnalyticsService_Factory implements Factory<AnalyticsService> {
    private final Provider<Context> ctxProvider;
    private final Provider<Integer> xmlResProvider;

    public AnalyticsService_Factory(Provider<Context> provider, Provider<Integer> provider2) {
        this.ctxProvider = provider;
        this.xmlResProvider = provider2;
    }

    @Override // javax.inject.Provider
    public AnalyticsService get() {
        return new AnalyticsService(this.ctxProvider.get(), this.xmlResProvider.get().intValue());
    }

    public static AnalyticsService_Factory create(Provider<Context> provider, Provider<Integer> provider2) {
        return new AnalyticsService_Factory(provider, provider2);
    }
}
