package org.jetbrains.anko.support.v4;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class SupportV4ListenersKt$sam$i$android_support_v4_view_ViewPager_OnAdapterChangeListener$0 implements ViewPager.OnAdapterChangeListener {
    private final /* synthetic */ Function3 function;

    public SupportV4ListenersKt$sam$i$android_support_v4_view_ViewPager_OnAdapterChangeListener$0(Function3 function3) {
        this.function = function3;
    }

    @Override // android.support.v4.view.ViewPager.OnAdapterChangeListener
    public final /* synthetic */ void onAdapterChanged(@NonNull @NotNull ViewPager viewPager, @Nullable @org.jetbrains.annotations.Nullable PagerAdapter pagerAdapter, @Nullable @org.jetbrains.annotations.Nullable PagerAdapter pagerAdapter2) {
        Intrinsics.checkParameterIsNotNull(viewPager, "p0");
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(viewPager, pagerAdapter, pagerAdapter2), "invoke(...)");
    }
}
