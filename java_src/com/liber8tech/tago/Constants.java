package com.liber8tech.tago;

import java.io.File;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006XT¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/liber8tech/tago/Constants;", "", "()V", "PatternRatio", "", Constants.SignUpActivity, "", "autoUpload", Constants.collectionType, Constants.created, "currentPack", "isLogin", "pattern", "profile", Constants.purchased, "purchasedFolderPath", "getPurchasedFolderPath", "()Ljava/lang/String;", "tagoCameraGapHeightPx", "", "getTagoCameraGapHeightPx", "()F", "setTagoCameraGapHeightPx", "(F)V", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Constants.kt */
public final class Constants {
    public static final Constants INSTANCE = new Constants();
    public static final double PatternRatio = 4.387096774193548d;
    @NotNull
    public static final String SignUpActivity = "SignUpActivity";
    @NotNull
    public static final String autoUpload = "AutoUpload";
    @NotNull
    public static final String collectionType = "collectionType";
    @NotNull
    public static final String created = "created";
    @NotNull
    public static final String currentPack = "Current_pack";
    @NotNull
    public static final String isLogin = "previousActivityLogin";
    @NotNull
    public static final String pattern = "Pattern";
    @NotNull
    public static final String profile = "profile";
    @NotNull
    public static final String purchased = "purchased";
    @NotNull
    private static final String purchasedFolderPath = (purchased + File.separator);
    private static float tagoCameraGapHeightPx;

    private Constants() {
    }

    public final float getTagoCameraGapHeightPx() {
        return tagoCameraGapHeightPx;
    }

    public final void setTagoCameraGapHeightPx(float f) {
        tagoCameraGapHeightPx = f;
    }

    @NotNull
    public final String getPurchasedFolderPath() {
        return purchasedFolderPath;
    }
}
