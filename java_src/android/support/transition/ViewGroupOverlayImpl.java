package android.support.transition;

import android.support.annotation.NonNull;
import android.view.View;

/* access modifiers changed from: package-private */
public interface ViewGroupOverlayImpl extends ViewOverlayImpl {
    void add(@NonNull View view);

    void remove(@NonNull View view);
}
