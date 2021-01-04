package android.support.transition;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewOverlay;

/* access modifiers changed from: package-private */
@RequiresApi(18)
public class ViewOverlayApi18 implements ViewOverlayImpl {
    private final ViewOverlay mViewOverlay;

    ViewOverlayApi18(@NonNull View view) {
        this.mViewOverlay = view.getOverlay();
    }

    @Override // android.support.transition.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.mViewOverlay.add(drawable);
    }

    @Override // android.support.transition.ViewOverlayImpl
    public void clear() {
        this.mViewOverlay.clear();
    }

    @Override // android.support.transition.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.mViewOverlay.remove(drawable);
    }
}
