package com.liber8tech.tago.android.analytics;

import com.google.android.gms.analytics.ecommerce.ProductAction;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/liber8tech/tago/android/analytics/Action;", "", "()V", "addTago", "", "changePw", "collectionSelection", "deleteTago", "fabOpen", "firmwareUpdate", "forgotPw", "imageUpload", ProductAction.ACTION_PURCHASE, "resetTago", "signIn", "signUp", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Action.kt */
public final class Action {
    public static final Action INSTANCE = new Action();
    @NotNull
    public static final String addTago = "Add Tago";
    @NotNull
    public static final String changePw = "Change Password";
    @NotNull
    public static final String collectionSelection = "Collection selection";
    @NotNull
    public static final String deleteTago = "Delete Tago";
    @NotNull
    public static final String fabOpen = "FAB expand";
    @NotNull
    public static final String firmwareUpdate = "Firmware update";
    @NotNull
    public static final String forgotPw = "Forgot Password";
    @NotNull
    public static final String imageUpload = "Image Upload";
    @NotNull
    public static final String purchase = "Purchase";
    @NotNull
    public static final String resetTago = "Reset Tago";
    @NotNull
    public static final String signIn = "Sign In";
    @NotNull
    public static final String signUp = "Sign Up";

    private Action() {
    }
}
