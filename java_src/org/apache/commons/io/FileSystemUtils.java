package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import net.glxn.qrgen.core.scheme.Wifi;
import org.apache.commons.lang3.StringUtils;

public class FileSystemUtils {
    private static final String DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();
    private static final int OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        String str = "df";
        int i = -1;
        try {
            String property = System.getProperty("os.name");
            if (property != null) {
                String lowerCase = property.toLowerCase(Locale.ENGLISH);
                if (lowerCase.indexOf("windows") != -1) {
                    i = 1;
                } else {
                    if (lowerCase.indexOf("linux") == -1 && lowerCase.indexOf("mpe/ix") == -1 && lowerCase.indexOf("freebsd") == -1 && lowerCase.indexOf("irix") == -1 && lowerCase.indexOf("digital unix") == -1 && lowerCase.indexOf("unix") == -1) {
                        if (lowerCase.indexOf("mac os x") == -1) {
                            if (lowerCase.indexOf("sun os") == -1 && lowerCase.indexOf("sunos") == -1) {
                                if (lowerCase.indexOf("solaris") == -1) {
                                    if (lowerCase.indexOf("hp-ux") == -1) {
                                        if (lowerCase.indexOf("aix") == -1) {
                                            i = 0;
                                        }
                                    }
                                    i = 3;
                                }
                            }
                            str = "/usr/xpg4/bin/df";
                            i = 3;
                        }
                    }
                    i = 2;
                }
                OS = i;
                DF = str;
                return;
            }
            throw new IOException("os.name not found");
        } catch (Exception unused) {
        }
    }

    @Deprecated
    public static long freeSpace(String str) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, false, -1);
    }

    public static long freeSpaceKb(String str) throws IOException {
        return freeSpaceKb(str, -1);
    }

    public static long freeSpaceKb(String str, long j) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, true, j);
    }

    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1);
    }

    public static long freeSpaceKb(long j) throws IOException {
        return freeSpaceKb(new File(".").getAbsolutePath(), j);
    }

    /* access modifiers changed from: package-private */
    public long freeSpaceOS(String str, int i, boolean z, long j) throws IOException {
        if (str != null) {
            switch (i) {
                case 0:
                    throw new IllegalStateException("Unsupported operating system");
                case 1:
                    return z ? freeSpaceWindows(str, j) / 1024 : freeSpaceWindows(str, j);
                case 2:
                    return freeSpaceUnix(str, z, false, j);
                case 3:
                    return freeSpaceUnix(str, z, true, j);
                default:
                    throw new IllegalStateException("Exception caught when determining operating system");
            }
        } else {
            throw new IllegalArgumentException("Path must not be empty");
        }
    }

    /* access modifiers changed from: package-private */
    public long freeSpaceWindows(String str, long j) throws IOException {
        String normalize = FilenameUtils.normalize(str, false);
        if (normalize.length() > 0 && normalize.charAt(0) != '\"') {
            normalize = "\"" + normalize + "\"";
        }
        List<String> performCommand = performCommand(new String[]{"cmd.exe", "/C", "dir /a /-c " + normalize}, Integer.MAX_VALUE, j);
        for (int size = performCommand.size() - 1; size >= 0; size--) {
            String str2 = performCommand.get(size);
            if (str2.length() > 0) {
                return parseDir(str2, normalize);
            }
        }
        throw new IOException("Command line 'dir /-c' did not return any info for path '" + normalize + "'");
    }

    /* access modifiers changed from: package-private */
    public long parseDir(String str, String str2) throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int length = str.length();
        while (true) {
            length--;
            i = 0;
            if (length < 0) {
                i2 = 0;
                break;
            } else if (Character.isDigit(str.charAt(length))) {
                i2 = length + 1;
                break;
            }
        }
        while (true) {
            if (length < 0) {
                i3 = 0;
                break;
            }
            char charAt = str.charAt(length);
            if (!Character.isDigit(charAt) && charAt != ',' && charAt != '.') {
                i3 = length + 1;
                break;
            }
            length--;
        }
        if (length >= 0) {
            StringBuilder sb = new StringBuilder(str.substring(i3, i2));
            while (i < sb.length()) {
                if (sb.charAt(i) == ',' || sb.charAt(i) == '.') {
                    i4 = i - 1;
                    sb.deleteCharAt(i);
                } else {
                    i4 = i;
                }
                i = i4 + 1;
            }
            return parseBytes(sb.toString(), str2);
        }
        throw new IOException("Command line 'dir /-c' did not return valid info for path '" + str2 + "'");
    }

    /* access modifiers changed from: package-private */
    public long freeSpaceUnix(String str, boolean z, boolean z2, long j) throws IOException {
        if (str.length() != 0) {
            String str2 = "-";
            if (z) {
                str2 = str2 + "k";
            }
            if (z2) {
                str2 = str2 + Wifi.PSK;
            }
            List<String> performCommand = performCommand(str2.length() > 1 ? new String[]{DF, str2, str} : new String[]{DF, str}, 3, j);
            if (performCommand.size() >= 2) {
                StringTokenizer stringTokenizer = new StringTokenizer(performCommand.get(1), StringUtils.SPACE);
                if (stringTokenizer.countTokens() >= 4) {
                    stringTokenizer.nextToken();
                } else if (stringTokenizer.countTokens() != 1 || performCommand.size() < 3) {
                    throw new IOException("Command line '" + DF + "' did not return data as expected " + "for path '" + str + "'- check path is valid");
                } else {
                    stringTokenizer = new StringTokenizer(performCommand.get(2), StringUtils.SPACE);
                }
                stringTokenizer.nextToken();
                stringTokenizer.nextToken();
                return parseBytes(stringTokenizer.nextToken(), str);
            }
            throw new IOException("Command line '" + DF + "' did not return info as expected " + "for path '" + str + "'- response was " + performCommand);
        }
        throw new IllegalArgumentException("Path must not be empty");
    }

    /* access modifiers changed from: package-private */
    public long parseBytes(String str, String str2) throws IOException {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong >= 0) {
                return parseLong;
            }
            throw new IOException("Command line '" + DF + "' did not find free space in response " + "for path '" + str2 + "'- check path is valid");
        } catch (NumberFormatException e) {
            throw new IOExceptionWithCause("Command line '" + DF + "' did not return numeric data as expected " + "for path '" + str2 + "'- check path is valid", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.io.BufferedReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x010b  */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<java.lang.String> performCommand(java.lang.String[] r10, int r11, long r12) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 271
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.FileSystemUtils.performCommand(java.lang.String[], int, long):java.util.List");
    }

    /* access modifiers changed from: package-private */
    public Process openProcess(String[] strArr) throws IOException {
        return Runtime.getRuntime().exec(strArr);
    }
}
