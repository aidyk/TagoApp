package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.glxn.qrgen.core.scheme.SchemeUtil;

public final class WebvttParserUtil {
    private static final Pattern COMMENT = Pattern.compile("^NOTE(( |\t).*)?$");
    private static final Pattern HEADER = Pattern.compile("^﻿?WEBVTT(( |\t).*)?$");

    private WebvttParserUtil() {
    }

    public static void validateWebvttHeaderLine(ParsableByteArray parsableByteArray) throws SubtitleDecoderException {
        String readLine = parsableByteArray.readLine();
        if (readLine == null || !HEADER.matcher(readLine).matches()) {
            throw new SubtitleDecoderException("Expected WEBVTT. Got " + readLine);
        }
    }

    public static long parseTimestampUs(String str) throws NumberFormatException {
        String[] split = str.split("\\.", 2);
        long j = 0;
        for (String str2 : split[0].split(SchemeUtil.DEFAULT_KEY_VALUE_SEPARATOR)) {
            j = (j * 60) + Long.parseLong(str2);
        }
        return ((j * 1000) + Long.parseLong(split[1])) * 1000;
    }

    public static float parsePercentage(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static Matcher findNextCueHeader(ParsableByteArray parsableByteArray) {
        String readLine;
        while (true) {
            String readLine2 = parsableByteArray.readLine();
            if (readLine2 == null) {
                return null;
            }
            if (COMMENT.matcher(readLine2).matches()) {
                do {
                    readLine = parsableByteArray.readLine();
                    if (readLine == null) {
                        break;
                    }
                } while (!readLine.isEmpty());
            } else {
                Matcher matcher = WebvttCueParser.CUE_HEADER_PATTERN.matcher(readLine2);
                if (matcher.matches()) {
                    return matcher;
                }
            }
        }
    }
}
