package com.liber8tech.tago.android.activity;

import android.content.IntentSender;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationSettingsResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/google/android/gms/location/LocationSettingsResult;", "onResult"}, k = 3, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
final class SelectTagoActivity$requestLocationDialog$1$onConnected$1<R extends Result> implements ResultCallback<LocationSettingsResult> {
    final /* synthetic */ SelectTagoActivity$requestLocationDialog$1 this$0;

    SelectTagoActivity$requestLocationDialog$1$onConnected$1(SelectTagoActivity$requestLocationDialog$1 selectTagoActivity$requestLocationDialog$1) {
        this.this$0 = selectTagoActivity$requestLocationDialog$1;
    }

    public final void onResult(@NotNull LocationSettingsResult locationSettingsResult) {
        Intrinsics.checkParameterIsNotNull(locationSettingsResult, "it");
        Timber.d("onResult | result=" + locationSettingsResult.getStatus(), new Object[0]);
        Status status = locationSettingsResult.getStatus();
        Intrinsics.checkExpressionValueIsNotNull(status, "status");
        if (status.getStatusCode() == 6) {
            try {
                status.startResolutionForResult(this.this$0.this$0, SelectTagoActivity.REQUEST_LOCATION);
            } catch (IntentSender.SendIntentException unused) {
            }
        }
    }
}
