package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.liber8tech.tago.service.BluetoothService;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"com/liber8tech/tago/android/activity/SelectTagoActivity$requestLocationDialog$1", "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;", "onConnected", "", "hint", "Landroid/os/Bundle;", "onConnectionSuspended", "cause", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
public final class SelectTagoActivity$requestLocationDialog$1 implements GoogleApiClient.ConnectionCallbacks {
    final /* synthetic */ Ref.ObjectRef $client;
    final /* synthetic */ SelectTagoActivity this$0;

    SelectTagoActivity$requestLocationDialog$1(SelectTagoActivity selectTagoActivity, Ref.ObjectRef objectRef) {
        this.this$0 = selectTagoActivity;
        this.$client = objectRef;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(@Nullable Bundle bundle) {
        Timber.d("onConnected | hint=" + bundle, new Object[0]);
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.setPriority(104);
        locationRequest.setInterval(BluetoothService.messageTimeout);
        locationRequest.setFastestInterval(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        LocationServices.SettingsApi.checkLocationSettings(this.$client.element, new LocationSettingsRequest.Builder().setAlwaysShow(true).addLocationRequest(locationRequest).build()).setResultCallback(new SelectTagoActivity$requestLocationDialog$1$onConnected$1(this));
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        Timber.w("onConnectionSuspended | cause=" + i, new Object[0]);
    }
}
