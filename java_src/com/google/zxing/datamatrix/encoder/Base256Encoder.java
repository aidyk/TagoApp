package com.google.zxing.datamatrix.encoder;

import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.helper.ItemTouchHelper;

/* access modifiers changed from: package-private */
public final class Base256Encoder implements Encoder {
    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 5;
    }

    Base256Encoder() {
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            sb.append(encoderContext.getCurrentChar());
            encoderContext.pos++;
            int lookAheadTest = HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode());
            if (lookAheadTest != getEncodingMode()) {
                encoderContext.signalEncoderChange(lookAheadTest);
                break;
            }
        }
        int length = sb.length() - 1;
        int codewordCount = encoderContext.getCodewordCount() + length + 1;
        encoderContext.updateSymbolInfo(codewordCount);
        boolean z = encoderContext.getSymbolInfo().getDataCapacity() - codewordCount > 0;
        if (encoderContext.hasMoreCharacters() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else if (length <= 1555) {
                sb.setCharAt(0, (char) ((length / ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + 249));
                sb.insert(1, (char) (length % ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION));
            } else {
                throw new IllegalStateException("Message length not in valid ranges: " + length);
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            encoderContext.writeCodeword(randomize255State(sb.charAt(i), encoderContext.getCodewordCount() + 1));
        }
    }

    private static char randomize255State(char c, int i) {
        int i2 = c + ((i * 149) % 255) + 1;
        return i2 <= 255 ? (char) i2 : (char) (i2 + InputDeviceCompat.SOURCE_ANY);
    }
}
