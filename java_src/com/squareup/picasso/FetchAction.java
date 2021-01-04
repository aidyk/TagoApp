package com.squareup.picasso;

import android.graphics.Bitmap;
import com.squareup.picasso.Picasso;

/* access modifiers changed from: package-private */
public class FetchAction extends Action<Object> {
    private Callback callback;
    private final Object target = new Object();

    FetchAction(Picasso picasso, Request request, int i, int i2, Object obj, String str, Callback callback2) {
        super(picasso, null, request, i, i2, 0, null, str, obj, false);
        this.callback = callback2;
    }

    /* access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (this.callback != null) {
            this.callback.onSuccess();
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void error(Exception exc) {
        if (this.callback != null) {
            this.callback.onError(exc);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void cancel() {
        super.cancel();
        this.callback = null;
    }

    /* access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public Object getTarget() {
        return this.target;
    }
}
