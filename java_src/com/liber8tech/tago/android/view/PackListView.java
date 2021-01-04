package com.liber8tech.tago.android.view;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/liber8tech/tago/android/view/PackListView;", "Landroid/support/v7/widget/RecyclerView;", "ctx", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getCtx", "()Landroid/content/Context;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PackListView.kt */
public final class PackListView extends RecyclerView {
    private HashMap _$_findViewCache;
    @NotNull
    private final Context ctx;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PackListView(@NotNull Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        this.ctx = context;
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        setHasFixedSize(true);
    }

    @NotNull
    public final Context getCtx() {
        return this.ctx;
    }
}
