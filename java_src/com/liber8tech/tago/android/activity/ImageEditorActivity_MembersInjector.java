package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.service.ImageEditorService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class ImageEditorActivity_MembersInjector implements MembersInjector<ImageEditorActivity> {
    private final Provider<ImageEditorService> imageEditorServiceProvider;

    public ImageEditorActivity_MembersInjector(Provider<ImageEditorService> provider) {
        this.imageEditorServiceProvider = provider;
    }

    public static MembersInjector<ImageEditorActivity> create(Provider<ImageEditorService> provider) {
        return new ImageEditorActivity_MembersInjector(provider);
    }

    public void injectMembers(ImageEditorActivity imageEditorActivity) {
        injectImageEditorService(imageEditorActivity, this.imageEditorServiceProvider.get());
    }

    public static void injectImageEditorService(ImageEditorActivity imageEditorActivity, ImageEditorService imageEditorService) {
        imageEditorActivity.imageEditorService = imageEditorService;
    }
}
