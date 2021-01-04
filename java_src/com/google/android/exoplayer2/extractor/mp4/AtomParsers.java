package com.google.android.exoplayer2.extractor.mp4;

import android.util.Log;
import android.util.Pair;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* access modifiers changed from: package-private */
public final class AtomParsers {
    private static final String TAG = "AtomParsers";
    private static final int TYPE_cenc = Util.getIntegerCodeForString(C.CENC_TYPE_cenc);
    private static final int TYPE_clcp = Util.getIntegerCodeForString("clcp");
    private static final int TYPE_meta = Util.getIntegerCodeForString("meta");
    private static final int TYPE_sbtl = Util.getIntegerCodeForString("sbtl");
    private static final int TYPE_soun = Util.getIntegerCodeForString("soun");
    private static final int TYPE_subt = Util.getIntegerCodeForString("subt");
    private static final int TYPE_text = Util.getIntegerCodeForString(MimeTypes.BASE_TYPE_TEXT);
    private static final int TYPE_vide = Util.getIntegerCodeForString("vide");

    /* access modifiers changed from: private */
    public interface SampleSizeBox {
        int getSampleCount();

        boolean isFixedSampleSize();

        int readNextSampleSize();
    }

    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, DrmInitData drmInitData, boolean z) throws ParserException {
        long j2;
        Atom.LeafAtom leafAtom2;
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int parseHdlr = parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data);
        if (parseHdlr == -1) {
            return null;
        }
        TkhdData parseTkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        long j3 = C.TIME_UNSET;
        if (j == C.TIME_UNSET) {
            j2 = parseTkhd.duration;
            leafAtom2 = leafAtom;
        } else {
            leafAtom2 = leafAtom;
            j2 = j;
        }
        long parseMvhd = parseMvhd(leafAtom2.data);
        if (j2 != C.TIME_UNSET) {
            j3 = Util.scaleLargeTimestamp(j2, C.MICROS_PER_SECOND, parseMvhd);
        }
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        Pair<Long, String> parseMdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdData parseStsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, parseTkhd.id, parseTkhd.rotationDegrees, (String) parseMdhd.second, drmInitData, z);
        Pair<long[], long[]> parseEdts = parseEdts(containerAtom.getContainerAtomOfType(Atom.TYPE_edts));
        if (parseStsd.format == null) {
            return null;
        }
        return new Track(parseTkhd.id, parseHdlr, ((Long) parseMdhd.first).longValue(), parseMvhd, j3, parseStsd.format, parseStsd.requiredSampleTransformation, parseStsd.trackEncryptionBoxes, parseStsd.nalUnitLengthFieldLength, (long[]) parseEdts.first, (long[]) parseEdts.second);
    }

    public static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox sampleSizeBox;
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        long[] jArr;
        int[] iArr2;
        long[] jArr2;
        long j;
        int[] iArr3;
        long[] jArr3;
        boolean z2;
        long[] jArr4;
        int i5;
        long[] jArr5;
        int[] iArr4;
        int[] iArr5;
        int[] iArr6;
        int i6;
        SampleSizeBox sampleSizeBox2;
        Track track2 = track;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            sampleSizeBox = new StszSampleSizeBox(leafAtomOfType);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 != null) {
                sampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
            } else {
                throw new ParserException("Track has no sample table size information");
            }
        }
        int sampleCount = sampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_co64);
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stsc).data;
        ParsableByteArray parsableByteArray3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stts).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int readUnsignedIntToInt = parsableByteArray3.readUnsignedIntToInt() - 1;
        int readUnsignedIntToInt2 = parsableByteArray3.readUnsignedIntToInt();
        int readUnsignedIntToInt3 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            i = parsableByteArray5.readUnsignedIntToInt();
        } else {
            i = 0;
        }
        int i7 = -1;
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            i2 = parsableByteArray4.readUnsignedIntToInt();
            if (i2 > 0) {
                i7 = parsableByteArray4.readUnsignedIntToInt() - 1;
            } else {
                parsableByteArray4 = null;
            }
        } else {
            i2 = 0;
        }
        long j2 = 0;
        if (!(sampleSizeBox.isFixedSampleSize() && MimeTypes.AUDIO_RAW.equals(track2.format.sampleMimeType) && readUnsignedIntToInt == 0 && i == 0 && i2 == 0)) {
            jArr2 = new long[sampleCount];
            iArr = new int[sampleCount];
            jArr = new long[sampleCount];
            iArr2 = new int[sampleCount];
            int i8 = i7;
            long j3 = 0;
            long j4 = 0;
            int i9 = i2;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = readUnsignedIntToInt;
            int i14 = i;
            int i15 = 0;
            int i16 = 0;
            int i17 = readUnsignedIntToInt2;
            int i18 = readUnsignedIntToInt3;
            while (i15 < sampleCount) {
                while (i11 == 0) {
                    Assertions.checkState(chunkIterator.moveNext());
                    long j5 = chunkIterator.offset;
                    i11 = chunkIterator.numSamples;
                    i18 = i18;
                    i13 = i13;
                    j3 = j5;
                }
                if (parsableByteArray5 != null) {
                    while (i12 == 0 && i14 > 0) {
                        i12 = parsableByteArray5.readUnsignedIntToInt();
                        i10 = parsableByteArray5.readInt();
                        i14--;
                    }
                    i12--;
                }
                jArr2[i15] = j3;
                iArr[i15] = sampleSizeBox.readNextSampleSize();
                if (iArr[i15] > i16) {
                    i6 = sampleCount;
                    sampleSizeBox2 = sampleSizeBox;
                    i16 = iArr[i15];
                } else {
                    i6 = sampleCount;
                    sampleSizeBox2 = sampleSizeBox;
                }
                jArr[i15] = j4 + ((long) i10);
                iArr2[i15] = parsableByteArray4 == null ? 1 : 0;
                if (i15 == i8) {
                    iArr2[i15] = 1;
                    i9--;
                    if (i9 > 0) {
                        i8 = parsableByteArray4.readUnsignedIntToInt() - 1;
                    }
                }
                int i19 = i18;
                j4 += (long) i19;
                i17--;
                if (i17 != 0 || i13 <= 0) {
                    i13 = i13;
                } else {
                    int readUnsignedIntToInt4 = parsableByteArray3.readUnsignedIntToInt();
                    int readUnsignedIntToInt5 = parsableByteArray3.readUnsignedIntToInt();
                    i13--;
                    i17 = readUnsignedIntToInt4;
                    i19 = readUnsignedIntToInt5;
                }
                j3 += (long) iArr[i15];
                i11--;
                i15++;
                i10 = i10;
                sampleSizeBox = sampleSizeBox2;
                sampleCount = i6;
                i8 = i8;
                i18 = i19;
                i9 = i9;
            }
            i3 = sampleCount;
            Assertions.checkArgument(i12 == 0);
            while (i14 > 0) {
                Assertions.checkArgument(parsableByteArray5.readUnsignedIntToInt() == 0);
                parsableByteArray5.readInt();
                i14--;
            }
            if (i9 == 0 && i17 == 0 && i11 == 0 && i13 == 0) {
                track2 = track;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Inconsistent stbl box for track ");
                track2 = track;
                sb.append(track2.id);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i9);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(i17);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i11);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(i13);
                Log.w(TAG, sb.toString());
            }
            j = j4;
            i4 = i16;
        } else {
            i3 = sampleCount;
            long[] jArr6 = new long[chunkIterator.length];
            int[] iArr7 = new int[chunkIterator.length];
            while (chunkIterator.moveNext()) {
                jArr6[chunkIterator.index] = chunkIterator.offset;
                iArr7[chunkIterator.index] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results rechunk = FixedSampleSizeRechunker.rechunk(sampleSizeBox.readNextSampleSize(), jArr6, iArr7, (long) readUnsignedIntToInt3);
            jArr2 = rechunk.offsets;
            iArr = rechunk.sizes;
            int i20 = rechunk.maximumSize;
            jArr = rechunk.timestamps;
            iArr2 = rechunk.flags;
            i4 = i20;
            j = 0;
        }
        if (track2.editListDurations == null || gaplessInfoHolder.hasGaplessInfo()) {
            Util.scaleLargeTimestampsInPlace(jArr, C.MICROS_PER_SECOND, track2.timescale);
            return new TrackSampleTable(jArr2, iArr, i4, jArr, iArr2);
        }
        if (track2.editListDurations.length == 1 && track2.type == 1 && jArr.length >= 2) {
            long j6 = track2.editListMediaTimes[0];
            long scaleLargeTimestamp = Util.scaleLargeTimestamp(track2.editListDurations[0], track2.timescale, track2.movieTimescale) + j6;
            if (jArr[0] <= j6 && j6 < jArr[1] && jArr[jArr.length - 1] < scaleLargeTimestamp && scaleLargeTimestamp <= j) {
                long j7 = j - scaleLargeTimestamp;
                long scaleLargeTimestamp2 = Util.scaleLargeTimestamp(j6 - jArr[0], (long) track2.format.sampleRate, track2.timescale);
                long scaleLargeTimestamp3 = Util.scaleLargeTimestamp(j7, (long) track2.format.sampleRate, track2.timescale);
                if (!(scaleLargeTimestamp2 == 0 && scaleLargeTimestamp3 == 0) && scaleLargeTimestamp2 <= 2147483647L && scaleLargeTimestamp3 <= 2147483647L) {
                    gaplessInfoHolder.encoderDelay = (int) scaleLargeTimestamp2;
                    gaplessInfoHolder.encoderPadding = (int) scaleLargeTimestamp3;
                    Util.scaleLargeTimestampsInPlace(jArr, C.MICROS_PER_SECOND, track2.timescale);
                    return new TrackSampleTable(jArr2, iArr, i4, jArr, iArr2);
                }
            }
        }
        if (track2.editListDurations.length == 1) {
            char c = 0;
            if (track2.editListDurations[0] == 0) {
                int i21 = 0;
                while (i21 < jArr.length) {
                    jArr[i21] = Util.scaleLargeTimestamp(jArr[i21] - track2.editListMediaTimes[c], C.MICROS_PER_SECOND, track2.timescale);
                    i21++;
                    c = 0;
                }
                return new TrackSampleTable(jArr2, iArr, i4, jArr, iArr2);
            }
        }
        boolean z3 = track2.type == 1;
        int i22 = 0;
        boolean z4 = false;
        int i23 = 0;
        int i24 = 0;
        while (i22 < track2.editListDurations.length) {
            long j8 = track2.editListMediaTimes[i22];
            if (j8 != -1) {
                iArr6 = iArr;
                long scaleLargeTimestamp4 = Util.scaleLargeTimestamp(track2.editListDurations[i22], track2.timescale, track2.movieTimescale);
                int binarySearchCeil = Util.binarySearchCeil(jArr, j8, true, true);
                int binarySearchCeil2 = Util.binarySearchCeil(jArr, j8 + scaleLargeTimestamp4, z3, false);
                i23 += binarySearchCeil2 - binarySearchCeil;
                z4 |= i24 != binarySearchCeil;
                i24 = binarySearchCeil2;
            } else {
                iArr6 = iArr;
            }
            i22++;
            iArr = iArr6;
        }
        int[] iArr8 = iArr;
        boolean z5 = (i23 != i3) | z4;
        long[] jArr7 = z5 ? new long[i23] : jArr2;
        int[] iArr9 = z5 ? new int[i23] : iArr8;
        if (z5) {
            i4 = 0;
        }
        int[] iArr10 = z5 ? new int[i23] : iArr2;
        long[] jArr8 = new long[i23];
        int i25 = i4;
        int i26 = 0;
        int i27 = 0;
        while (i26 < track2.editListDurations.length) {
            long j9 = track2.editListMediaTimes[i26];
            long j10 = track2.editListDurations[i26];
            if (j9 != -1) {
                i5 = i26;
                jArr4 = jArr8;
                int binarySearchCeil3 = Util.binarySearchCeil(jArr, j9, true, true);
                int binarySearchCeil4 = Util.binarySearchCeil(jArr, Util.scaleLargeTimestamp(j10, track2.timescale, track2.movieTimescale) + j9, z3, false);
                if (z5) {
                    int i28 = binarySearchCeil4 - binarySearchCeil3;
                    jArr5 = jArr7;
                    System.arraycopy(jArr2, binarySearchCeil3, jArr5, i27, i28);
                    iArr4 = iArr8;
                    System.arraycopy(iArr4, binarySearchCeil3, iArr9, i27, i28);
                    z2 = z3;
                    iArr5 = iArr10;
                    System.arraycopy(iArr2, binarySearchCeil3, iArr5, i27, i28);
                } else {
                    z2 = z3;
                    iArr4 = iArr8;
                    iArr5 = iArr10;
                    jArr5 = jArr7;
                }
                int i29 = i25;
                while (binarySearchCeil3 < binarySearchCeil4) {
                    jArr4[i27] = Util.scaleLargeTimestamp(j2, C.MICROS_PER_SECOND, track2.movieTimescale) + Util.scaleLargeTimestamp(jArr[binarySearchCeil3] - j9, C.MICROS_PER_SECOND, track2.timescale);
                    if (z5 && iArr9[i27] > i29) {
                        i29 = iArr4[binarySearchCeil3];
                    }
                    i27++;
                    binarySearchCeil3++;
                    jArr2 = jArr2;
                    iArr2 = iArr2;
                    j9 = j9;
                }
                jArr3 = jArr2;
                iArr3 = iArr2;
                i25 = i29;
            } else {
                z2 = z3;
                jArr5 = jArr7;
                jArr4 = jArr8;
                jArr3 = jArr2;
                iArr3 = iArr2;
                iArr5 = iArr10;
                i5 = i26;
                iArr4 = iArr8;
            }
            j2 += j10;
            i26 = i5 + 1;
            iArr8 = iArr4;
            jArr7 = jArr5;
            jArr8 = jArr4;
            jArr2 = jArr3;
            iArr2 = iArr3;
            iArr10 = iArr5;
            z3 = z2;
        }
        boolean z6 = false;
        for (int i30 = 0; i30 < iArr10.length && !z6; i30++) {
            z6 |= (iArr10[i30] & 1) != 0;
        }
        if (z6) {
            return new TrackSampleTable(jArr7, iArr9, i25, jArr8, iArr10);
        }
        throw new ParserException("The edited sample sequence does not contain a sync sample.");
    }

    public static Metadata parseUdta(Atom.LeafAtom leafAtom, boolean z) {
        if (z) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_meta) {
                parsableByteArray.setPosition(position);
                return parseMetaAtom(parsableByteArray, position + readInt);
            }
            parsableByteArray.skipBytes(readInt - 8);
        }
        return null;
    }

    private static Metadata parseMetaAtom(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_ilst) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + readInt);
            }
            parsableByteArray.skipBytes(readInt - 8);
        }
        return null;
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry parseIlstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (parseIlstElement != null) {
                arrayList.add(parseIlstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        if (Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0) {
            i = 16;
        }
        parsableByteArray.skipBytes(i);
        return parsableByteArray.readUnsignedInt();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        boolean z;
        int i = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        int readInt = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        if (parseFullAtomVersion == 0) {
            i = 4;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= i) {
                z = true;
                break;
            } else if (parsableByteArray.data[position + i3] != -1) {
                z = false;
                break;
            } else {
                i3++;
            }
        }
        long j = C.TIME_UNSET;
        if (z) {
            parsableByteArray.skipBytes(i);
        } else {
            long readUnsignedInt = parseFullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (readUnsignedInt != 0) {
                j = readUnsignedInt;
            }
        }
        parsableByteArray.skipBytes(16);
        int readInt2 = parsableByteArray.readInt();
        int readInt3 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int readInt4 = parsableByteArray.readInt();
        int readInt5 = parsableByteArray.readInt();
        if (readInt2 == 0 && readInt3 == 65536 && readInt4 == -65536 && readInt5 == 0) {
            i2 = 90;
        } else if (readInt2 == 0 && readInt3 == -65536 && readInt4 == 65536 && readInt5 == 0) {
            i2 = SubsamplingScaleImageView.ORIENTATION_270;
        } else if (readInt2 == -65536 && readInt3 == 0 && readInt4 == 0 && readInt5 == -65536) {
            i2 = SubsamplingScaleImageView.ORIENTATION_180;
        }
        return new TkhdData(readInt, j, i2);
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        int readInt = parsableByteArray.readInt();
        if (readInt == TYPE_soun) {
            return 1;
        }
        if (readInt == TYPE_vide) {
            return 2;
        }
        if (readInt == TYPE_text || readInt == TYPE_sbtl || readInt == TYPE_subt || readInt == TYPE_clcp) {
            return 3;
        }
        return readInt == TYPE_meta ? 4 : -1;
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullAtomVersion == 0) {
            i = 4;
        }
        parsableByteArray.skipBytes(i);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(readUnsignedInt), "" + ((char) (((readUnsignedShort >> 10) & 31) + 96)) + ((char) (((readUnsignedShort >> 5) & 31) + 96)) + ((char) ((readUnsignedShort & 31) + 96)));
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(readInt);
        for (int i3 = 0; i3 < readInt; i3++) {
            int position = parsableByteArray.getPosition();
            int readInt2 = parsableByteArray.readInt();
            Assertions.checkArgument(readInt2 > 0, "childAtomSize should be positive");
            int readInt3 = parsableByteArray.readInt();
            if (readInt3 == Atom.TYPE_avc1 || readInt3 == Atom.TYPE_avc3 || readInt3 == Atom.TYPE_encv || readInt3 == Atom.TYPE_mp4v || readInt3 == Atom.TYPE_hvc1 || readInt3 == Atom.TYPE_hev1 || readInt3 == Atom.TYPE_s263 || readInt3 == Atom.TYPE_vp08 || readInt3 == Atom.TYPE_vp09) {
                parseVideoSampleEntry(parsableByteArray, readInt3, position, readInt2, i, i2, drmInitData, stsdData, i3);
            } else if (readInt3 == Atom.TYPE_mp4a || readInt3 == Atom.TYPE_enca || readInt3 == Atom.TYPE_ac_3 || readInt3 == Atom.TYPE_ec_3 || readInt3 == Atom.TYPE_dtsc || readInt3 == Atom.TYPE_dtse || readInt3 == Atom.TYPE_dtsh || readInt3 == Atom.TYPE_dtsl || readInt3 == Atom.TYPE_samr || readInt3 == Atom.TYPE_sawb || readInt3 == Atom.TYPE_lpcm || readInt3 == Atom.TYPE_sowt || readInt3 == Atom.TYPE__mp3 || readInt3 == Atom.TYPE_alac) {
                parseAudioSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, z, drmInitData, stsdData, i3);
            } else if (readInt3 == Atom.TYPE_TTML || readInt3 == Atom.TYPE_tx3g || readInt3 == Atom.TYPE_wvtt || readInt3 == Atom.TYPE_stpp || readInt3 == Atom.TYPE_c608) {
                parseTextSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, stsdData);
            } else if (readInt3 == Atom.TYPE_camm) {
                stsdData.format = Format.createSampleFormat(Integer.toString(i), MimeTypes.APPLICATION_CAMERA_MOTION, null, -1, null);
            }
            parsableByteArray.setPosition(position + readInt2);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) throws ParserException {
        String str2;
        String str3;
        parsableByteArray.setPosition(i2 + 8 + 8);
        List list = null;
        long j = Long.MAX_VALUE;
        if (i == Atom.TYPE_TTML) {
            str2 = MimeTypes.APPLICATION_TTML;
        } else if (i == Atom.TYPE_tx3g) {
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            parsableByteArray.readBytes(bArr, 0, i5);
            list = Collections.singletonList(bArr);
            str3 = MimeTypes.APPLICATION_TX3G;
            stsdData.format = Format.createTextSampleFormat(Integer.toString(i4), str3, null, -1, 0, str, -1, null, j, list);
        } else if (i == Atom.TYPE_wvtt) {
            str2 = MimeTypes.APPLICATION_MP4VTT;
        } else if (i == Atom.TYPE_stpp) {
            str2 = MimeTypes.APPLICATION_TTML;
            j = 0;
        } else if (i == Atom.TYPE_c608) {
            str2 = MimeTypes.APPLICATION_MP4CEA608;
            stsdData.requiredSampleTransformation = 1;
        } else {
            throw new IllegalStateException();
        }
        str3 = str2;
        stsdData.format = Format.createTextSampleFormat(Integer.toString(i4), str3, null, -1, 0, str, -1, null, j, list);
    }

    /* JADX WARNING: Removed duplicated region for block: B:74:0x0154 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0155  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void parseVideoSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray r22, int r23, int r24, int r25, int r26, int r27, com.google.android.exoplayer2.drm.DrmInitData r28, com.google.android.exoplayer2.extractor.mp4.AtomParsers.StsdData r29, int r30) throws com.google.android.exoplayer2.ParserException {
        /*
        // Method dump skipped, instructions count: 374
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.AtomParsers.parseVideoSampleEntry(com.google.android.exoplayer2.util.ParsableByteArray, int, int, int, int, int, com.google.android.exoplayer2.drm.DrmInitData, com.google.android.exoplayer2.extractor.mp4.AtomParsers$StsdData, int):void");
    }

    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType;
        if (containerAtom == null || (leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst)) == null) {
            return Pair.create(null, null);
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[readUnsignedIntToInt];
        long[] jArr2 = new long[readUnsignedIntToInt];
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            jArr[i] = parseFullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = parseFullAtomVersion == 1 ? parsableByteArray.readLong() : (long) parsableByteArray.readInt();
            if (parsableByteArray.readShort() == 1) {
                parsableByteArray.skipBytes(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return ((float) parsableByteArray.readUnsignedIntToInt()) / ((float) parsableByteArray.readUnsignedIntToInt());
    }

    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i5) {
        int i6;
        int i7;
        int i8;
        String str2;
        List list;
        String str3;
        DrmInitData drmInitData2;
        int i9;
        int i10;
        StsdData stsdData2;
        int i11;
        String str4;
        int i12;
        int i13;
        int i14 = i3;
        DrmInitData drmInitData3 = drmInitData;
        StsdData stsdData3 = stsdData;
        parsableByteArray.setPosition(i2 + 8 + 8);
        if (z) {
            i6 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            i7 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            i8 = parsableByteArray.readUnsignedFixedPoint1616();
            if (i6 == 1) {
                parsableByteArray.skipBytes(16);
            }
        } else if (i6 == 2) {
            parsableByteArray.skipBytes(16);
            i8 = (int) Math.round(parsableByteArray.readDouble());
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
            i7 = readUnsignedIntToInt;
        } else {
            return;
        }
        int position = parsableByteArray.getPosition();
        int i15 = i;
        if (i15 == Atom.TYPE_enca) {
            Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i2, i14);
            if (parseSampleEntryEncryptionData != null) {
                i15 = ((Integer) parseSampleEntryEncryptionData.first).intValue();
                if (drmInitData3 == null) {
                    drmInitData3 = null;
                } else {
                    drmInitData3 = drmInitData3.copyWithSchemeType(((TrackEncryptionBox) parseSampleEntryEncryptionData.second).schemeType);
                }
                stsdData3.trackEncryptionBoxes[i5] = (TrackEncryptionBox) parseSampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        DrmInitData drmInitData4 = drmInitData3;
        if (i15 == Atom.TYPE_ac_3) {
            str2 = MimeTypes.AUDIO_AC3;
        } else if (i15 == Atom.TYPE_ec_3) {
            str2 = MimeTypes.AUDIO_E_AC3;
        } else if (i15 == Atom.TYPE_dtsc) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (i15 == Atom.TYPE_dtsh || i15 == Atom.TYPE_dtsl) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (i15 == Atom.TYPE_dtse) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (i15 == Atom.TYPE_samr) {
            str2 = MimeTypes.AUDIO_AMR_NB;
        } else {
            str2 = i15 == Atom.TYPE_sawb ? MimeTypes.AUDIO_AMR_WB : (i15 == Atom.TYPE_lpcm || i15 == Atom.TYPE_sowt) ? MimeTypes.AUDIO_RAW : i15 == Atom.TYPE__mp3 ? MimeTypes.AUDIO_MPEG : i15 == Atom.TYPE_alac ? MimeTypes.AUDIO_ALAC : null;
        }
        int i16 = i8;
        int i17 = position;
        int i18 = i7;
        byte[] bArr = null;
        String str5 = str2;
        while (i17 - i2 < i14) {
            parsableByteArray.setPosition(i17);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == Atom.TYPE_esds || (z && readInt2 == Atom.TYPE_wave)) {
                i10 = readInt;
                i9 = i17;
                drmInitData2 = drmInitData4;
                stsdData2 = stsdData3;
                if (readInt2 == Atom.TYPE_esds) {
                    i11 = i9;
                } else {
                    i11 = findEsdsPosition(parsableByteArray, i9, i10);
                }
                if (i11 != -1) {
                    Pair<String, byte[]> parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, i11);
                    str4 = (String) parseEsdsFromParent.first;
                    bArr = (byte[]) parseEsdsFromParent.second;
                    if (MimeTypes.AUDIO_AAC.equals(str4)) {
                        Pair<Integer, Integer> parseAacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(bArr);
                        i16 = ((Integer) parseAacAudioSpecificConfig.first).intValue();
                        i18 = ((Integer) parseAacAudioSpecificConfig.second).intValue();
                    }
                } else {
                    str4 = str5;
                }
                str3 = str4;
            } else {
                if (readInt2 == Atom.TYPE_dac3) {
                    parsableByteArray.setPosition(i17 + 8);
                    stsdData3.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitData4);
                } else if (readInt2 == Atom.TYPE_dec3) {
                    parsableByteArray.setPosition(i17 + 8);
                    stsdData3.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitData4);
                } else {
                    if (readInt2 == Atom.TYPE_ddts) {
                        i12 = readInt;
                        str3 = str5;
                        i13 = i17;
                        drmInitData2 = drmInitData4;
                        stsdData2 = stsdData3;
                        stsdData2.format = Format.createAudioSampleFormat(Integer.toString(i4), str5, null, -1, -1, i18, i16, null, drmInitData2, 0, str);
                    } else {
                        i12 = readInt;
                        str3 = str5;
                        i13 = i17;
                        drmInitData2 = drmInitData4;
                        stsdData2 = stsdData3;
                        if (readInt2 == Atom.TYPE_alac) {
                            i10 = i12;
                            byte[] bArr2 = new byte[i10];
                            i9 = i13;
                            parsableByteArray.setPosition(i9);
                            parsableByteArray.readBytes(bArr2, 0, i10);
                            bArr = bArr2;
                        }
                    }
                    i10 = i12;
                    i9 = i13;
                }
                i10 = readInt;
                str3 = str5;
                i9 = i17;
                drmInitData2 = drmInitData4;
                stsdData2 = stsdData3;
            }
            i17 = i9 + i10;
            stsdData3 = stsdData2;
            drmInitData4 = drmInitData2;
            str5 = str3;
            i14 = i3;
        }
        if (stsdData3.format == null && str5 != null) {
            int i19 = MimeTypes.AUDIO_RAW.equals(str5) ? 2 : -1;
            String num = Integer.toString(i4);
            if (bArr == null) {
                list = null;
            } else {
                list = Collections.singletonList(bArr);
            }
            stsdData3.format = Format.createAudioSampleFormat(num, str5, null, -1, -1, i18, i16, i19, list, drmInitData4, 0, str);
        }
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i, int i2) {
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                return position;
            }
            position += readInt;
        }
        return -1;
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String str = null;
        switch (parsableByteArray.readUnsignedByte()) {
            case 32:
                str = MimeTypes.VIDEO_MP4V;
                break;
            case 33:
                str = MimeTypes.VIDEO_H264;
                break;
            case 35:
                str = MimeTypes.VIDEO_H265;
                break;
            case 64:
            case 102:
            case 103:
            case 104:
                str = MimeTypes.AUDIO_AAC;
                break;
            case 107:
                return Pair.create(MimeTypes.AUDIO_MPEG, null);
            case 165:
                str = MimeTypes.AUDIO_AC3;
                break;
            case 166:
                str = MimeTypes.AUDIO_E_AC3;
                break;
            case 169:
            case 172:
                return Pair.create(MimeTypes.AUDIO_DTS, null);
            case 170:
            case 171:
                return Pair.create(MimeTypes.AUDIO_DTS_HD, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int parseExpandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[parseExpandableClassSize];
        parsableByteArray.readBytes(bArr, 0, parseExpandableClassSize);
        return Pair.create(str, bArr);
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) {
        Pair<Integer, TrackEncryptionBox> parseSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_sinf && (parseSinfFromParent = parseSinfFromParent(parsableByteArray, position, readInt)) != null) {
                return parseSinfFromParent;
            }
            position += readInt;
        }
        return null;
    }

    private static Pair<Integer, TrackEncryptionBox> parseSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        String str = null;
        Integer num = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == Atom.TYPE_frma) {
                num = Integer.valueOf(parsableByteArray.readInt());
            } else if (readInt2 == Atom.TYPE_schm) {
                parsableByteArray.skipBytes(4);
                str = parsableByteArray.readString(4);
            } else if (readInt2 == Atom.TYPE_schi) {
                i4 = i3;
                i5 = readInt;
            }
            i3 += readInt;
        }
        if (str == null) {
            return null;
        }
        boolean z = true;
        Assertions.checkArgument(num != null, "frma atom is mandatory");
        Assertions.checkArgument(i4 != -1, "schi atom is mandatory");
        TrackEncryptionBox parseSchiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, str);
        if (parseSchiFromParent == null) {
            z = false;
        }
        Assertions.checkArgument(z, "tenc atom is mandatory");
        return Pair.create(num, parseSchiFromParent);
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_tenc) {
                int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (parseFullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = readUnsignedByte & 15;
                    i4 = (readUnsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, bArr2.length);
                if (z && readUnsignedByte2 == 0) {
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[readUnsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, readUnsignedByte3);
                }
                return new TrackEncryptionBox(z, str, readUnsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += readInt;
        }
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_proj) {
                return Arrays.copyOfRange(parsableByteArray.data, i3, readInt + i3);
            }
            i3 += readInt;
        }
        return null;
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte & WorkQueueKt.MASK;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & WorkQueueKt.MASK);
        }
        return i;
    }

    private AtomParsers() {
    }

    /* access modifiers changed from: private */
    public static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            Assertions.checkState(parsableByteArray.readInt() != 1 ? false : true, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            long j;
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            if (this.chunkOffsetsAreLongs) {
                j = this.chunkOffsets.readUnsignedLongToLong();
            } else {
                j = this.chunkOffsets.readUnsignedInt();
            }
            this.offset = j;
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    /* access modifiers changed from: private */
    public static final class TkhdData {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    /* access modifiers changed from: private */
    public static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    /* access modifiers changed from: package-private */
    public static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize = this.data.readUnsignedIntToInt();
        private final int sampleCount = this.data.readUnsignedIntToInt();

        public StszSampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            return this.fixedSampleSize == 0 ? this.data.readUnsignedIntToInt() : this.fixedSampleSize;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return this.fixedSampleSize != 0;
        }
    }

    /* access modifiers changed from: package-private */
    public static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize = (this.data.readUnsignedIntToInt() & 255);
        private final int sampleCount = this.data.readUnsignedIntToInt();
        private int sampleIndex;

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return false;
        }

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            if (this.fieldSize == 8) {
                return this.data.readUnsignedByte();
            }
            if (this.fieldSize == 16) {
                return this.data.readUnsignedShort();
            }
            int i = this.sampleIndex;
            this.sampleIndex = i + 1;
            if (i % 2 != 0) {
                return this.currentByte & 15;
            }
            this.currentByte = this.data.readUnsignedByte();
            return (this.currentByte & 240) >> 4;
        }
    }
}
