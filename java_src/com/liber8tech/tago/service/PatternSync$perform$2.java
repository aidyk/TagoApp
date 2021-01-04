package com.liber8tech.tago.service;

import com.liber8tech.tago.model.SyncState;
import io.reactivex.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/liber8tech/tago/model/SyncState;", "test"}, k = 3, mv = {1, 1, 13})
/* compiled from: PatternSync.kt */
public final class PatternSync$perform$2<T> implements Predicate<SyncState> {
    public static final PatternSync$perform$2 INSTANCE = new PatternSync$perform$2();

    PatternSync$perform$2() {
    }

    public final boolean test(@NotNull SyncState syncState) {
        Intrinsics.checkParameterIsNotNull(syncState, "it");
        return syncState.finished();
    }
}
