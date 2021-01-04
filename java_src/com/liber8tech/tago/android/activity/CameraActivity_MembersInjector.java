package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.ImageEditorService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class CameraActivity_MembersInjector implements MembersInjector<CameraActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<ImageEditorService> imageEditorServiceProvider;

    public CameraActivity_MembersInjector(Provider<ImageEditorService> provider, Provider<AnalyticsService> provider2) {
        this.imageEditorServiceProvider = provider;
        this.analyticsProvider = provider2;
    }

    public static MembersInjector<CameraActivity> create(Provider<ImageEditorService> provider, Provider<AnalyticsService> provider2) {
        return new CameraActivity_MembersInjector(provider, provider2);
    }

    public void injectMembers(CameraActivity cameraActivity) {
        injectImageEditorService(cameraActivity, this.imageEditorServiceProvider.get());
        injectAnalytics(cameraActivity, this.analyticsProvider.get());
    }

    public static void injectImageEditorService(CameraActivity cameraActivity, ImageEditorService imageEditorService) {
        cameraActivity.imageEditorService = imageEditorService;
    }

    public static void injectAnalytics(CameraActivity cameraActivity, AnalyticsService analyticsService) {
        cameraActivity.analytics = analyticsService;
    }
}
