package net.glxn.qrgen.core;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import net.glxn.qrgen.core.exception.QRGenerationException;
import net.glxn.qrgen.core.image.ImageType;

public abstract class AbstractQRCode {
    protected int height = 125;
    protected final HashMap<EncodeHintType, Object> hints = new HashMap<>();
    protected ImageType imageType = ImageType.PNG;
    protected Writer qrWriter;
    protected int width = 125;

    public abstract File file();

    public abstract File file(String str);

    /* access modifiers changed from: protected */
    public abstract void writeToStream(OutputStream outputStream) throws IOException, WriterException;

    public ByteArrayOutputStream stream() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            writeToStream(byteArrayOutputStream);
            return byteArrayOutputStream;
        } catch (Exception e) {
            throw new QRGenerationException("Failed to create QR image from text due to underlying exception", e);
        }
    }

    public void writeTo(OutputStream outputStream) {
        try {
            writeToStream(outputStream);
        } catch (Exception e) {
            throw new QRGenerationException("Failed to create QR image from text due to underlying exception", e);
        }
    }

    /* access modifiers changed from: protected */
    public BitMatrix createMatrix(String str) throws WriterException {
        return this.qrWriter.encode(str, BarcodeFormat.QR_CODE, this.width, this.height, this.hints);
    }

    /* access modifiers changed from: protected */
    public File createTempFile() throws IOException {
        File createTempFile = File.createTempFile("QRCode", "." + this.imageType.toString().toLowerCase());
        createTempFile.deleteOnExit();
        return createTempFile;
    }

    /* access modifiers changed from: protected */
    public File createTempFile(String str) throws IOException {
        File createTempFile = File.createTempFile(str, "." + this.imageType.toString().toLowerCase());
        createTempFile.deleteOnExit();
        return createTempFile;
    }

    public Writer getQrWriter() {
        return this.qrWriter;
    }

    public void setQrWriter(Writer writer) {
        this.qrWriter = writer;
    }
}
