package com.liber8tech.tago.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v7.widget.AppCompatCheckBox;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.View;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.ChangePasswordActivity;
import com.liber8tech.tago.android.activity.IntroActivity;
import com.liber8tech.tago.android.activity.MainActivity;
import com.liber8tech.tago.android.view.TextInputView;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import java.net.UnknownHostException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import okhttp3.ResponseBody;
import org.jetbrains.anko.CustomViewPropertiesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import retrofit2.HttpException;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a\u0012\u0010\u0004\u001a\u00020\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001H\u0002\u001a\u0018\u0010\u000b\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001H\u0002\u001a\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f\u001a\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u001e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018\u001a\u000e\u0010\u001a\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001a\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\t\u001a\u000e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\t\u001a\u0018\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u001a\u0016\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001XD¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003XD¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"communicationError", "", "minPasswordLength", "", "getError", "e", "", "getErrorString", "activity", "Landroid/app/Activity;", "error", "getIAPErrorString", "isEmailValid", "", "textInputView", "Lcom/liber8tech/tago/android/view/TextInputView;", "isPasswordMatch", "textInputView1", "textInputView2", "isPasswordValid", "isTermsAccepted", "context", "Landroid/content/Context;", "checkPP", "Landroid/support/v7/widget/AppCompatCheckBox;", "checkToC", "isValidField", "loginSuccess", "", "logoutSuccess", "showError", "showIAPError", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: AuthValidation.kt */
public final class AuthValidationKt {
    private static final String communicationError = "communication_error";
    private static final int minPasswordLength = 1;

