package com.liber8tech.tago.analytics;

import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/liber8tech/tago/analytics/Implementations;", "", "()V", "hasGoogle", "", "getHasGoogle", "()Z", "checkClass", "name", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Implementations.kt */
public final class Implementations {
    public static final Implementations INSTANCE = new Implementations();

    private Implementations() {
    }

    public final boolean getHasGoogle() {
        return checkClass("com.google.android.gms.analytics.GoogleAnalytics");
    }

    private final boolean checkClass(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
