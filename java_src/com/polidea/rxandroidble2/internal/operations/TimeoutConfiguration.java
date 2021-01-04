package com.polidea.rxandroidble2.internal.operations;

import io.reactivex.Scheduler;
import java.util.concurrent.TimeUnit;

public class TimeoutConfiguration {
    public final long timeout;
    public final Scheduler timeoutScheduler;
    public final TimeUnit timeoutTimeUnit;

    public TimeoutConfiguration(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.timeout = j;
        this.timeoutTimeUnit = timeUnit;
        this.timeoutScheduler = scheduler;
    }
}
