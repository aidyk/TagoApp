package com.liber8tech.tago.android.activity;

import android.content.ClipData;
import android.content.ContentResolver;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.facebook.internal.NativeProtocol;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.ui.AttachmentActivityUI;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.GlobalScope;
import org.jetbrains.anko.AnkoContext;

public final class AttachmentActivity extends BaseActivity {
    public static final Companion Companion = new Companion(null);
    private static final int storagePermissionRequest;
    private HashMap _$_findViewCache;
    public ImageEditorService imageEditorService;
    private final AttachmentActivityUI ui = new AttachmentActivityUI();

    @Override // com.liber8tech.tago.android.activity.BaseActivity
    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final ImageEditorService getImageEditorService() {
        ImageEditorService imageEditorService2 = this.imageEditorService;
        if (imageEditorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageEditorService");
        }
        return imageEditorService2;
    }

    public final void setImageEditorService(ImageEditorService imageEditorService2) {
        Intrinsics.checkParameterIsNotNull(imageEditorService2, "<set-?>");
        this.imageEditorService = imageEditorService2;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        Intent intent = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent, "intent");
        if (intent.getData() != null) {
            ContentResolver contentResolver = getContentResolver();
            Intent intent2 = getIntent();
            Intrinsics.checkExpressionValueIsNotNull(intent2, "intent");
            InputStream openInputStream = contentResolver.openInputStream(intent2.getData());
            Intrinsics.checkExpressionValueIsNotNull(openInputStream, "contentResolver.openInputStream(intent.data)");
            readQRImage(ByteStreamsKt.readBytes(openInputStream));
        } else if (ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            readQRImage(bytesFromClip());
        } else {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 100);
        }
    }

    @Override // android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback, android.support.v4.app.FragmentActivity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        if (i == 100) {
            if (!(!(iArr.length == 0)) || iArr[0] != 0) {
                View findViewById = findViewById(16908290);
                Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
                ContextExtensionKt.tintedSnack(this, (int) R.string.storage_permission_rationale, findViewById);
                return;
            }
            readQRImage(bytesFromClip());
        }
    }

    private final void readQRImage(byte[] bArr) {
        this.ui.getLoader().setVisibility(0);
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, null, null, new AttachmentActivity$readQRImage$1(this, bArr, new ArrayList(), null), 3, null);
    }

    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onPause() {
        super.onPause();
        getDisposeBag().clear();
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    public View getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public CharSequence getToolbarTitle() {
        return getString(R.string.qr_code);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new AttachmentActivity$getToolbarLeftIconClick$1(this);
    }

    private final byte[] bytesFromClip() {
        ContentResolver contentResolver = getContentResolver();
        Intent intent = getIntent();
        Intrinsics.checkExpressionValueIsNotNull(intent, "intent");
        ClipData.Item itemAt = intent.getClipData().getItemAt(0);
        Intrinsics.checkExpressionValueIsNotNull(itemAt, "intent.clipData.getItemAt(0)");
        FileInputStream createInputStream = contentResolver.openAssetFileDescriptor(itemAt.getUri(), "r").createInputStream();
        Intrinsics.checkExpressionValueIsNotNull(createInputStream, "ctx.contentResolver.open…     .createInputStream()");
        return ByteStreamsKt.readBytes(createInputStream);
    }
}
