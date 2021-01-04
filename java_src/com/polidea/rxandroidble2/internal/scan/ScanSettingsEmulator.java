package com.polidea.rxandroidble2.internal.scan;

import android.support.annotation.IntRange;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.util.ObservableUtil;
import com.polidea.rxandroidble2.scan.ScanCallbackType;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.Scheduler;
import io.reactivex.functions.Function;
import io.reactivex.observables.GroupedObservable;
import java.util.concurrent.TimeUnit;

public class ScanSettingsEmulator {
    private ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> emulateFirstMatch;
    private ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> emulateFirstMatchAndMatchLost = new ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult>() {
        /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass7 */

        /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult>' to match base method */
        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
            return observable.publish(new Function<Observable<RxBleInternalScanResult>, Observable<RxBleInternalScanResult>>() {
                /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass7.AnonymousClass1 */

                public Observable<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
                    return Observable.merge(observable.compose(ScanSettingsEmulator.this.emulateFirstMatch), observable.compose(ScanSettingsEmulator.this.emulateMatchLost));
                }
            });
        }
    };
    private ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> emulateMatchLost = new ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult>() {
        /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass5 */

        /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult>' to match base method */
        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
            return observable.debounce(10, TimeUnit.SECONDS, ScanSettingsEmulator.this.scheduler).map(ScanSettingsEmulator.this.toMatchLost());
        }
    };
    private final Scheduler scheduler;

    @Inject
    public ScanSettingsEmulator(@Named("computation") final Scheduler scheduler2) {
        this.scheduler = scheduler2;
        this.emulateFirstMatch = new ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult>() {
            /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass1 */
            private final Function<RxBleInternalScanResult, Observable<?>> emitAfterTimerFunc = new Function<RxBleInternalScanResult, Observable<?>>() {
                /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass1.AnonymousClass1 */

                public Observable<?> apply(RxBleInternalScanResult rxBleInternalScanResult) {
                    return AnonymousClass1.this.timerObservable;
                }
            };
            private final Function<Observable<RxBleInternalScanResult>, Observable<RxBleInternalScanResult>> takeFirstFromEachWindowFunc = new Function<Observable<RxBleInternalScanResult>, Observable<RxBleInternalScanResult>>() {
                /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass1.AnonymousClass2 */

                public Observable<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
                    return observable.take(1);
                }
            };
            private final Observable<Long> timerObservable = Observable.timer(10, TimeUnit.SECONDS, scheduler2);
            private Function<RxBleInternalScanResult, RxBleInternalScanResult> toFirstMatchFunc = ScanSettingsEmulator.this.toFirstMatch();

            /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult>' to match base method */
            @Override // io.reactivex.ObservableTransformer
            public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
                return observable.publish(new Function<Observable<RxBleInternalScanResult>, ObservableSource<RxBleInternalScanResult>>() {
                    /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass1.AnonymousClass3 */

                    public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) throws Exception {
                        return observable.window(observable.switchMap(AnonymousClass1.this.emitAfterTimerFunc)).flatMap(AnonymousClass1.this.takeFirstFromEachWindowFunc).map(AnonymousClass1.this.toFirstMatchFunc);
                    }
                });
            }
        };
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* access modifiers changed from: package-private */
    public ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> emulateScanMode(int i) {
        switch (i) {
            case -1:
                RxBleLog.d("Cannot emulate opportunistic scan mode since it is OS dependent - fallthrough to low power", new Object[0]);
                break;
            case 0:
                break;
            case 1:
                return scanModeBalancedTransformer();
            default:
                return ObservableUtil.identityTransformer();
        }
        return scanModeLowPowerTransformer();
    }

    private ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> scanModeBalancedTransformer() {
        return repeatedWindowTransformer(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS);
    }

    private ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> scanModeLowPowerTransformer() {
        return repeatedWindowTransformer(500);
    }

    private ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> repeatedWindowTransformer(@IntRange(from = 0, to = 4999) final int i) {
        final long max = Math.max(TimeUnit.SECONDS.toMillis(5) - ((long) i), 0L);
        return new ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult>() {
            /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass2 */

            /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult>' to match base method */
            @Override // io.reactivex.ObservableTransformer
            public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
                return observable.take((long) i, TimeUnit.MILLISECONDS, ScanSettingsEmulator.this.scheduler).repeatWhen(new Function<Observable<Object>, ObservableSource<?>>() {
                    /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass2.AnonymousClass1 */

                    public ObservableSource<?> apply(Observable<Object> observable) throws Exception {
                        return observable.delay(max, TimeUnit.MILLISECONDS, ScanSettingsEmulator.this.scheduler);
                    }
                });
            }
        };
    }

    /* access modifiers changed from: package-private */
    public ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> emulateCallbackType(int i) {
        if (i == 2) {
            return splitByAddressAndForEach(this.emulateFirstMatch);
        }
        if (i == 4) {
            return splitByAddressAndForEach(this.emulateMatchLost);
        }
        if (i != 6) {
            return ObservableUtil.identityTransformer();
        }
        return splitByAddressAndForEach(this.emulateFirstMatchAndMatchLost);
    }

    private ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> splitByAddressAndForEach(final ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> observableTransformer) {
        return new ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult>() {
            /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass3 */

            /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult>' to match base method */
            @Override // io.reactivex.ObservableTransformer
            public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
                return observable.groupBy(new Function<RxBleInternalScanResult, String>() {
                    /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass3.AnonymousClass2 */

                    public String apply(RxBleInternalScanResult rxBleInternalScanResult) {
                        return rxBleInternalScanResult.getBluetoothDevice().getAddress();
                    }
                }).flatMap(new Function<GroupedObservable<String, RxBleInternalScanResult>, Observable<RxBleInternalScanResult>>() {
                    /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass3.AnonymousClass1 */

                    public Observable<RxBleInternalScanResult> apply(GroupedObservable<String, RxBleInternalScanResult> groupedObservable) {
                        return groupedObservable.compose(observableTransformer);
                    }
                });
            }
        };
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Function<RxBleInternalScanResult, RxBleInternalScanResult> toFirstMatch() {
        return new Function<RxBleInternalScanResult, RxBleInternalScanResult>() {
            /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass4 */

            public RxBleInternalScanResult apply(RxBleInternalScanResult rxBleInternalScanResult) {
                return new RxBleInternalScanResult(rxBleInternalScanResult.getBluetoothDevice(), rxBleInternalScanResult.getRssi(), rxBleInternalScanResult.getTimestampNanos(), rxBleInternalScanResult.getScanRecord(), ScanCallbackType.CALLBACK_TYPE_FIRST_MATCH);
            }
        };
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Function<RxBleInternalScanResult, RxBleInternalScanResult> toMatchLost() {
        return new Function<RxBleInternalScanResult, RxBleInternalScanResult>() {
            /* class com.polidea.rxandroidble2.internal.scan.ScanSettingsEmulator.AnonymousClass6 */

            public RxBleInternalScanResult apply(RxBleInternalScanResult rxBleInternalScanResult) {
                return new RxBleInternalScanResult(rxBleInternalScanResult.getBluetoothDevice(), rxBleInternalScanResult.getRssi(), rxBleInternalScanResult.getTimestampNanos(), rxBleInternalScanResult.getScanRecord(), ScanCallbackType.CALLBACK_TYPE_MATCH_LOST);
            }
        };
    }
}
