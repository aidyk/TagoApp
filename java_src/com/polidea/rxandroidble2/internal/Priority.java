package com.polidea.rxandroidble2.internal;

public class Priority {
    public static final Priority HIGH = new Priority(100);
    public static final Priority LOW = new Priority(0);
    public static final Priority NORMAL = new Priority(50);
    final int priority;

    private Priority(int i) {
        this.priority = i;
    }
}
