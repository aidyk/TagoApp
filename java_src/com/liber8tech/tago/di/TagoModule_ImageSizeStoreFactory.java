package com.liber8tech.tago.di;

import com.liber8tech.tago.util.ImageSizeStore;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

public final class TagoModule_ImageSizeStoreFactory implements Factory<ImageSizeStore> {
    private final TagoModule module;

    public TagoModule_ImageSizeStoreFactory(TagoModule tagoModule) {
        this.module = tagoModule;
    }

    @Override // javax.inject.Provider
    public ImageSizeStore get() {
        return (ImageSizeStore) Preconditions.checkNotNull(this.module.imageSizeStore(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static TagoModule_ImageSizeStoreFactory create(TagoModule tagoModule) {
        return new TagoModule_ImageSizeStoreFactory(tagoModule);
    }

    public static ImageSizeStore proxyImageSizeStore(TagoModule tagoModule) {
        return (ImageSizeStore) Preconditions.checkNotNull(tagoModule.imageSizeStore(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
