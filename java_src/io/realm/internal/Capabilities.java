package io.realm.internal;

import javax.annotation.Nullable;

public interface Capabilities {
    boolean canDeliverNotification();

    void checkCanDeliverNotification(@Nullable String str);

    boolean isMainThread();
}
