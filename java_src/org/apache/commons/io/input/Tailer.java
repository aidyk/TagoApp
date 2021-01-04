package org.apache.commons.io.input;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import org.apache.commons.lang3.CharUtils;

public class Tailer implements Runnable {
    private static final int DEFAULT_BUFSIZE = 4096;
    private static final int DEFAULT_DELAY_MILLIS = 1000;
    private static final String RAF_MODE = "r";
    private final long delayMillis;
    private final boolean end;
    private final File file;
    private final byte[] inbuf;
    private final TailerListener listener;
    private final boolean reOpen;
    private volatile boolean run;

    public Tailer(File file2, TailerListener tailerListener) {
        this(file2, tailerListener, 1000);
    }

    public Tailer(File file2, TailerListener tailerListener, long j) {
        this(file2, tailerListener, j, false);
    }

    public Tailer(File file2, TailerListener tailerListener, long j, boolean z) {
        this(file2, tailerListener, j, z, 4096);
    }

    public Tailer(File file2, TailerListener tailerListener, long j, boolean z, boolean z2) {
        this(file2, tailerListener, j, z, z2, 4096);
    }

    public Tailer(File file2, TailerListener tailerListener, long j, boolean z, int i) {
        this(file2, tailerListener, j, z, false, i);
    }

    public Tailer(File file2, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        this.run = true;
        this.file = file2;
        this.delayMillis = j;
        this.end = z;
        this.inbuf = new byte[i];
        this.listener = tailerListener;
        tailerListener.init(this);
        this.reOpen = z2;
    }

    public static Tailer create(File file2, TailerListener tailerListener, long j, boolean z, int i) {
        Tailer tailer = new Tailer(file2, tailerListener, j, z, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file2, TailerListener tailerListener, long j, boolean z, boolean z2, int i) {
        Tailer tailer = new Tailer(file2, tailerListener, j, z, z2, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file2, TailerListener tailerListener, long j, boolean z) {
        return create(file2, tailerListener, j, z, 4096);
    }

    public static Tailer create(File file2, TailerListener tailerListener, long j, boolean z, boolean z2) {
        return create(file2, tailerListener, j, z, z2, 4096);
    }

    public static Tailer create(File file2, TailerListener tailerListener, long j) {
        return create(file2, tailerListener, j, false);
    }

    public static Tailer create(File file2, TailerListener tailerListener) {
        return create(file2, tailerListener, 1000, false);
    }

    public File getFile() {
        return this.file;
    }

    public long getDelay() {
        return this.delayMillis;
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:1:0x0005 */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x001d A[SYNTHETIC, Splitter:B:11:0x001d] */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        // Method dump skipped, instructions count: 185
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.input.Tailer.run():void");
    }

    public void stop() {
        this.run = false;
    }

    private long readLines(RandomAccessFile randomAccessFile) throws IOException {
        int read;
        StringBuilder sb = new StringBuilder();
        long filePointer = randomAccessFile.getFilePointer();
        long j = filePointer;
        boolean z = false;
        while (this.run && (read = randomAccessFile.read(this.inbuf)) != -1) {
            long j2 = filePointer;
            for (int i = 0; i < read; i++) {
                byte b = this.inbuf[i];
                if (b == 10) {
                    this.listener.handle(sb.toString());
                    sb.setLength(0);
                    j2 = ((long) i) + j + 1;
                    z = false;
                } else if (b != 13) {
                    if (z) {
                        this.listener.handle(sb.toString());
                        sb.setLength(0);
                        j2 = ((long) i) + j + 1;
                        z = false;
                    }
                    sb.append((char) b);
                } else {
                    if (z) {
                        sb.append(CharUtils.CR);
                    }
                    z = true;
                }
            }
            j = randomAccessFile.getFilePointer();
            filePointer = j2;
        }
        randomAccessFile.seek(filePointer);
        return filePointer;
    }
}
