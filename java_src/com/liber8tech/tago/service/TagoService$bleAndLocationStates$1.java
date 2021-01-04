package com.liber8tech.tago.service;

import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "", "location", "bluetooth", "apply", "(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lkotlin/Pair;"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoService.kt */
public final class TagoService$bleAndLocationStates$1<T1, T2, R> implements BiFunction<Boolean, Boolean, Pair<? extends Boolean, ? extends Boolean>> {
    public static final TagoService$bleAndLocationStates$1 INSTANCE = new TagoService$bleAndLocationStates$1();

    TagoService$bleAndLocationStates$1() {
    }

    @NotNull
    public final Pair<Boolean, Boolean> apply(@NotNull Boolean bool, @NotNull Boolean bool2) {
        Intrinsics.checkParameterIsNotNull(bool, "location");
        Intrinsics.checkParameterIsNotNull(bool2, "bluetooth");
        Timber.d("Location = " + bool + " || Bluetooth = " + bool2, new Object[0]);
        return new Pair<>(bool, bool2);
    }
}
