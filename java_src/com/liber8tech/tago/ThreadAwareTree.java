package com.liber8tech.tago;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014¨\u0006\b"}, d2 = {"Lcom/liber8tech/tago/ThreadAwareTree;", "Ltimber/log/Timber$DebugTree;", "()V", "createStackElementTag", "", "element", "Ljava/lang/StackTraceElement;", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ThreadAwareTree.kt */
public final class ThreadAwareTree extends Timber.DebugTree {
    public static final Companion Companion = new Companion(null);
    private static final String TAG_FORMAT = "[%s] %s";

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/liber8tech/tago/ThreadAwareTree$Companion;", "", "()V", "TAG_FORMAT", "", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: ThreadAwareTree.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* access modifiers changed from: protected */
    @Override // timber.log.Timber.DebugTree
    @NotNull
    public String createStackElementTag(@NotNull StackTraceElement stackTraceElement) {
        Intrinsics.checkParameterIsNotNull(stackTraceElement, "element");
        String createStackElementTag = super.createStackElementTag(stackTraceElement);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkExpressionValueIsNotNull(currentThread, "Thread.currentThread()");
        Object[] objArr = {currentThread.getName(), createStackElementTag};
        String format = String.format(TAG_FORMAT, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
        return format;
    }
}
