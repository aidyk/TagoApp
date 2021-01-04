package com.crashlytics.android.core;

import com.crashlytics.android.core.BinaryImagesConverter;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* access modifiers changed from: package-private */
public class Sha1FileIdStrategy implements BinaryImagesConverter.FileIdStrategy {
    Sha1FileIdStrategy() {
    }

    @Override // com.crashlytics.android.core.BinaryImagesConverter.FileIdStrategy
    public String createId(File file) throws IOException {
        return getFileSHA(file.getPath());
    }

    private static String getFileSHA(String str) throws IOException {
        Throwable th;
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str));
            try {
                String sha1 = CommonUtils.sha1(bufferedInputStream2);
                CommonUtils.closeQuietly(bufferedInputStream2);
                return sha1;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                CommonUtils.closeQuietly(bufferedInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            CommonUtils.closeQuietly(bufferedInputStream);
            throw th;
        }
    }
}
