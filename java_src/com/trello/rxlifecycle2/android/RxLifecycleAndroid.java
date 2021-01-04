package com.trello.rxlifecycle2.android;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.View;
import com.trello.rxlifecycle2.LifecycleTransformer;
import com.trello.rxlifecycle2.OutsideLifecycleException;
import com.trello.rxlifecycle2.RxLifecycle;
import com.trello.rxlifecycle2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.Function;

public class RxLifecycleAndroid {
    private static final Function<ActivityEvent, ActivityEvent> ACTIVITY_LIFECYCLE = new Function<ActivityEvent, ActivityEvent>() {
        /* class com.trello.rxlifecycle2.android.RxLifecycleAndroid.AnonymousClass1 */

        public ActivityEvent apply(ActivityEvent activityEvent) throws Exception {
            switch (AnonymousClass3.$SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent[activityEvent.ordinal()]) {
                case 1:
                    return ActivityEvent.DESTROY;
                case 2:
                    return ActivityEvent.STOP;
                case 3:
                    return ActivityEvent.PAUSE;
                case 4:
                    return ActivityEvent.STOP;
                case 5:
                    return ActivityEvent.DESTROY;
                case 6:
                    throw new OutsideLifecycleException("Cannot bind to Activity lifecycle when outside of it.");
                default:
                    throw new UnsupportedOperationException("Binding to " + activityEvent + " not yet implemented");
            }
        }
    };
    private static final Function<FragmentEvent, FragmentEvent> FRAGMENT_LIFECYCLE = new Function<FragmentEvent, FragmentEvent>() {
        /* class com.trello.rxlifecycle2.android.RxLifecycleAndroid.AnonymousClass2 */

        public FragmentEvent apply(FragmentEvent fragmentEvent) throws Exception {
            switch (AnonymousClass3.$SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent[fragmentEvent.ordinal()]) {
                case 1:
                    return FragmentEvent.DETACH;
                case 2:
                    return FragmentEvent.DESTROY;
                case 3:
                    return FragmentEvent.DESTROY_VIEW;
                case 4:
                    return FragmentEvent.STOP;
                case 5:
                    return FragmentEvent.PAUSE;
                case 6:
                    return FragmentEvent.STOP;
                case 7:
                    return FragmentEvent.DESTROY_VIEW;
                case 8:
                    return FragmentEvent.DESTROY;
                case 9:
                    return FragmentEvent.DETACH;
                case 10:
                    throw new OutsideLifecycleException("Cannot bind to Fragment lifecycle when outside of it.");
                default:
                    throw new UnsupportedOperationException("Binding to " + fragmentEvent + " not yet implemented");
            }
        }
    };

    private RxLifecycleAndroid() {
        throw new AssertionError("No instances");
    }

    @CheckResult
    @NonNull
    public static <T> LifecycleTransformer<T> bindActivity(@NonNull Observable<ActivityEvent> observable) {
        return RxLifecycle.bind(observable, ACTIVITY_LIFECYCLE);
    }

    @CheckResult
    @NonNull
    public static <T> LifecycleTransformer<T> bindFragment(@NonNull Observable<FragmentEvent> observable) {
        return RxLifecycle.bind(observable, FRAGMENT_LIFECYCLE);
    }

    @CheckResult
    @NonNull
    public static <T> LifecycleTransformer<T> bindView(@NonNull View view) {
        Preconditions.checkNotNull(view, "view == null");
        return RxLifecycle.bind(Observable.create(new ViewDetachesOnSubscribe(view)));
    }

    /* access modifiers changed from: package-private */
    /* renamed from: com.trello.rxlifecycle2.android.RxLifecycleAndroid$3  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$trello$rxlifecycle2$android$ActivityEvent = new int[ActivityEvent.values().length];
        static final /* synthetic */ int[] $SwitchMap$com$trello$rxlifecycle2$android$FragmentEvent = new int[FragmentEvent.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(32:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|(2:13|14)|15|(2:17|18)|19|21|22|23|24|25|26|27|28|(2:29|30)|31|33|34|35|36|37|38|39|40|41|42|(3:43|44|46)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(33:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|(2:13|14)|15|17|18|19|21|22|23|24|25|26|27|28|(2:29|30)|31|33|34|35|36|37|38|39|40|41|42|(3:43|44|46)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(37:0|(2:1|2)|3|5|6|7|(2:9|10)|11|(2:13|14)|15|17|18|19|21|22|23|24|25|26|27|28|29|30|31|33|34|35|36|37|38|39|40|41|42|43|44|46) */
        /* JADX WARNING: Can't wrap try/catch for region: R(38:0|(2:1|2)|3|5|6|7|(2:9|10)|11|13|14|15|17|18|19|21|22|23|24|25|26|27|28|29|30|31|33|34|35|36|37|38|39|40|41|42|43|44|46) */
        /* JADX WARNING: Can't wrap try/catch for region: R(39:0|1|2|3|5|6|7|(2:9|10)|11|13|14|15|17|18|19|21|22|23|24|25|26|27|28|29|30|31|33|34|35|36|37|38|39|40|41|42|43|44|46) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x004b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0056 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x0062 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x006e */
        /* JADX WARNING: Missing exception handler attribute for start block: B:35:0x008d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:37:0x0097 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x00a1 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:41:0x00ab */
        /* JADX WARNING: Missing exception handler attribute for start block: B:43:0x00b5 */
        static {
            /*
            // Method dump skipped, instructions count: 192
            */
            throw new UnsupportedOperationException("Method not decompiled: com.trello.rxlifecycle2.android.RxLifecycleAndroid.AnonymousClass3.<clinit>():void");
        }
    }
}
