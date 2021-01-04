package com.liber8tech.tago.di;

import android.support.v4.app.NotificationManagerCompat;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

public final class CoreModule_NotificationManagerFactory implements Factory<NotificationManagerCompat> {
    private final CoreModule module;

    public CoreModule_NotificationManagerFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    @Override // javax.inject.Provider
    public NotificationManagerCompat get() {
        return (NotificationManagerCompat) Preconditions.checkNotNull(this.module.notificationManager(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_NotificationManagerFactory create(CoreModule coreModule) {
        return new CoreModule_NotificationManagerFactory(coreModule);
    }

    public static NotificationManagerCompat proxyNotificationManager(CoreModule coreModule) {
        return (NotificationManagerCompat) Preconditions.checkNotNull(coreModule.notificationManager(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
