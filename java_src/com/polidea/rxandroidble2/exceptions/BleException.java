package com.polidea.rxandroidble2.exceptions;

public class BleException extends RuntimeException {
    public BleException() {
    }

    public BleException(String str) {
        super(str);
    }

    public BleException(Throwable th) {
        super(th);
    }

    public BleException(String str, Throwable th) {
        super(str, th);
    }
}
