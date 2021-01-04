package org.jetbrains.anko;

import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.app.WallpaperManager;
import android.app.admin.DevicePolicyManager;
import android.content.ClipboardManager;
import android.content.Context;
import android.hardware.SensorManager;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.net.wifi.p2p.WifiP2pManager;
import android.nfc.NfcManager;
import android.os.PowerManager;
import android.os.storage.StorageManager;
import android.support.v4.app.NotificationCompat;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import com.google.android.exoplayer2.util.MimeTypes;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Î\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0015\u0010\t\u001a\u00020\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\"\u0015\u0010\r\u001a\u00020\u000e*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\"\u0015\u0010\u0011\u001a\u00020\u0012*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014\"\u0015\u0010\u0015\u001a\u00020\u0016*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018\"\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c\"\u0015\u0010\u001d\u001a\u00020\u001e*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 \"\u0015\u0010!\u001a\u00020\"*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b#\u0010$\"\u0015\u0010%\u001a\u00020&*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b'\u0010(\"\u0015\u0010)\u001a\u00020**\u00020\u00028F¢\u0006\u0006\u001a\u0004\b+\u0010,\"\u0015\u0010-\u001a\u00020.*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b/\u00100\"\u0015\u00101\u001a\u000202*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b3\u00104\"\u0015\u00105\u001a\u000206*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b7\u00108\"\u0015\u00109\u001a\u00020:*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b;\u0010<\"\u0015\u0010=\u001a\u00020>*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b?\u0010@\"\u0015\u0010A\u001a\u00020B*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bC\u0010D\"\u0015\u0010E\u001a\u00020F*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bG\u0010H\"\u0015\u0010I\u001a\u00020J*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bK\u0010L\"\u0015\u0010M\u001a\u00020N*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bO\u0010P\"\u0015\u0010Q\u001a\u00020R*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bS\u0010T\"\u0015\u0010U\u001a\u00020V*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bW\u0010X\"\u0015\u0010Y\u001a\u00020Z*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b[\u0010\\\"\u0015\u0010]\u001a\u00020^*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b_\u0010`\"\u0015\u0010a\u001a\u00020b*\u00020\u00028F¢\u0006\u0006\u001a\u0004\bc\u0010d¨\u0006e"}, d2 = {"accessibilityManager", "Landroid/view/accessibility/AccessibilityManager;", "Landroid/content/Context;", "getAccessibilityManager", "(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;", "accountManager", "Landroid/accounts/AccountManager;", "getAccountManager", "(Landroid/content/Context;)Landroid/accounts/AccountManager;", "activityManager", "Landroid/app/ActivityManager;", "getActivityManager", "(Landroid/content/Context;)Landroid/app/ActivityManager;", "alarmManager", "Landroid/app/AlarmManager;", "getAlarmManager", "(Landroid/content/Context;)Landroid/app/AlarmManager;", "audioManager", "Landroid/media/AudioManager;", "getAudioManager", "(Landroid/content/Context;)Landroid/media/AudioManager;", "clipboardManager", "Landroid/content/ClipboardManager;", "getClipboardManager", "(Landroid/content/Context;)Landroid/content/ClipboardManager;", "connectivityManager", "Landroid/net/ConnectivityManager;", "getConnectivityManager", "(Landroid/content/Context;)Landroid/net/ConnectivityManager;", "devicePolicyManager", "Landroid/app/admin/DevicePolicyManager;", "getDevicePolicyManager", "(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;", "downloadManager", "Landroid/app/DownloadManager;", "getDownloadManager", "(Landroid/content/Context;)Landroid/app/DownloadManager;", "inputMethodManager", "Landroid/view/inputmethod/InputMethodManager;", "getInputMethodManager", "(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;", "keyguardManager", "Landroid/app/KeyguardManager;", "getKeyguardManager", "(Landroid/content/Context;)Landroid/app/KeyguardManager;", "locationManager", "Landroid/location/LocationManager;", "getLocationManager", "(Landroid/content/Context;)Landroid/location/LocationManager;", "nfcManager", "Landroid/nfc/NfcManager;", "getNfcManager", "(Landroid/content/Context;)Landroid/nfc/NfcManager;", "notificationManager", "Landroid/app/NotificationManager;", "getNotificationManager", "(Landroid/content/Context;)Landroid/app/NotificationManager;", "powerManager", "Landroid/os/PowerManager;", "getPowerManager", "(Landroid/content/Context;)Landroid/os/PowerManager;", "searchManager", "Landroid/app/SearchManager;", "getSearchManager", "(Landroid/content/Context;)Landroid/app/SearchManager;", "sensorManager", "Landroid/hardware/SensorManager;", "getSensorManager", "(Landroid/content/Context;)Landroid/hardware/SensorManager;", "storageManager", "Landroid/os/storage/StorageManager;", "getStorageManager", "(Landroid/content/Context;)Landroid/os/storage/StorageManager;", "telephonyManager", "Landroid/telephony/TelephonyManager;", "getTelephonyManager", "(Landroid/content/Context;)Landroid/telephony/TelephonyManager;", "uiModeManager", "Landroid/app/UiModeManager;", "getUiModeManager", "(Landroid/content/Context;)Landroid/app/UiModeManager;", "usbManager", "Landroid/hardware/usb/UsbManager;", "getUsbManager", "(Landroid/content/Context;)Landroid/hardware/usb/UsbManager;", "wallpaperManager", "Landroid/app/WallpaperManager;", "getWallpaperManager", "(Landroid/content/Context;)Landroid/app/WallpaperManager;", "wifiManager", "Landroid/net/wifi/WifiManager;", "getWifiManager", "(Landroid/content/Context;)Landroid/net/wifi/WifiManager;", "wifiP2pManager", "Landroid/net/wifi/p2p/WifiP2pManager;", "getWifiP2pManager", "(Landroid/content/Context;)Landroid/net/wifi/p2p/WifiP2pManager;", "windowManager", "Landroid/view/WindowManager;", "getWindowManager", "(Landroid/content/Context;)Landroid/view/WindowManager;", "anko-sdk15_release"}, k = 2, mv = {1, 1, 13})
@JvmName(name = "Sdk15ServicesKt")
/* compiled from: Services.kt */
public final class Sdk15ServicesKt {
    @NotNull
    public static final AccessibilityManager getAccessibilityManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("accessibility");
        if (systemService != null) {
            return (AccessibilityManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
    }

    @NotNull
    public static final AccountManager getAccountManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("account");
        if (systemService != null) {
            return (AccountManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.accounts.AccountManager");
    }

    @NotNull
    public static final ActivityManager getActivityManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("activity");
        if (systemService != null) {
            return (ActivityManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.ActivityManager");
    }

    @NotNull
    public static final AlarmManager getAlarmManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (systemService != null) {
            return (AlarmManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.AlarmManager");
    }

    @NotNull
    public static final AudioManager getAudioManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (systemService != null) {
            return (AudioManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.media.AudioManager");
    }

    @NotNull
    public static final ClipboardManager getClipboardManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("clipboard");
        if (systemService != null) {
            return (ClipboardManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
    }

    @NotNull
    public static final ConnectivityManager getConnectivityManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("connectivity");
        if (systemService != null) {
            return (ConnectivityManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
    }

    @NotNull
    public static final DevicePolicyManager getDevicePolicyManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("device_policy");
        if (systemService != null) {
            return (DevicePolicyManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.admin.DevicePolicyManager");
    }

    @NotNull
    public static final DownloadManager getDownloadManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("download");
        if (systemService != null) {
            return (DownloadManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.DownloadManager");
    }

    @NotNull
    public static final InputMethodManager getInputMethodManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("input_method");
        if (systemService != null) {
            return (InputMethodManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
    }

    @NotNull
    public static final KeyguardManager getKeyguardManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null) {
            return (KeyguardManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.KeyguardManager");
    }

    @NotNull
    public static final LocationManager getLocationManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("location");
        if (systemService != null) {
            return (LocationManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.location.LocationManager");
    }

    @NotNull
    public static final NfcManager getNfcManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("nfc");
        if (systemService != null) {
            return (NfcManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.nfc.NfcManager");
    }

    @NotNull
    public static final NotificationManager getNotificationManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("notification");
        if (systemService != null) {
            return (NotificationManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
    }

    @NotNull
    public static final PowerManager getPowerManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("power");
        if (systemService != null) {
            return (PowerManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.os.PowerManager");
    }

    @NotNull
    public static final SearchManager getSearchManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("search");
        if (systemService != null) {
            return (SearchManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.SearchManager");
    }

    @NotNull
    public static final SensorManager getSensorManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("sensor");
        if (systemService != null) {
            return (SensorManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.hardware.SensorManager");
    }

    @NotNull
    public static final StorageManager getStorageManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("storage");
        if (systemService != null) {
            return (StorageManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.os.storage.StorageManager");
    }

    @NotNull
    public static final TelephonyManager getTelephonyManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("phone");
        if (systemService != null) {
            return (TelephonyManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.telephony.TelephonyManager");
    }

    @NotNull
    public static final UiModeManager getUiModeManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("uimode");
        if (systemService != null) {
            return (UiModeManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.UiModeManager");
    }

    @NotNull
    public static final UsbManager getUsbManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("usb");
        if (systemService != null) {
            return (UsbManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.hardware.usb.UsbManager");
    }

    @NotNull
    public static final WallpaperManager getWallpaperManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("wallpaper");
        if (systemService != null) {
            return (WallpaperManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.WallpaperManager");
    }

    @NotNull
    public static final WifiManager getWifiManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("wifi");
        if (systemService != null) {
            return (WifiManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.net.wifi.WifiManager");
    }

    @NotNull
    public static final WifiP2pManager getWifiP2pManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("wifip2p");
        if (systemService != null) {
            return (WifiP2pManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.net.wifi.p2p.WifiP2pManager");
    }

    @NotNull
    public static final WindowManager getWindowManager(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Object systemService = context.getSystemService("window");
        if (systemService != null) {
            return (WindowManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
    }
}
