package io.fabric.sdk.android.services.events;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.QueueFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class QueueFileEventStorage implements EventsStorage {
    private final Context context;
    private QueueFile queueFile = new QueueFile(this.workingFile);
    private File targetDirectory;
    private final String targetDirectoryName;
    private final File workingDirectory;
    private final File workingFile;

    public QueueFileEventStorage(Context context2, File file, String str, String str2) throws IOException {
        this.context = context2;
        this.workingDirectory = file;
        this.targetDirectoryName = str2;
        this.workingFile = new File(this.workingDirectory, str);
        createTargetDirectory();
    }

    private void createTargetDirectory() {
        this.targetDirectory = new File(this.workingDirectory, this.targetDirectoryName);
        if (!this.targetDirectory.exists()) {
            this.targetDirectory.mkdirs();
        }
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public void add(byte[] bArr) throws IOException {
        this.queueFile.add(bArr);
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public int getWorkingFileUsedSizeInBytes() {
        return this.queueFile.usedBytes();
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public void rollOver(String str) throws IOException {
        this.queueFile.close();
        move(this.workingFile, new File(this.targetDirectory, str));
        this.queueFile = new QueueFile(this.workingFile);
    }

    private void move(File file, File file2) throws IOException {
        Throwable th;
        FileInputStream fileInputStream;
        OutputStream moveOutputStream;
        OutputStream outputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                moveOutputStream = getMoveOutputStream(file2);
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
                CommonUtils.closeOrLog(outputStream, "Failed to close output stream");
                file.delete();
                throw th;
            }
            try {
                CommonUtils.copyStream(fileInputStream, moveOutputStream, new byte[1024]);
                CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
                CommonUtils.closeOrLog(moveOutputStream, "Failed to close output stream");
                file.delete();
            } catch (Throwable th3) {
                outputStream = moveOutputStream;
                th = th3;
                CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
                CommonUtils.closeOrLog(outputStream, "Failed to close output stream");
                file.delete();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
            CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
            CommonUtils.closeOrLog(outputStream, "Failed to close output stream");
            file.delete();
            throw th;
        }
    }

    public OutputStream getMoveOutputStream(File file) throws IOException {
        return new FileOutputStream(file);
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public File getWorkingDirectory() {
        return this.workingDirectory;
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public File getRollOverDirectory() {
        return this.targetDirectory;
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public List<File> getBatchOfFilesToSend(int i) {
        ArrayList arrayList = new ArrayList();
        for (File file : this.targetDirectory.listFiles()) {
            arrayList.add(file);
            if (arrayList.size() >= i) {
                break;
            }
        }
        return arrayList;
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public void deleteFilesInRollOverDirectory(List<File> list) {
        for (File file : list) {
            CommonUtils.logControlled(this.context, String.format("deleting sent analytics file %s", file.getName()));
            file.delete();
        }
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public List<File> getAllFilesInRollOverDirectory() {
        return Arrays.asList(this.targetDirectory.listFiles());
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public void deleteWorkingFile() {
        try {
            this.queueFile.close();
        } catch (IOException unused) {
        }
        this.workingFile.delete();
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public boolean isWorkingFileEmpty() {
        return this.queueFile.isEmpty();
    }

    @Override // io.fabric.sdk.android.services.events.EventsStorage
    public boolean canWorkingFileStore(int i, int i2) {
        return this.queueFile.hasSpaceFor(i, i2);
    }
}
