package com.polidea.rxandroidble2.internal.connection;

public interface ConnectionSubscriptionWatcher {
    void onConnectionSubscribed();

    void onConnectionUnsubscribed();
}
