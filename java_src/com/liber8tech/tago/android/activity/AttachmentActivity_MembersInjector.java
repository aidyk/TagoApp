package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.service.ImageEditorService;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class AttachmentActivity_MembersInjector implements MembersInjector<AttachmentActivity> {
    private final Provider<ImageEditorService> imageEditorServiceProvider;

    public AttachmentActivity_MembersInjector(Provider<ImageEditorService> provider) {
        this.imageEditorServiceProvider = provider;
    }

    public static MembersInjector<AttachmentActivity> create(Provider<ImageEditorService> provider) {
        return new AttachmentActivity_MembersInjector(provider);
    }

    public void injectMembers(AttachmentActivity attachmentActivity) {
        injectImageEditorService(attachmentActivity, this.imageEditorServiceProvider.get());
    }

    public static void injectImageEditorService(AttachmentActivity attachmentActivity, ImageEditorService imageEditorService) {
        attachmentActivity.imageEditorService = imageEditorService;
    }
}
