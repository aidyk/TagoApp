package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;

@KeepForSdk
public class ProcessUtils {
    private static String zzhe;
    private static int zzhf;

    private ProcessUtils() {
    }

    @KeepForSdk
    @Nullable
    public static String getMyProcessName() {
        if (zzhe == null) {
            if (zzhf == 0) {
                zzhf = Process.myPid();
            }
            zzhe = zzd(zzhf);
        }
        return zzhe;
    }

    @Nullable
    private static String zzd(int i) {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        if (i <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReader = zzj(sb.toString());
            try {
                String trim = bufferedReader.readLine().trim();
                IOUtils.closeQuietly(bufferedReader);
                return trim;
            } catch (IOException unused) {
                IOUtils.closeQuietly(bufferedReader);
                return null;
            } catch (Throwable th2) {
                bufferedReader2 = bufferedReader;
                th = th2;
                IOUtils.closeQuietly(bufferedReader2);
                throw th;
            }
        } catch (IOException unused2) {
            bufferedReader = null;
            IOUtils.closeQuietly(bufferedReader);
            return null;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(bufferedReader2);
            throw th;
        }
    }

    private static BufferedReader zzj(String str) throws IOException {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }
}
