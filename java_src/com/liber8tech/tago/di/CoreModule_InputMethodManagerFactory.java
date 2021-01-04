package com.liber8tech.tago.di;

import android.view.inputmethod.InputMethodManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

public final class CoreModule_InputMethodManagerFactory implements Factory<InputMethodManager> {
    private final CoreModule module;

    public CoreModule_InputMethodManagerFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    @Override // javax.inject.Provider
    public InputMethodManager get() {
        return (InputMethodManager) Preconditions.checkNotNull(this.module.inputMethodManager(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_InputMethodManagerFactory create(CoreModule coreModule) {
        return new CoreModule_InputMethodManagerFactory(coreModule);
    }

    public static InputMethodManager proxyInputMethodManager(CoreModule coreModule) {
        return (InputMethodManager) Preconditions.checkNotNull(coreModule.inputMethodManager(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
