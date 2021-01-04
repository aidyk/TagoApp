package org.apache.commons.io.output;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;

public class LockableFileWriter extends Writer {
    private static final String LCK = ".lck";
    private final File lockFile;
    private final Writer out;

    public LockableFileWriter(String str) throws IOException {
        this(str, false, (String) null);
    }

    public LockableFileWriter(String str, boolean z) throws IOException {
        this(str, z, (String) null);
    }

    public LockableFileWriter(String str, boolean z, String str2) throws IOException {
        this(new File(str), z, str2);
    }

    public LockableFileWriter(File file) throws IOException {
        this(file, false, (String) null);
    }

    public LockableFileWriter(File file, boolean z) throws IOException {
        this(file, z, (String) null);
    }

    public LockableFileWriter(File file, boolean z, String str) throws IOException {
        this(file, Charset.defaultCharset(), z, str);
    }

    public LockableFileWriter(File file, Charset charset) throws IOException {
        this(file, charset, false, (String) null);
    }

    public LockableFileWriter(File file, String str) throws IOException {
        this(file, str, false, (String) null);
    }

    public LockableFileWriter(File file, Charset charset, boolean z, String str) throws IOException {
        File absoluteFile = file.getAbsoluteFile();
        if (absoluteFile.getParentFile() != null) {
            FileUtils.forceMkdir(absoluteFile.getParentFile());
        }
        if (!absoluteFile.isDirectory()) {
            File file2 = new File(str == null ? System.getProperty("java.io.tmpdir") : str);
            FileUtils.forceMkdir(file2);
            testLockDir(file2);
            this.lockFile = new File(file2, absoluteFile.getName() + LCK);
            createLock();
            this.out = initWriter(absoluteFile, charset, z);
            return;
        }
        throw new IOException("File specified is a directory");
    }

    public LockableFileWriter(File file, String str, boolean z, String str2) throws IOException {
        this(file, Charsets.toCharset(str), z, str2);
    }

    private void testLockDir(File file) throws IOException {
        if (!file.exists()) {
            throw new IOException("Could not find lockDir: " + file.getAbsolutePath());
        } else if (!file.canWrite()) {
            throw new IOException("Could not write to lockDir: " + file.getAbsolutePath());
        }
    }

    private void createLock() throws IOException {
        synchronized (LockableFileWriter.class) {
            if (this.lockFile.createNewFile()) {
                this.lockFile.deleteOnExit();
            } else {
                throw new IOException("Can't write file, lock " + this.lockFile.getAbsolutePath() + " exists");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.io.Writer initWriter(java.io.File r5, java.nio.charset.Charset r6, boolean r7) throws java.io.IOException {
        /*
            r4 = this;
            boolean r0 = r5.exists()
            r1 = 0
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x002f, RuntimeException -> 0x001c }
            java.lang.String r3 = r5.getAbsolutePath()     // Catch:{ IOException -> 0x002f, RuntimeException -> 0x001c }
            r2.<init>(r3, r7)     // Catch:{ IOException -> 0x002f, RuntimeException -> 0x001c }
            java.io.OutputStreamWriter r7 = new java.io.OutputStreamWriter     // Catch:{ IOException -> 0x001a, RuntimeException -> 0x0018 }
            java.nio.charset.Charset r6 = org.apache.commons.io.Charsets.toCharset(r6)     // Catch:{ IOException -> 0x001a, RuntimeException -> 0x0018 }
            r7.<init>(r2, r6)     // Catch:{ IOException -> 0x001a, RuntimeException -> 0x0018 }
            return r7
        L_0x0018:
            r6 = move-exception
            goto L_0x001e
        L_0x001a:
            r6 = move-exception
            goto L_0x0031
        L_0x001c:
            r6 = move-exception
            r2 = r1
        L_0x001e:
            org.apache.commons.io.IOUtils.closeQuietly(r1)
            org.apache.commons.io.IOUtils.closeQuietly(r2)
            java.io.File r7 = r4.lockFile
            org.apache.commons.io.FileUtils.deleteQuietly(r7)
            if (r0 != 0) goto L_0x002e
            org.apache.commons.io.FileUtils.deleteQuietly(r5)
        L_0x002e:
            throw r6
        L_0x002f:
            r6 = move-exception
            r2 = r1
        L_0x0031:
            org.apache.commons.io.IOUtils.closeQuietly(r1)
            org.apache.commons.io.IOUtils.closeQuietly(r2)
            java.io.File r7 = r4.lockFile
            org.apache.commons.io.FileUtils.deleteQuietly(r7)
            if (r0 != 0) goto L_0x0041
            org.apache.commons.io.FileUtils.deleteQuietly(r5)
        L_0x0041:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.output.LockableFileWriter.initWriter(java.io.File, java.nio.charset.Charset, boolean):java.io.Writer");
    }

    @Override // java.io.Closeable, java.io.Writer, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } finally {
            this.lockFile.delete();
        }
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.out.write(i);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.out.write(cArr);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.out.write(cArr, i, i2);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.out.write(str);
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        this.out.write(str, i, i2);
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }
}
