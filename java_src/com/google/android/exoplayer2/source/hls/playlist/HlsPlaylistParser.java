package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.facebook.share.internal.MessengerShareContentUtility;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private static final String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    private static final String BOOLEAN_FALSE = "NO";
    private static final String BOOLEAN_TRUE = "YES";
    private static final String METHOD_AES128 = "AES-128";
    private static final String METHOD_NONE = "NONE";
    private static final String PLAYLIST_HEADER = "#EXTM3U";
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern(MessengerShareContentUtility.PREVIEW_DEFAULT);
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128)");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    private static final String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    private static final String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String TAG_ENDLIST = "#EXT-X-ENDLIST";
    private static final String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    private static final String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    private static final String TAG_KEY = "#EXT-X-KEY";
    private static final String TAG_MEDIA = "#EXT-X-MEDIA";
    private static final String TAG_MEDIA_DURATION = "#EXTINF";
    private static final String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    private static final String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    private static final String TAG_PREFIX = "#EXT";
    private static final String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    private static final String TAG_START = "#EXT-X-START";
    private static final String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    private static final String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    private static final String TAG_VERSION = "#EXT-X-VERSION";
    private static final String TYPE_AUDIO = "AUDIO";
    private static final String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    private static final String TYPE_SUBTITLES = "SUBTITLES";
    private static final String TYPE_VIDEO = "VIDEO";

    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        LinkedList linkedList = new LinkedList();
        try {
            if (checkPlaylistHeader(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (trim.startsWith(TAG_STREAM_INF)) {
                                linkedList.add(trim);
                                HlsMasterPlaylist parseMasterPlaylist = parseMasterPlaylist(new LineIterator(linkedList, bufferedReader), uri.toString());
                                Util.closeQuietly(bufferedReader);
                                return parseMasterPlaylist;
                            } else if (trim.startsWith(TAG_TARGET_DURATION) || trim.startsWith(TAG_MEDIA_SEQUENCE) || trim.startsWith(TAG_MEDIA_DURATION) || trim.startsWith(TAG_KEY) || trim.startsWith(TAG_BYTERANGE) || trim.equals(TAG_DISCONTINUITY) || trim.equals(TAG_DISCONTINUITY_SEQUENCE) || trim.equals(TAG_ENDLIST)) {
                                linkedList.add(trim);
                            } else {
                                linkedList.add(trim);
                            }
                        }
                    } else {
                        Util.closeQuietly(bufferedReader);
                        throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                    }
                }
                linkedList.add(trim);
                return parseMediaPlaylist(new LineIterator(linkedList, bufferedReader), uri.toString());
            }
            throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
        } finally {
            Util.closeQuietly(bufferedReader);
        }
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        if (read == 239) {
            if (!(bufferedReader.read() == 187 && bufferedReader.read() == 191)) {
                return false;
            }
            read = bufferedReader.read();
        }
        int skipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, read);
        int length = PLAYLIST_HEADER.length();
        int i = skipIgnorableWhitespace;
        for (int i2 = 0; i2 < length; i2++) {
            if (i != PLAYLIST_HEADER.charAt(i2)) {
                return false;
            }
            i = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, i));
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00d4  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00ee  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x001e A[SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist parseMasterPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.LineIterator r24, java.lang.String r25) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 426
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.parseMasterPlaylist(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser$LineIterator, java.lang.String):com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist");
    }

    private static int parseSelectionFlags(String str) {
        int i = 0;
        int i2 = (parseBooleanAttribute(str, REGEX_DEFAULT, false) ? 1 : 0) | (parseBooleanAttribute(str, REGEX_FORCED, false) ? 2 : 0);
        if (parseBooleanAttribute(str, REGEX_AUTOSELECT, false)) {
            i = 4;
        }
        return i2 | i;
    }

    private static HlsMediaPlaylist parseMediaPlaylist(LineIterator lineIterator, String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long j = -9223372036854775807L;
        long j2 = -9223372036854775807L;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        boolean z2 = false;
        boolean z3 = false;
        HlsMediaPlaylist.Segment segment = null;
        int i6 = 0;
        long j7 = -1;
        boolean z4 = false;
        loop0:
        while (true) {
            String str2 = null;
            String str3 = null;
            while (true) {
                if (!lineIterator.hasNext()) {
                    break loop0;
                }
                String next = lineIterator.next();
                if (next.startsWith(TAG_PREFIX)) {
                    arrayList2.add(next);
                }
                if (next.startsWith(TAG_PLAYLIST_TYPE)) {
                    String parseStringAttr = parseStringAttr(next, REGEX_PLAYLIST_TYPE);
                    if ("VOD".equals(parseStringAttr)) {
                        i2 = 1;
                    } else if ("EVENT".equals(parseStringAttr)) {
                        i2 = 2;
                    }
                } else if (next.startsWith(TAG_START)) {
                    j = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
                } else if (next.startsWith(TAG_INIT_SEGMENT)) {
                    String parseStringAttr2 = parseStringAttr(next, REGEX_URI);
                    String parseOptionalStringAttr = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE);
                    if (parseOptionalStringAttr != null) {
                        String[] split = parseOptionalStringAttr.split("@");
                        j7 = Long.parseLong(split[0]);
                        if (split.length > 1) {
                            j4 = Long.parseLong(split[1]);
                        }
                    }
                    segment = new HlsMediaPlaylist.Segment(parseStringAttr2, j4, j7);
                    j4 = 0;
                    j7 = -1;
                } else if (next.startsWith(TAG_TARGET_DURATION)) {
                    j2 = C.MICROS_PER_SECOND * ((long) parseIntAttr(next, REGEX_TARGET_DURATION));
                } else if (next.startsWith(TAG_MEDIA_SEQUENCE)) {
                    i6 = parseIntAttr(next, REGEX_MEDIA_SEQUENCE);
                    i4 = i6;
                } else if (next.startsWith(TAG_VERSION)) {
                    i5 = parseIntAttr(next, REGEX_VERSION);
                } else if (next.startsWith(TAG_MEDIA_DURATION)) {
                    j6 = (long) (parseDoubleAttr(next, REGEX_MEDIA_DURATION) * 1000000.0d);
                } else if (next.startsWith(TAG_KEY)) {
                    z4 = METHOD_AES128.equals(parseStringAttr(next, REGEX_METHOD));
                    if (z4) {
                        String parseStringAttr3 = parseStringAttr(next, REGEX_URI);
                        str2 = parseOptionalStringAttr(next, REGEX_IV);
                        str3 = parseStringAttr3;
                    }
                } else if (next.startsWith(TAG_BYTERANGE)) {
                    String[] split2 = parseStringAttr(next, REGEX_BYTERANGE).split("@");
                    j7 = Long.parseLong(split2[0]);
                    if (split2.length > 1) {
                        j4 = Long.parseLong(split2[1]);
                    }
                } else if (next.startsWith(TAG_DISCONTINUITY_SEQUENCE)) {
                    i3 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                    z = true;
                } else if (next.equals(TAG_DISCONTINUITY)) {
                    i++;
                } else if (next.startsWith(TAG_PROGRAM_DATE_TIME)) {
                    if (j3 == 0) {
                        j3 = C.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j5;
                    }
                } else if (!next.startsWith("#")) {
                    String hexString = !z4 ? null : str2 != null ? str2 : Integer.toHexString(i6);
                    int i7 = i6 + 1;
                    if (j7 == -1) {
                        j4 = 0;
                    }
                    arrayList.add(new HlsMediaPlaylist.Segment(next, j6, i, j5, z4, str3, hexString, j4, j7));
                    j5 += j6;
                    if (j7 != -1) {
                        j4 += j7;
                    }
                    i6 = i7;
                    j6 = 0;
                    j7 = -1;
                } else if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                    z2 = true;
                } else if (next.equals(TAG_ENDLIST)) {
                    z3 = true;
                }
            }
        }
        return new HlsMediaPlaylist(i2, str, arrayList2, j, j3, z, i3, i4, i5, j2, z2, z3, j3 != 0, segment, arrayList);
    }

    private static int parseIntAttr(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(parseStringAttr(str, pattern));
    }

    private static double parseDoubleAttr(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(parseStringAttr(str, pattern));
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private static String parseStringAttr(String str, Pattern pattern) throws ParserException {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() == 1) {
            return matcher.group(1);
        }
        throw new ParserException("Couldn't match " + pattern.pattern() + " in " + str);
    }

    private static boolean parseBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals(BOOLEAN_TRUE) : z;
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        return Pattern.compile(str + "=(" + BOOLEAN_FALSE + "|" + BOOLEAN_TRUE + ")");
    }

    /* access modifiers changed from: private */
    public static class LineIterator {
        private final Queue<String> extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public boolean hasNext() throws IOException {
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = this.extraLines.poll();
                return true;
            }
            do {
                String readLine = this.reader.readLine();
                this.next = readLine;
                if (readLine == null) {
                    return false;
                }
                this.next = this.next.trim();
            } while (this.next.isEmpty());
            return true;
        }

        public String next() throws IOException {
            if (!hasNext()) {
                return null;
            }
            String str = this.next;
            this.next = null;
            return str;
        }
    }
}
