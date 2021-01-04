package com.liber8tech.tago.android.activity;

import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00038VX\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\b"}, d2 = {"Lcom/liber8tech/tago/android/activity/Requests;", "", "kioskRequest", "", "getKioskRequest", "()I", "resetRequest", "getResetRequest", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Requests.kt */
public interface Requests {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
    /* compiled from: Requests.kt */
    public static final class DefaultImpls {
        public static int getKioskRequest(Requests requests) {
            return 1;
        }

        public static int getResetRequest(Requests requests) {
            return 0;
        }
    }

    int getKioskRequest();

    int getResetRequest();
}
