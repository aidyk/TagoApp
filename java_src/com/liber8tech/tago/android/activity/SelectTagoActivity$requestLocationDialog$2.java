package com.liber8tech.tago.android.activity;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/google/android/gms/common/ConnectionResult;", "onConnectionFailed"}, k = 3, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
public final class SelectTagoActivity$requestLocationDialog$2 implements GoogleApiClient.OnConnectionFailedListener {
    public static final SelectTagoActivity$requestLocationDialog$2 INSTANCE = new SelectTagoActivity$requestLocationDialog$2();

    SelectTagoActivity$requestLocationDialog$2() {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public final void onConnectionFailed(@NotNull ConnectionResult connectionResult) {
        Intrinsics.checkParameterIsNotNull(connectionResult, "it");
        Timber.w("onConnectionFailed | result=" + connectionResult, new Object[0]);
    }
}
