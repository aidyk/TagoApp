package com.getkeepsafe.relinker;

import com.getkeepsafe.relinker.ReLinker;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ApkLibraryInstaller implements ReLinker.LibraryInstaller {
    private static final int COPY_BUFFER_SIZE = 4096;
    private static final int MAX_TRIES = 5;

    /* JADX WARNING: Removed duplicated region for block: B:86:0x0106 A[SYNTHETIC, Splitter:B:86:0x0106] */
    @Override // com.getkeepsafe.relinker.ReLinker.LibraryInstaller
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void installLibrary(android.content.Context r19, java.lang.String[] r20, java.lang.String r21, java.io.File r22, com.getkeepsafe.relinker.ReLinkerInstance r23) {
        /*
        // Method dump skipped, instructions count: 266
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getkeepsafe.relinker.ApkLibraryInstaller.installLibrary(android.content.Context, java.lang.String[], java.lang.String, java.io.File, com.getkeepsafe.relinker.ReLinkerInstance):void");
    }

    private long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += (long) read;
        }
    }

    private void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
