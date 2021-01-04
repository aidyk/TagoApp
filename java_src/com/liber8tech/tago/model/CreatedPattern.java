package com.liber8tech.tago.model;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/liber8tech/tago/model/CreatedPattern;", "Lcom/liber8tech/tago/model/Pattern;", "name", "", "desc", "src", "fileSrc", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFileSrc", "()Ljava/lang/String;", "getStream", "Ljava/io/InputStream;", "context", "Landroid/content/Context;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Pattern.kt */
public final class CreatedPattern extends Pattern {
    @NotNull
    private final String fileSrc;

    @NotNull
    public final String getFileSrc() {
        return this.fileSrc;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CreatedPattern(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4) {
        super(str, str2, str3);
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "desc");
        Intrinsics.checkParameterIsNotNull(str3, "src");
        Intrinsics.checkParameterIsNotNull(str4, "fileSrc");
        this.fileSrc = str4;
    }

    @Override // com.liber8tech.tago.model.Pattern
    @NotNull
    public InputStream getStream(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new FileInputStream(new File(this.fileSrc));
    }
}
