package org.jetbrains.anko;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.analytics.ecommerce.Promotion;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

public interface AnkoContext<T> extends ViewManager {
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    Context getCtx();

    T getOwner();

    @NotNull
    View getView();

    void removeView(@NotNull View view);

    void updateViewLayout(@NotNull View view, @NotNull ViewGroup.LayoutParams layoutParams);

    public static final class DefaultImpls {
        public static <T> void updateViewLayout(AnkoContext<? extends T> ankoContext, View view, ViewGroup.LayoutParams layoutParams) {
            Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
            Intrinsics.checkParameterIsNotNull(layoutParams, NativeProtocol.WEB_DIALOG_PARAMS);
            throw new UnsupportedOperationException();
        }

        public static <T> void removeView(AnkoContext<? extends T> ankoContext, View view) {
            Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
            throw new UnsupportedOperationException();
        }
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static /* synthetic */ AnkoContext create$default(Companion companion, Context context, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.create(context, z);
        }

        public final AnkoContext<Context> create(Context context, boolean z) {
            Intrinsics.checkParameterIsNotNull(context, "ctx");
            return new AnkoContextImpl(context, context, z);
        }

        public static /* synthetic */ AnkoContext createReusable$default(Companion companion, Context context, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.createReusable(context, z);
        }

        public final AnkoContext<Context> createReusable(Context context, boolean z) {
            Intrinsics.checkParameterIsNotNull(context, "ctx");
            return new ReusableAnkoContext(context, context, z);
        }

        public static /* synthetic */ AnkoContext create$default(Companion companion, Context context, Object obj, boolean z, int i, Object obj2) {
            if ((i & 4) != 0) {
                z = false;
            }
            return companion.create(context, obj, z);
        }

        public final <T> AnkoContext<T> create(Context context, T t, boolean z) {
            Intrinsics.checkParameterIsNotNull(context, "ctx");
            return new AnkoContextImpl(context, t, z);
        }

        public static /* synthetic */ AnkoContext createReusable$default(Companion companion, Context context, Object obj, boolean z, int i, Object obj2) {
            if ((i & 4) != 0) {
                z = false;
            }
            return companion.createReusable(context, obj, z);
        }

        public final <T> AnkoContext<T> createReusable(Context context, T t, boolean z) {
            Intrinsics.checkParameterIsNotNull(context, "ctx");
            return new ReusableAnkoContext(context, t, z);
        }

        public final <T extends ViewGroup> AnkoContext<T> createDelegate(T t) {
            Intrinsics.checkParameterIsNotNull(t, "owner");
            return new DelegatingAnkoContext(t);
        }
    }
}