    public static final boolean isPasswordValid(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "textInputView");
        boolean z = textInputView.getText().length() >= minPasswordLength;
        if (!z) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String string = textInputView.getContext().getString(R.string.auth_password_error_character);
            Intrinsics.checkExpressionValueIsNotNull(string, "textInputView.context.ge…password_error_character)");
            Object[] objArr = {Integer.valueOf(minPasswordLength)};
            String format = String.format(string, Arrays.copyOf(objArr, objArr.length));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
            textInputView.setTextError(format);
        }
        return z;
    }

    public static final boolean isTermsAccepted(@NotNull Context context, @NotNull AppCompatCheckBox appCompatCheckBox, @NotNull AppCompatCheckBox appCompatCheckBox2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(appCompatCheckBox, "checkPP");
        Intrinsics.checkParameterIsNotNull(appCompatCheckBox2, "checkToC");
        if (!appCompatCheckBox.isChecked() || !appCompatCheckBox2.isChecked()) {
            if (!appCompatCheckBox.isChecked() && !appCompatCheckBox.isChecked()) {
                if (Build.VERSION.SDK_INT >= 21) {
                    appCompatCheckBox.setButtonTintList(context.getResources().getColorStateList(R.color.checkbox_error_color));
                } else {
                    CustomViewPropertiesKt.setTextColorResource(appCompatCheckBox, R.color.red);
                }
            }
            if (!appCompatCheckBox2.isChecked() && !appCompatCheckBox2.isChecked()) {
                if (Build.VERSION.SDK_INT >= 21) {
                    appCompatCheckBox2.setButtonTintList(context.getResources().getColorStateList(R.color.checkbox_error_color));
                } else {
                    CustomViewPropertiesKt.setTextColorResource(appCompatCheckBox2, R.color.red);
                }
            }
            return false;
        }
        if (appCompatCheckBox.isChecked()) {
            CustomViewPropertiesKt.setTextColorResource(appCompatCheckBox, R.color.white);
        }
        if (appCompatCheckBox2.isChecked()) {
            CustomViewPropertiesKt.setTextColorResource(appCompatCheckBox2, R.color.white);
        }
        return true;
    }

    public static final boolean isPasswordMatch(@NotNull TextInputView textInputView, @NotNull TextInputView textInputView2) {
        Intrinsics.checkParameterIsNotNull(textInputView, "textInputView1");
        Intrinsics.checkParameterIsNotNull(textInputView2, "textInputView2");
        boolean isPasswordValid = isPasswordValid(textInputView);
        boolean isPasswordValid2 = isPasswordValid(textInputView2);
        if (!isPasswordValid || !isPasswordValid2) {
            return false;
        }
        boolean areEqual = Intrinsics.areEqual(textInputView.getText(), textInputView2.getText());
        if (!areEqual) {
            String string = textInputView2.getContext().getString(R.string.auth_password_error_match);
            Intrinsics.checkExpressionValueIsNotNull(string, "textInputView2.context.g…uth_password_error_match)");
            textInputView2.setTextError(string);
            return areEqual;
        }
        textInputView2.removeTextError();
        return areEqual;
    }

    public static final boolean isEmailValid(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "textInputView");
        String text = textInputView.getText();
        boolean z = !TextUtils.isEmpty(text) && Patterns.EMAIL_ADDRESS.matcher(text).matches();
        if (!z) {
            String string = textInputView.getContext().getString(R.string.auth_email_error);
            Intrinsics.checkExpressionValueIsNotNull(string, "textInputView.context.ge….string.auth_email_error)");
            textInputView.setTextError(string);
        }
        return z;
    }

    public static final boolean isValidField(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "textInputView");
        boolean z = textInputView.getText().length() > 0;
        if (!z) {
            String string = textInputView.getContext().getString(R.string.auth_required);
            Intrinsics.checkExpressionValueIsNotNull(string, "textInputView.context.ge…g(R.string.auth_required)");
            textInputView.setTextError(string);
        }
        return z;
    }

    public static final void showError(@NotNull Activity activity, @Nullable Throwable th) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Activity activity2 = activity;
        String errorString = getErrorString(activity, getError(th));
        View findViewById = activity.findViewById(16908290);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
        ContextExtensionKt.tintedSnack(activity2, errorString, findViewById);
    }

    public static final void showIAPError(@NotNull Activity activity, @NotNull Throwable th) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(th, "e");
        Activity activity2 = activity;
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        String iAPErrorString = getIAPErrorString(activity, message);
        View findViewById = activity.findViewById(16908290);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
        ContextExtensionKt.tintedSnack(activity2, iAPErrorString, findViewById);
    }

    private static final String getError(Throwable th) {
        String str = communicationError;
        if (th == null) {
            return str;
        }
        if (th instanceof HttpException) {
            HttpException httpException = (HttpException) th;
            httpException.response().errorBody();
            ResponseBody errorBody = httpException.response().errorBody();
            str = new JSONObject(errorBody != null ? errorBody.string() : null).getString("message");
            Intrinsics.checkExpressionValueIsNotNull(str, "json.getString(\"message\")");
        }
        return th instanceof UnknownHostException ? "no_internet" : str;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    private static final String getErrorString(Activity activity, String str) {
        int i;
        switch (str.hashCode()) {
            case -1560374907:
                if (str.equals("invalid.credentials")) {
                    if (!(activity instanceof ChangePasswordActivity)) {
                        i = R.string.auth_error_bad_credentials;
                        break;
                    } else {
                        i = R.string.wrong_password;
                        break;
                    }
                }
                i = R.string.general_error;
                break;
            case -1112350814:
                if (str.equals("user_not_found")) {
                    i = R.string.user_not_found;
                    break;
                }
                i = R.string.general_error;
                break;
            case -1085414433:
                if (str.equals("user.exists")) {
                    i = R.string.auth_error_user_exists;
                    break;
                }
                i = R.string.general_error;
                break;
            case 226612223:
                if (str.equals("no_internet")) {
                    i = R.string.auth_error_communication;
                    break;
                }
                i = R.string.general_error;
                break;
            case 508061144:
                if (str.equals("already.registered")) {
                    i = R.string.already_paired;
                    break;
                }
                i = R.string.general_error;
                break;
            case 1615526678:
                if (str.equals("not_found")) {
                    i = R.string.already_deleted;
                    break;
                }
                i = R.string.general_error;
                break;
            default:
                i = R.string.general_error;
                break;
        }
        String string = activity.getString(i);
        Intrinsics.checkExpressionValueIsNotNull(string, "activity.getString(errorResInt)");
        return string;
    }

    private static final String getIAPErrorString(Activity activity, String str) {
        int i;
        int hashCode = str.hashCode();
        if (hashCode != -2139298426) {
            if (hashCode != -1604503292) {
                if (hashCode == -757368942 && str.equals("ITEM_ALREADY_OWNED")) {
                    i = R.string.iap_error_already_owned;
                    String string = activity.getString(i);
                    Intrinsics.checkExpressionValueIsNotNull(string, "activity.getString(errorResInt)");
                    return string;
                }
            } else if (str.equals("ITEM_UNAVAILABLE")) {
                i = R.string.iap_error_unavailable;
                String string2 = activity.getString(i);
                Intrinsics.checkExpressionValueIsNotNull(string2, "activity.getString(errorResInt)");
                return string2;
            }
        } else if (str.equals("SERVICE_UNAVAILABLE")) {
            i = R.string.iap_error_service_unavailable;
            String string22 = activity.getString(i);
            Intrinsics.checkExpressionValueIsNotNull(string22, "activity.getString(errorResInt)");
            return string22;
        }
        i = R.string.general_error;
        String string222 = activity.getString(i);
        Intrinsics.checkExpressionValueIsNotNull(string222, "activity.getString(errorResInt)");
        return string222;
    }

    public static final void loginSuccess(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intent intent = new Intent(activity, MainActivity.class);
        intent.addFlags(268468224);
        intent.putExtra(Constants.isLogin, true);
        activity.startActivity(intent);
    }

    public static final void logoutSuccess(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intent intent = new Intent(activity, IntroActivity.class);
        intent.addFlags(268468224);
        activity.startActivity(intent);
    }
}
