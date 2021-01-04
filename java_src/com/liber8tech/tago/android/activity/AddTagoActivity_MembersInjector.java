package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.LocationService;
import com.liber8tech.tago.service.TagoService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class AddTagoActivity_MembersInjector implements MembersInjector<AddTagoActivity> {
    private final Provider<AnalyticsService> analyticsProvider;
    private final Provider<ImageEditorService> imageEditorServiceProvider;
    private final Provider<LocationService> locationServiceProvider;
    private final Provider<TagoService> tagoServiceProvider;

    public AddTagoActivity_MembersInjector(Provider<LocationService> provider, Provider<TagoService> provider2, Provider<ImageEditorService> provider3, Provider<AnalyticsService> provider4) {
        this.locationServiceProvider = provider;
        this.tagoServiceProvider = provider2;
        this.imageEditorServiceProvider = provider3;
        this.analyticsProvider = provider4;
    }

    public static MembersInjector<AddTagoActivity> create(Provider<LocationService> provider, Provider<TagoService> provider2, Provider<ImageEditorService> provider3, Provider<AnalyticsService> provider4) {
        return new AddTagoActivity_MembersInjector(provider, provider2, provider3, provider4);
    }

    public void injectMembers(AddTagoActivity addTagoActivity) {
        injectLocationService(addTagoActivity, this.locationServiceProvider.get());
        injectTagoService(addTagoActivity, this.tagoServiceProvider.get());
        injectImageEditorService(addTagoActivity, this.imageEditorServiceProvider.get());
        injectAnalytics(addTagoActivity, this.analyticsProvider.get());
    }

    public static void injectLocationService(AddTagoActivity addTagoActivity, LocationService locationService) {
        addTagoActivity.locationService = locationService;
    }

    public static void injectTagoService(AddTagoActivity addTagoActivity, TagoService tagoService) {
        addTagoActivity.tagoService = tagoService;
    }

    public static void injectImageEditorService(AddTagoActivity addTagoActivity, ImageEditorService imageEditorService) {
        addTagoActivity.imageEditorService = imageEditorService;
    }

    public static void injectAnalytics(AddTagoActivity addTagoActivity, AnalyticsService analyticsService) {
        addTagoActivity.analytics = analyticsService;
    }
}
