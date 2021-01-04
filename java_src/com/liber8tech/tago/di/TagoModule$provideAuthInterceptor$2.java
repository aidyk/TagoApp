package com.liber8tech.tago.di;

import com.facebook.share.internal.ShareConstants;
import com.liber8tech.tago.util.RuntimeConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lokhttp3/Response;", "kotlin.jvm.PlatformType", "chain", "Lokhttp3/Interceptor$Chain;", "intercept"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoModule.kt */
public final class TagoModule$provideAuthInterceptor$2 implements Interceptor {
    final /* synthetic */ RuntimeConfig $runtimeConfig;

    TagoModule$provideAuthInterceptor$2(RuntimeConfig runtimeConfig) {
        this.$runtimeConfig = runtimeConfig;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Request request = chain.request();
        String token = this.$runtimeConfig.getToken();
        if (token == null) {
            return chain.proceed(request);
        }
        TagoModule$provideAuthInterceptor$1 tagoModule$provideAuthInterceptor$1 = TagoModule$provideAuthInterceptor$1.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(request, ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID);
        return chain.proceed(tagoModule$provideAuthInterceptor$1.invoke(request, token));
    }
}
