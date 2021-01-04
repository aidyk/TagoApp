package org.jetbrains.anko.recyclerview.v7;

import android.content.Context;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"org/jetbrains/anko/recyclerview/v7/$$Anko$Factories$RecyclerviewV7ViewGroup", "", "()V", "RECYCLER_VIEW", "Lkotlin/Function1;", "Landroid/content/Context;", "Lorg/jetbrains/anko/recyclerview/v7/_RecyclerView;", "getRECYCLER_VIEW", "()Lkotlin/jvm/functions/Function1;", "anko-recyclerview-v7_release"}, k = 1, mv = {1, 1, 13})
@PublishedApi
/* renamed from: org.jetbrains.anko.recyclerview.v7.$$Anko$Factories$RecyclerviewV7ViewGroup  reason: invalid class name */
/* compiled from: Views.kt */
public final class C$$Anko$Factories$RecyclerviewV7ViewGroup {
    public static final C$$Anko$Factories$RecyclerviewV7ViewGroup INSTANCE = new C$$Anko$Factories$RecyclerviewV7ViewGroup();
    @NotNull
    private static final Function1<Context, _RecyclerView> RECYCLER_VIEW = C$$Anko$Factories$RecyclerviewV7ViewGroup$RECYCLER_VIEW$1.INSTANCE;

    private C$$Anko$Factories$RecyclerviewV7ViewGroup() {
    }

    @NotNull
    public final Function1<Context, _RecyclerView> getRECYCLER_VIEW() {
        return RECYCLER_VIEW;
    }
}
