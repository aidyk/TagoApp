package com.polidea.rxandroidble2.internal;

import android.support.annotation.Nullable;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RxBleLog {
    private static final Pattern ANONYMOUS_CLASS = Pattern.compile("\\$\\d+$");
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    private static final ThreadLocal<String> NEXT_TAG = new ThreadLocal<>();
    public static final int NONE = Integer.MAX_VALUE;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int logLevel = Integer.MAX_VALUE;
    private static Logger logcatLogger = new Logger() {
        /* class com.polidea.rxandroidble2.internal.RxBleLog.AnonymousClass1 */

        @Override // com.polidea.rxandroidble2.internal.RxBleLog.Logger
        public void log(int i, String str, String str2) {
            Log.println(i, str, str2);
        }
    };
    private static Logger logger = logcatLogger;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LogLevel {
    }

    public interface Logger {
        void log(int i, String str, String str2);
    }

    private RxBleLog() {
    }

    public static void setLogger(@Nullable Logger logger2) {
        if (logger2 == null) {
            logger = logcatLogger;
        } else {
            logger = logger2;
        }
    }

    public static void setLogLevel(int i) {
        logLevel = i;
    }

    private static String createTag() {
        String str = NEXT_TAG.get();
        if (str != null) {
            NEXT_TAG.remove();
            return str;
        }
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        if (stackTrace.length >= 5) {
            String className = stackTrace[4].getClassName();
            Matcher matcher = ANONYMOUS_CLASS.matcher(className);
            if (matcher.find()) {
                className = matcher.replaceAll("");
            }
            String replace = className.replace("Impl", "").replace("RxBle", "");
            return "RxBle#" + replace.substring(replace.lastIndexOf(46) + 1);
        }
        throw new IllegalStateException("Synthetic stacktrace didn't have enough elements: are you using proguard?");
    }

    private static String formatString(String str, Object... objArr) {
        return objArr.length == 0 ? str : String.format(str, objArr);
    }

    public static void v(String str, Object... objArr) {
        throwShade(2, null, str, objArr);
    }

    public static void v(Throwable th, String str, Object... objArr) {
        throwShade(2, th, str, objArr);
    }

    public static void d(String str, Object... objArr) {
        throwShade(3, null, str, objArr);
    }

    public static void d(Throwable th, String str, Object... objArr) {
        throwShade(3, th, str, objArr);
    }

    public static void i(String str, Object... objArr) {
        throwShade(4, null, str, objArr);
    }

    public static void i(Throwable th, String str, Object... objArr) {
        throwShade(4, th, str, objArr);
    }

    public static void w(String str, Object... objArr) {
        throwShade(5, null, str, objArr);
    }

    public static void w(Throwable th, String str, Object... objArr) {
        throwShade(5, th, str, objArr);
    }

    public static void e(String str, Object... objArr) {
        throwShade(6, null, str, objArr);
    }

    public static void e(Throwable th, String str, Object... objArr) {
        throwShade(6, th, str, objArr);
    }

    private static void throwShade(int i, Throwable th, String str, Object... objArr) {
        if (i >= logLevel) {
            String formatString = formatString(str, objArr);
            if (formatString == null || formatString.length() == 0) {
                if (th != null) {
                    formatString = Log.getStackTraceString(th);
                } else {
                    return;
                }
            } else if (th != null) {
                formatString = formatString + "\n" + Log.getStackTraceString(th);
            }
            println(i, createTag(), formatString);
        }
    }

    private static void println(int i, String str, String str2) {
        if (str2.length() < 4000) {
            logger.log(i, str, str2);
            return;
        }
        for (String str3 : str2.split("\n")) {
            logger.log(i, str, str3);
        }
    }

    public static boolean isAtLeast(int i) {
        return logLevel <= i;
    }
}
