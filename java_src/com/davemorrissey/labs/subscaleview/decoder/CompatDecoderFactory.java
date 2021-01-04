package com.davemorrissey.labs.subscaleview.decoder;

import android.support.annotation.NonNull;

public class CompatDecoderFactory<T> implements DecoderFactory<T> {
    private Class<? extends T> clazz;

    public CompatDecoderFactory(@NonNull Class<? extends T> cls) {
        this.clazz = cls;
    }

    @Override // com.davemorrissey.labs.subscaleview.decoder.DecoderFactory
    public T make() throws IllegalAccessException, InstantiationException {
        return (T) this.clazz.newInstance();
    }
}
