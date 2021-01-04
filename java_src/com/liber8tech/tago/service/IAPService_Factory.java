package com.liber8tech.tago.service;

import dagger.internal.Factory;

public final class IAPService_Factory implements Factory<IAPService> {
    private static final IAPService_Factory INSTANCE = new IAPService_Factory();

    @Override // javax.inject.Provider
    public IAPService get() {
        return new IAPService();
    }

    public static IAPService_Factory create() {
        return INSTANCE;
    }
}
