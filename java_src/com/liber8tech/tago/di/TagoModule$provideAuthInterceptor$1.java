package com.liber8tech.tago.di;

import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Request;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"newRequest", "Lokhttp3/Request;", ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, "token", "", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoModule.kt */
public final class TagoModule$provideAuthInterceptor$1 extends Lambda implements Function2<Request, String, Request> {
    public static final TagoModule$provideAuthInterceptor$1 INSTANCE = new TagoModule$provideAuthInterceptor$1();

    TagoModule$provideAuthInterceptor$1() {
        super(2);
    }

    @NotNull
    public final Request invoke(@NotNull Request request, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(request, ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID);
        Intrinsics.checkParameterIsNotNull(str, "token");
        Request build = request.newBuilder().addHeader("X-Auth-Token", str).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "request.newBuilder()\n   …, token)\n        .build()");
        return build;
    }
}
