package com.google.android.exoplayer2.extractor.mp4;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.text.cea.CeaUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;
import java.util.UUID;

public final class FragmentedMp4Extractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() {
        /* class com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor.AnonymousClass1 */

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public Extractor[] createExtractors() {
            return new Extractor[]{new FragmentedMp4Extractor()};
        }
    };
    public static final int FLAG_ENABLE_CEA608_TRACK = 8;
    public static final int FLAG_ENABLE_EMSG_TRACK = 4;
    private static final int FLAG_SIDELOADED = 16;
    public static final int FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    public static final int FLAG_WORKAROUND_IGNORE_TFDT_BOX = 2;
    private static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final int SAMPLE_GROUP_TYPE_seig = Util.getIntegerCodeForString("seig");
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_ENCRYPTION_DATA = 2;
    private static final int STATE_READING_SAMPLE_CONTINUE = 4;
    private static final int STATE_READING_SAMPLE_START = 3;
    private static final String TAG = "FragmentedMp4Extractor";
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private TrackOutput[] cea608TrackOutputs;
    private final Stack<Atom.ContainerAtom> containerAtoms;
    private TrackBundle currentTrackBundle;
    private final ParsableByteArray defaultInitializationVector;
    private long durationUs;
    private final ParsableByteArray encryptionSignalByte;
    private long endOfMdatPosition;
    private TrackOutput eventMessageTrackOutput;
    private final byte[] extendedTypeScratch;
    private ExtractorOutput extractorOutput;
    private final int flags;
    private boolean haveOutputSeekMap;
    private final ParsableByteArray nalBuffer;
    private final ParsableByteArray nalPrefix;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private int pendingMetadataSampleBytes;
    private final LinkedList<MetadataSampleInfo> pendingMetadataSampleInfos;
    private boolean processSeiNalUnitPayload;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleSize;
    private long segmentIndexEarliestPresentationTimeUs;
    private final Track sideloadedTrack;
    private final TimestampAdjuster timestampAdjuster;
    private final SparseArray<TrackBundle> trackBundles;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    public FragmentedMp4Extractor() {
        this(0);
    }

    public FragmentedMp4Extractor(int i) {
        this(i, null);
    }

    public FragmentedMp4Extractor(int i, TimestampAdjuster timestampAdjuster2) {
        this(i, timestampAdjuster2, null);
    }

    public FragmentedMp4Extractor(int i, TimestampAdjuster timestampAdjuster2, Track track) {
        this.flags = i | (track != null ? 16 : 0);
        this.timestampAdjuster = timestampAdjuster2;
        this.sideloadedTrack = track;
        this.atomHeader = new ParsableByteArray(16);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalPrefix = new ParsableByteArray(5);
        this.nalBuffer = new ParsableByteArray();
        this.encryptionSignalByte = new ParsableByteArray(1);
        this.defaultInitializationVector = new ParsableByteArray();
        this.extendedTypeScratch = new byte[16];
        this.containerAtoms = new Stack<>();
        this.pendingMetadataSampleInfos = new LinkedList<>();
        this.trackBundles = new SparseArray<>();
        this.durationUs = C.TIME_UNSET;
        this.segmentIndexEarliestPresentationTimeUs = C.TIME_UNSET;
        enterReadingAtomHeaderState();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return Sniffer.sniffFragmented(extractorInput);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput2) {
        this.extractorOutput = extractorOutput2;
        if (this.sideloadedTrack != null) {
            TrackBundle trackBundle = new TrackBundle(extractorOutput2.track(0, this.sideloadedTrack.type));
            trackBundle.init(this.sideloadedTrack, new DefaultSampleValues(0, 0, 0, 0));
            this.trackBundles.put(0, trackBundle);
            maybeInitExtraTracks();
            this.extractorOutput.endTracks();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        int size = this.trackBundles.size();
        for (int i = 0; i < size; i++) {
            this.trackBundles.valueAt(i).reset();
        }
        this.pendingMetadataSampleInfos.clear();
        this.pendingMetadataSampleBytes = 0;
        this.containerAtoms.clear();
        enterReadingAtomHeaderState();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        while (true) {
            switch (this.parserState) {
                case 0:
                    if (readAtomHeader(extractorInput)) {
                        break;
                    } else {
                        return -1;
                    }
                case 1:
                    readAtomPayload(extractorInput);
                    break;
                case 2:
                    readEncryptionData(extractorInput);
                    break;
                default:
                    if (!readSample(extractorInput)) {
                        break;
                    } else {
                        return 0;
                    }
            }
        }
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private boolean readAtomHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (this.atomHeaderBytesRead == 0) {
            if (!extractorInput.readFully(this.atomHeader.data, 0, 8, true)) {
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.setPosition(0);
            this.atomSize = this.atomHeader.readUnsignedInt();
            this.atomType = this.atomHeader.readInt();
        }
        if (this.atomSize == 1) {
            extractorInput.readFully(this.atomHeader.data, 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.readUnsignedLongToLong();
        }
        if (this.atomSize >= ((long) this.atomHeaderBytesRead)) {
            long position = extractorInput.getPosition() - ((long) this.atomHeaderBytesRead);
            if (this.atomType == Atom.TYPE_moof) {
                int size = this.trackBundles.size();
                for (int i = 0; i < size; i++) {
                    TrackFragment trackFragment = this.trackBundles.valueAt(i).fragment;
                    trackFragment.atomPosition = position;
                    trackFragment.auxiliaryDataPosition = position;
                    trackFragment.dataPosition = position;
                }
            }
            if (this.atomType == Atom.TYPE_mdat) {
                this.currentTrackBundle = null;
                this.endOfMdatPosition = position + this.atomSize;
                if (!this.haveOutputSeekMap) {
                    this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                    this.haveOutputSeekMap = true;
                }
                this.parserState = 2;
                return true;
            }
            if (shouldParseContainerAtom(this.atomType)) {
                long position2 = (extractorInput.getPosition() + this.atomSize) - 8;
                this.containerAtoms.add(new Atom.ContainerAtom(this.atomType, position2));
                if (this.atomSize == ((long) this.atomHeaderBytesRead)) {
                    processAtomEnded(position2);
                } else {
                    enterReadingAtomHeaderState();
                }
            } else if (shouldParseLeafAtom(this.atomType)) {
                if (this.atomHeaderBytesRead != 8) {
                    throw new ParserException("Leaf atom defines extended atom size (unsupported).");
                } else if (this.atomSize <= 2147483647L) {
                    this.atomData = new ParsableByteArray((int) this.atomSize);
                    System.arraycopy(this.atomHeader.data, 0, this.atomData.data, 0, 8);
                    this.parserState = 1;
                } else {
                    throw new ParserException("Leaf atom with length > 2147483647 (unsupported).");
                }
            } else if (this.atomSize <= 2147483647L) {
                this.atomData = null;
                this.parserState = 1;
            } else {
                throw new ParserException("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw new ParserException("Atom size less than header length (unsupported).");
    }

    private void readAtomPayload(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i = ((int) this.atomSize) - this.atomHeaderBytesRead;
        if (this.atomData != null) {
            extractorInput.readFully(this.atomData.data, 8, i);
            onLeafAtomRead(new Atom.LeafAtom(this.atomType, this.atomData), extractorInput.getPosition());
        } else {
            extractorInput.skipFully(i);
        }
        processAtomEnded(extractorInput.getPosition());
    }

    private void processAtomEnded(long j) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j) {
            onContainerAtomRead(this.containerAtoms.pop());
        }
        enterReadingAtomHeaderState();
    }

    private void onLeafAtomRead(Atom.LeafAtom leafAtom, long j) throws ParserException {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(leafAtom);
        } else if (leafAtom.type == Atom.TYPE_sidx) {
            Pair<Long, ChunkIndex> parseSidx = parseSidx(leafAtom.data, j);
            this.segmentIndexEarliestPresentationTimeUs = ((Long) parseSidx.first).longValue();
            this.extractorOutput.seekMap((SeekMap) parseSidx.second);
            this.haveOutputSeekMap = true;
        } else if (leafAtom.type == Atom.TYPE_emsg) {
            onEmsgLeafAtomRead(leafAtom.data);
        }
    }

    private void onContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        if (containerAtom.type == Atom.TYPE_moov) {
            onMoovContainerAtomRead(containerAtom);
        } else if (containerAtom.type == Atom.TYPE_moof) {
            onMoofContainerAtomRead(containerAtom);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(containerAtom);
        }
    }

    private void onMoovContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        int i;
        int i2 = 0;
        boolean z = true;
        Assertions.checkState(this.sideloadedTrack == null, "Unexpected moov box.");
        DrmInitData drmInitDataFromAtoms = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mvex);
        SparseArray sparseArray = new SparseArray();
        int size = containerAtomOfType.leafChildren.size();
        long j = -9223372036854775807L;
        for (int i3 = 0; i3 < size; i3++) {
            Atom.LeafAtom leafAtom = containerAtomOfType.leafChildren.get(i3);
            if (leafAtom.type == Atom.TYPE_trex) {
                Pair<Integer, DefaultSampleValues> parseTrex = parseTrex(leafAtom.data);
                sparseArray.put(((Integer) parseTrex.first).intValue(), parseTrex.second);
            } else if (leafAtom.type == Atom.TYPE_mehd) {
                j = parseMehd(leafAtom.data);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = containerAtom.containerChildren.size();
        int i4 = 0;
        while (i4 < size2) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i4);
            if (containerAtom2.type == Atom.TYPE_trak) {
                i = i4;
                Track parseTrak = AtomParsers.parseTrak(containerAtom2, containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd), j, drmInitDataFromAtoms, false);
                if (parseTrak != null) {
                    sparseArray2.put(parseTrak.id, parseTrak);
                }
            } else {
                i = i4;
            }
            i4 = i + 1;
        }
        int size3 = sparseArray2.size();
        if (this.trackBundles.size() == 0) {
            while (i2 < size3) {
                Track track = (Track) sparseArray2.valueAt(i2);
                TrackBundle trackBundle = new TrackBundle(this.extractorOutput.track(i2, track.type));
                trackBundle.init(track, (DefaultSampleValues) sparseArray.get(track.id));
                this.trackBundles.put(track.id, trackBundle);
                this.durationUs = Math.max(this.durationUs, track.durationUs);
                i2++;
            }
            maybeInitExtraTracks();
            this.extractorOutput.endTracks();
            return;
        }
        if (this.trackBundles.size() != size3) {
            z = false;
        }
        Assertions.checkState(z);
        while (i2 < size3) {
            Track track2 = (Track) sparseArray2.valueAt(i2);
            this.trackBundles.get(track2.id).init(track2, (DefaultSampleValues) sparseArray.get(track2.id));
            i2++;
        }
    }

    private void onMoofContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        parseMoof(containerAtom, this.trackBundles, this.flags, this.extendedTypeScratch);
        DrmInitData drmInitDataFromAtoms = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        if (drmInitDataFromAtoms != null) {
            int size = this.trackBundles.size();
            for (int i = 0; i < size; i++) {
                this.trackBundles.valueAt(i).updateDrmInitData(drmInitDataFromAtoms);
            }
        }
    }

    private void maybeInitExtraTracks() {
        if ((this.flags & 4) != 0 && this.eventMessageTrackOutput == null) {
            this.eventMessageTrackOutput = this.extractorOutput.track(this.trackBundles.size(), 4);
            this.eventMessageTrackOutput.format(Format.createSampleFormat(null, MimeTypes.APPLICATION_EMSG, Long.MAX_VALUE));
        }
        if ((this.flags & 8) != 0 && this.cea608TrackOutputs == null) {
            TrackOutput track = this.extractorOutput.track(this.trackBundles.size() + 1, 3);
            track.format(Format.createTextSampleFormat(null, MimeTypes.APPLICATION_CEA608, 0, null));
            this.cea608TrackOutputs = new TrackOutput[]{track};
        }
    }

    private void onEmsgLeafAtomRead(ParsableByteArray parsableByteArray) {
        if (this.eventMessageTrackOutput != null) {
            parsableByteArray.setPosition(12);
            parsableByteArray.readNullTerminatedString();
            parsableByteArray.readNullTerminatedString();
            long scaleLargeTimestamp = Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), C.MICROS_PER_SECOND, parsableByteArray.readUnsignedInt());
            parsableByteArray.setPosition(12);
            int bytesLeft = parsableByteArray.bytesLeft();
            this.eventMessageTrackOutput.sampleData(parsableByteArray, bytesLeft);
            if (this.segmentIndexEarliestPresentationTimeUs != C.TIME_UNSET) {
                this.eventMessageTrackOutput.sampleMetadata(this.segmentIndexEarliestPresentationTimeUs + scaleLargeTimestamp, 1, bytesLeft, 0, null);
                return;
            }
            this.pendingMetadataSampleInfos.addLast(new MetadataSampleInfo(scaleLargeTimestamp, bytesLeft));
            this.pendingMetadataSampleBytes += bytesLeft;
        }
    }

    private static Pair<Integer, DefaultSampleValues> parseTrex(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(12);
        return Pair.create(Integer.valueOf(parsableByteArray.readInt()), new DefaultSampleValues(parsableByteArray.readUnsignedIntToInt() - 1, parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readInt()));
    }

    private static long parseMehd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
    }

    private static void parseMoof(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, int i, byte[] bArr) throws ParserException {
        int size = containerAtom.containerChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i2);
            if (containerAtom2.type == Atom.TYPE_traf) {
                parseTraf(containerAtom2, sparseArray, i, bArr);
            }
        }
    }

    private static void parseTraf(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, int i, byte[] bArr) throws ParserException {
        TrackBundle parseTfhd = parseTfhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tfhd).data, sparseArray, i);
        if (parseTfhd != null) {
            TrackFragment trackFragment = parseTfhd.fragment;
            long j = trackFragment.nextFragmentDecodeTime;
            parseTfhd.reset();
            if (containerAtom.getLeafAtomOfType(Atom.TYPE_tfdt) != null && (i & 2) == 0) {
                j = parseTfdt(containerAtom.getLeafAtomOfType(Atom.TYPE_tfdt).data);
            }
            parseTruns(containerAtom, parseTfhd, j, i);
            TrackEncryptionBox sampleDescriptionEncryptionBox = parseTfhd.track.getSampleDescriptionEncryptionBox(trackFragment.header.sampleDescriptionIndex);
            Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_saiz);
            if (leafAtomOfType != null) {
                parseSaiz(sampleDescriptionEncryptionBox, leafAtomOfType.data, trackFragment);
            }
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_saio);
            if (leafAtomOfType2 != null) {
                parseSaio(leafAtomOfType2.data, trackFragment);
            }
            Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_senc);
            if (leafAtomOfType3 != null) {
                parseSenc(leafAtomOfType3.data, trackFragment);
            }
            Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_sbgp);
            Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_sgpd);
            if (!(leafAtomOfType4 == null || leafAtomOfType5 == null)) {
                parseSgpd(leafAtomOfType4.data, leafAtomOfType5.data, sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.schemeType : null, trackFragment);
            }
            int size = containerAtom.leafChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                Atom.LeafAtom leafAtom = containerAtom.leafChildren.get(i2);
                if (leafAtom.type == Atom.TYPE_uuid) {
                    parseUuid(leafAtom.data, trackFragment, bArr);
                }
            }
        }
    }

    private static void parseTruns(Atom.ContainerAtom containerAtom, TrackBundle trackBundle, long j, int i) {
        List<Atom.LeafAtom> list = containerAtom.leafChildren;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Atom.LeafAtom leafAtom = list.get(i4);
            if (leafAtom.type == Atom.TYPE_trun) {
                ParsableByteArray parsableByteArray = leafAtom.data;
                parsableByteArray.setPosition(12);
                int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
                if (readUnsignedIntToInt > 0) {
                    i3 += readUnsignedIntToInt;
                    i2++;
                }
            }
        }
        trackBundle.currentTrackRunIndex = 0;
        trackBundle.currentSampleInTrackRun = 0;
        trackBundle.currentSampleIndex = 0;
        trackBundle.fragment.initTables(i2, i3);
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            Atom.LeafAtom leafAtom2 = list.get(i7);
            if (leafAtom2.type == Atom.TYPE_trun) {
                i6 = parseTrun(trackBundle, i5, j, i, leafAtom2.data, i6);
                i5++;
            }
        }
    }

    private static void parseSaiz(TrackEncryptionBox trackEncryptionBox, ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        int i;
        int i2 = trackEncryptionBox.initializationVectorSize;
        parsableByteArray.setPosition(8);
        boolean z = true;
        if ((Atom.parseFullAtomFlags(parsableByteArray.readInt()) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt == trackFragment.sampleCount) {
            if (readUnsignedByte == 0) {
                boolean[] zArr = trackFragment.sampleHasSubsampleEncryptionTable;
                i = 0;
                for (int i3 = 0; i3 < readUnsignedIntToInt; i3++) {
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    i += readUnsignedByte2;
                    zArr[i3] = readUnsignedByte2 > i2;
                }
            } else {
                if (readUnsignedByte <= i2) {
                    z = false;
                }
                i = (readUnsignedByte * readUnsignedIntToInt) + 0;
                Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, readUnsignedIntToInt, z);
            }
            trackFragment.initEncryptionData(i);
            return;
        }
        throw new ParserException("Length mismatch: " + readUnsignedIntToInt + ", " + trackFragment.sampleCount);
    }

    private static void parseSaio(ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        long j;
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        if ((Atom.parseFullAtomFlags(readInt) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt == 1) {
            int parseFullAtomVersion = Atom.parseFullAtomVersion(readInt);
            long j2 = trackFragment.auxiliaryDataPosition;
            if (parseFullAtomVersion == 0) {
                j = parsableByteArray.readUnsignedInt();
            } else {
                j = parsableByteArray.readUnsignedLongToLong();
            }
            trackFragment.auxiliaryDataPosition = j2 + j;
            return;
        }
        throw new ParserException("Unexpected saio entry count: " + readUnsignedIntToInt);
    }

    private static TrackBundle parseTfhd(ParsableByteArray parsableByteArray, SparseArray<TrackBundle> sparseArray, int i) {
        parsableByteArray.setPosition(8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        int readInt = parsableByteArray.readInt();
        if ((i & 16) != 0) {
            readInt = 0;
        }
        TrackBundle trackBundle = sparseArray.get(readInt);
        if (trackBundle == null) {
            return null;
        }
        if ((parseFullAtomFlags & 1) != 0) {
            long readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            trackBundle.fragment.dataPosition = readUnsignedLongToLong;
            trackBundle.fragment.auxiliaryDataPosition = readUnsignedLongToLong;
        }
        DefaultSampleValues defaultSampleValues = trackBundle.defaultSampleValues;
        trackBundle.fragment.header = new DefaultSampleValues((parseFullAtomFlags & 2) != 0 ? parsableByteArray.readUnsignedIntToInt() - 1 : defaultSampleValues.sampleDescriptionIndex, (parseFullAtomFlags & 8) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.duration, (parseFullAtomFlags & 16) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.size, (parseFullAtomFlags & 32) != 0 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues.flags);
        return trackBundle;
    }

    private static long parseTfdt(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        return Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
    }

    private static int parseTrun(TrackBundle trackBundle, int i, long j, int i2, ParsableByteArray parsableByteArray, int i3) {
        long[] jArr;
        long j2;
        long j3;
        boolean z;
        int i4;
        boolean z2;
        int i5;
        DefaultSampleValues defaultSampleValues;
        parsableByteArray.setPosition(8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        Track track = trackBundle.track;
        TrackFragment trackFragment = trackBundle.fragment;
        DefaultSampleValues defaultSampleValues2 = trackFragment.header;
        trackFragment.trunLength[i] = parsableByteArray.readUnsignedIntToInt();
        trackFragment.trunDataPosition[i] = trackFragment.dataPosition;
        if ((parseFullAtomFlags & 1) != 0) {
            long[] jArr2 = trackFragment.trunDataPosition;
            jArr2[i] = jArr2[i] + ((long) parsableByteArray.readInt());
        }
        boolean z3 = (parseFullAtomFlags & 4) != 0;
        int i6 = defaultSampleValues2.flags;
        if (z3) {
            i6 = parsableByteArray.readUnsignedIntToInt();
        }
        boolean z4 = (parseFullAtomFlags & 256) != 0;
        boolean z5 = (parseFullAtomFlags & 512) != 0;
        boolean z6 = (parseFullAtomFlags & 1024) != 0;
        boolean z7 = (parseFullAtomFlags & 2048) != 0;
        long j4 = 0;
        if (track.editListDurations != null && track.editListDurations.length == 1 && track.editListDurations[0] == 0) {
            j4 = Util.scaleLargeTimestamp(track.editListMediaTimes[0], 1000, track.timescale);
        }
        int[] iArr = trackFragment.sampleSizeTable;
        int[] iArr2 = trackFragment.sampleCompositionTimeOffsetTable;
        long[] jArr3 = trackFragment.sampleDecodingTimeTable;
        boolean[] zArr = trackFragment.sampleIsSyncFrameTable;
        boolean z8 = track.type == 2 && (i2 & 1) != 0;
        int i7 = i3 + trackFragment.trunLength[i];
        long j5 = track.timescale;
        if (i > 0) {
            jArr = jArr3;
            j2 = j4;
            j3 = trackFragment.nextFragmentDecodeTime;
        } else {
            jArr = jArr3;
            j2 = j4;
            j3 = j;
        }
        int i8 = i3;
        while (i8 < i7) {
            int readUnsignedIntToInt = z4 ? parsableByteArray.readUnsignedIntToInt() : defaultSampleValues2.duration;
            if (z5) {
                z = z4;
                i4 = parsableByteArray.readUnsignedIntToInt();
            } else {
                z = z4;
                i4 = defaultSampleValues2.size;
            }
            if (i8 == 0 && z3) {
                z2 = z3;
                i5 = i6;
            } else if (z6) {
                i5 = parsableByteArray.readInt();
                z2 = z3;
            } else {
                z2 = z3;
                i5 = defaultSampleValues2.flags;
            }
            if (z7) {
                defaultSampleValues = defaultSampleValues2;
                iArr2[i8] = (int) ((((long) parsableByteArray.readInt()) * 1000) / j5);
            } else {
                defaultSampleValues = defaultSampleValues2;
                iArr2[i8] = 0;
            }
            jArr[i8] = Util.scaleLargeTimestamp(j3, 1000, j5) - j2;
            iArr[i8] = i4;
            zArr[i8] = ((i5 >> 16) & 1) == 0 && (!z8 || i8 == 0);
            j3 += (long) readUnsignedIntToInt;
            i8++;
            z4 = z;
            z3 = z2;
            defaultSampleValues2 = defaultSampleValues;
        }
        trackFragment.nextFragmentDecodeTime = j3;
        return i7;
    }

    private static void parseUuid(ParsableByteArray parsableByteArray, TrackFragment trackFragment, byte[] bArr) throws ParserException {
        parsableByteArray.setPosition(8);
        parsableByteArray.readBytes(bArr, 0, 16);
        if (Arrays.equals(bArr, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            parseSenc(parsableByteArray, 16, trackFragment);
        }
    }

    private static void parseSenc(ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        parseSenc(parsableByteArray, 0, trackFragment);
    }

    private static void parseSenc(ParsableByteArray parsableByteArray, int i, TrackFragment trackFragment) throws ParserException {
        parsableByteArray.setPosition(i + 8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        if ((parseFullAtomFlags & 1) == 0) {
            boolean z = (parseFullAtomFlags & 2) != 0;
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if (readUnsignedIntToInt == trackFragment.sampleCount) {
                Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, readUnsignedIntToInt, z);
                trackFragment.initEncryptionData(parsableByteArray.bytesLeft());
                trackFragment.fillEncryptionData(parsableByteArray);
                return;
            }
            throw new ParserException("Length mismatch: " + readUnsignedIntToInt + ", " + trackFragment.sampleCount);
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    private static void parseSgpd(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, String str, TrackFragment trackFragment) throws ParserException {
        byte[] bArr;
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == SAMPLE_GROUP_TYPE_seig) {
            if (Atom.parseFullAtomVersion(readInt) == 1) {
                parsableByteArray.skipBytes(4);
            }
            if (parsableByteArray.readInt() == 1) {
                parsableByteArray2.setPosition(8);
                int readInt2 = parsableByteArray2.readInt();
                if (parsableByteArray2.readInt() == SAMPLE_GROUP_TYPE_seig) {
                    int parseFullAtomVersion = Atom.parseFullAtomVersion(readInt2);
                    if (parseFullAtomVersion == 1) {
                        if (parsableByteArray2.readUnsignedInt() == 0) {
                            throw new ParserException("Variable length description in sgpd found (unsupported)");
                        }
                    } else if (parseFullAtomVersion >= 2) {
                        parsableByteArray2.skipBytes(4);
                    }
                    if (parsableByteArray2.readUnsignedInt() == 1) {
                        parsableByteArray2.skipBytes(1);
                        int readUnsignedByte = parsableByteArray2.readUnsignedByte();
                        int i = (readUnsignedByte & 240) >> 4;
                        int i2 = readUnsignedByte & 15;
                        boolean z = parsableByteArray2.readUnsignedByte() == 1;
                        if (z) {
                            int readUnsignedByte2 = parsableByteArray2.readUnsignedByte();
                            byte[] bArr2 = new byte[16];
                            parsableByteArray2.readBytes(bArr2, 0, bArr2.length);
                            if (!z || readUnsignedByte2 != 0) {
                                bArr = null;
                            } else {
                                int readUnsignedByte3 = parsableByteArray2.readUnsignedByte();
                                byte[] bArr3 = new byte[readUnsignedByte3];
                                parsableByteArray2.readBytes(bArr3, 0, readUnsignedByte3);
                                bArr = bArr3;
                            }
                            trackFragment.definesEncryptionData = true;
                            trackFragment.trackEncryptionBox = new TrackEncryptionBox(z, str, readUnsignedByte2, bArr2, i, i2, bArr);
                            return;
                        }
                        return;
                    }
                    throw new ParserException("Entry count in sgpd != 1 (unsupported).");
                }
                return;
            }
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
    }

    private static Pair<Long, ChunkIndex> parseSidx(ParsableByteArray parsableByteArray, long j) throws ParserException {
        long readUnsignedLongToLong;
        long readUnsignedLongToLong2;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(4);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullAtomVersion == 0) {
            readUnsignedLongToLong = parsableByteArray.readUnsignedInt();
            readUnsignedLongToLong2 = j + parsableByteArray.readUnsignedInt();
        } else {
            readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            readUnsignedLongToLong2 = j + parsableByteArray.readUnsignedLongToLong();
        }
        long j2 = readUnsignedLongToLong2;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(readUnsignedLongToLong, C.MICROS_PER_SECOND, readUnsignedInt);
        parsableByteArray.skipBytes(2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int[] iArr = new int[readUnsignedShort];
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        long[] jArr3 = new long[readUnsignedShort];
        long j3 = readUnsignedLongToLong;
        long j4 = scaleLargeTimestamp;
        int i = 0;
        while (i < readUnsignedShort) {
            int readInt = parsableByteArray.readInt();
            if ((readInt & Integer.MIN_VALUE) == 0) {
                long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
                iArr[i] = readInt & Integer.MAX_VALUE;
                jArr[i] = j2;
                jArr3[i] = j4;
                j3 += readUnsignedInt2;
                j4 = Util.scaleLargeTimestamp(j3, C.MICROS_PER_SECOND, readUnsignedInt);
                jArr2[i] = j4 - jArr3[i];
                parsableByteArray.skipBytes(4);
                j2 += (long) iArr[i];
                i++;
                jArr2 = jArr2;
                iArr = iArr;
                jArr3 = jArr3;
                readUnsignedShort = readUnsignedShort;
                jArr = jArr;
            } else {
                throw new ParserException("Unhandled indirect reference");
            }
        }
        return Pair.create(Long.valueOf(scaleLargeTimestamp), new ChunkIndex(iArr, jArr, jArr2, jArr3));
    }

    private void readEncryptionData(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int size = this.trackBundles.size();
        TrackBundle trackBundle = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < size; i++) {
            TrackFragment trackFragment = this.trackBundles.valueAt(i).fragment;
            if (trackFragment.sampleEncryptionDataNeedsFill && trackFragment.auxiliaryDataPosition < j) {
                long j2 = trackFragment.auxiliaryDataPosition;
                trackBundle = this.trackBundles.valueAt(i);
                j = j2;
            }
        }
        if (trackBundle == null) {
            this.parserState = 3;
            return;
        }
        int position = (int) (j - extractorInput.getPosition());
        if (position >= 0) {
            extractorInput.skipFully(position);
            trackBundle.fragment.fillEncryptionData(extractorInput);
            return;
        }
        throw new ParserException("Offset to encryption data was negative.");
    }

    private boolean readSample(ExtractorInput extractorInput) throws IOException, InterruptedException {
        TrackOutput.CryptoData cryptoData;
        boolean z;
        TrackEncryptionBox trackEncryptionBox;
        int i;
        int i2 = 4;
        int i3 = 1;
        int i4 = 0;
        if (this.parserState == 3) {
            if (this.currentTrackBundle == null) {
                TrackBundle nextFragmentRun = getNextFragmentRun(this.trackBundles);
                if (nextFragmentRun == null) {
                    int position = (int) (this.endOfMdatPosition - extractorInput.getPosition());
                    if (position >= 0) {
                        extractorInput.skipFully(position);
                        enterReadingAtomHeaderState();
                        return false;
                    }
                    throw new ParserException("Offset to end of mdat was negative.");
                }
                int position2 = (int) (nextFragmentRun.fragment.trunDataPosition[nextFragmentRun.currentTrackRunIndex] - extractorInput.getPosition());
                if (position2 < 0) {
                    Log.w(TAG, "Ignoring negative offset to sample data.");
                    position2 = 0;
                }
                extractorInput.skipFully(position2);
                this.currentTrackBundle = nextFragmentRun;
            }
            this.sampleSize = this.currentTrackBundle.fragment.sampleSizeTable[this.currentTrackBundle.currentSampleIndex];
            if (this.currentTrackBundle.fragment.definesEncryptionData) {
                this.sampleBytesWritten = appendSampleEncryptionData(this.currentTrackBundle);
                this.sampleSize += this.sampleBytesWritten;
            } else {
                this.sampleBytesWritten = 0;
            }
            if (this.currentTrackBundle.track.sampleTransformation == 1) {
                this.sampleSize -= 8;
                extractorInput.skipFully(8);
            }
            this.parserState = 4;
            this.sampleCurrentNalBytesRemaining = 0;
        }
        TrackFragment trackFragment = this.currentTrackBundle.fragment;
        Track track = this.currentTrackBundle.track;
        TrackOutput trackOutput = this.currentTrackBundle.output;
        int i5 = this.currentTrackBundle.currentSampleIndex;
        if (track.nalUnitLengthFieldLength != 0) {
            byte[] bArr = this.nalPrefix.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i6 = track.nalUnitLengthFieldLength + 1;
            int i7 = 4 - track.nalUnitLengthFieldLength;
            while (this.sampleBytesWritten < this.sampleSize) {
                if (this.sampleCurrentNalBytesRemaining == 0) {
                    extractorInput.readFully(bArr, i7, i6);
                    this.nalPrefix.setPosition(i4);
                    this.sampleCurrentNalBytesRemaining = this.nalPrefix.readUnsignedIntToInt() - i3;
                    this.nalStartCode.setPosition(i4);
                    trackOutput.sampleData(this.nalStartCode, i2);
                    trackOutput.sampleData(this.nalPrefix, i3);
                    this.processSeiNalUnitPayload = this.cea608TrackOutputs != null && NalUnitUtil.isNalUnitSei(track.format.sampleMimeType, bArr[i2]);
                    this.sampleBytesWritten += 5;
                    this.sampleSize += i7;
                } else {
                    if (this.processSeiNalUnitPayload) {
                        this.nalBuffer.reset(this.sampleCurrentNalBytesRemaining);
                        extractorInput.readFully(this.nalBuffer.data, i4, this.sampleCurrentNalBytesRemaining);
                        trackOutput.sampleData(this.nalBuffer, this.sampleCurrentNalBytesRemaining);
                        i = this.sampleCurrentNalBytesRemaining;
                        int unescapeStream = NalUnitUtil.unescapeStream(this.nalBuffer.data, this.nalBuffer.limit());
                        this.nalBuffer.setPosition(MimeTypes.VIDEO_H265.equals(track.format.sampleMimeType) ? 1 : 0);
                        this.nalBuffer.setLimit(unescapeStream);
                        CeaUtil.consume(trackFragment.getSamplePresentationTime(i5) * 1000, this.nalBuffer, this.cea608TrackOutputs);
                    } else {
                        i = trackOutput.sampleData(extractorInput, this.sampleCurrentNalBytesRemaining, false);
                    }
                    this.sampleBytesWritten += i;
                    this.sampleCurrentNalBytesRemaining -= i;
                    i2 = 4;
                    i3 = 1;
                    i4 = 0;
                }
            }
        } else {
            while (this.sampleBytesWritten < this.sampleSize) {
                this.sampleBytesWritten += trackOutput.sampleData(extractorInput, this.sampleSize - this.sampleBytesWritten, false);
            }
        }
        long samplePresentationTime = trackFragment.getSamplePresentationTime(i5) * 1000;
        if (this.timestampAdjuster != null) {
            samplePresentationTime = this.timestampAdjuster.adjustSampleTimestamp(samplePresentationTime);
        }
        boolean z2 = trackFragment.sampleIsSyncFrameTable[i5];
        if (trackFragment.definesEncryptionData) {
            boolean z3 = z2 | true;
            if (trackFragment.trackEncryptionBox != null) {
                trackEncryptionBox = trackFragment.trackEncryptionBox;
            } else {
                trackEncryptionBox = track.getSampleDescriptionEncryptionBox(trackFragment.header.sampleDescriptionIndex);
            }
            z = z3;
            cryptoData = trackEncryptionBox.cryptoData;
        } else {
            z = z2;
            cryptoData = null;
        }
        int i8 = this.sampleSize;
        int i9 = z ? 1 : 0;
        int i10 = z ? 1 : 0;
        int i11 = z ? 1 : 0;
        trackOutput.sampleMetadata(samplePresentationTime, i9, i8, 0, cryptoData);
        while (!this.pendingMetadataSampleInfos.isEmpty()) {
            MetadataSampleInfo removeFirst = this.pendingMetadataSampleInfos.removeFirst();
            this.pendingMetadataSampleBytes -= removeFirst.size;
            this.eventMessageTrackOutput.sampleMetadata(removeFirst.presentationTimeDeltaUs + samplePresentationTime, 1, removeFirst.size, this.pendingMetadataSampleBytes, null);
        }
        this.currentTrackBundle.currentSampleIndex++;
        this.currentTrackBundle.currentSampleInTrackRun++;
        if (this.currentTrackBundle.currentSampleInTrackRun == trackFragment.trunLength[this.currentTrackBundle.currentTrackRunIndex]) {
            this.currentTrackBundle.currentTrackRunIndex++;
            this.currentTrackBundle.currentSampleInTrackRun = 0;
            this.currentTrackBundle = null;
        }
        this.parserState = 3;
        return true;
    }

    private static TrackBundle getNextFragmentRun(SparseArray<TrackBundle> sparseArray) {
        int size = sparseArray.size();
        TrackBundle trackBundle = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < size; i++) {
            TrackBundle valueAt = sparseArray.valueAt(i);
            if (valueAt.currentTrackRunIndex != valueAt.fragment.trunCount) {
                long j2 = valueAt.fragment.trunDataPosition[valueAt.currentTrackRunIndex];
                if (j2 < j) {
                    trackBundle = valueAt;
                    j = j2;
                }
            }
        }
        return trackBundle;
    }

    private int appendSampleEncryptionData(TrackBundle trackBundle) {
        TrackEncryptionBox trackEncryptionBox;
        ParsableByteArray parsableByteArray;
        int i;
        TrackFragment trackFragment = trackBundle.fragment;
        int i2 = trackFragment.header.sampleDescriptionIndex;
        if (trackFragment.trackEncryptionBox != null) {
            trackEncryptionBox = trackFragment.trackEncryptionBox;
        } else {
            trackEncryptionBox = trackBundle.track.getSampleDescriptionEncryptionBox(i2);
        }
        if (trackEncryptionBox.initializationVectorSize != 0) {
            parsableByteArray = trackFragment.sampleEncryptionData;
            i = trackEncryptionBox.initializationVectorSize;
        } else {
            byte[] bArr = trackEncryptionBox.defaultInitializationVector;
            this.defaultInitializationVector.reset(bArr, bArr.length);
            parsableByteArray = this.defaultInitializationVector;
            i = bArr.length;
        }
        boolean z = trackFragment.sampleHasSubsampleEncryptionTable[trackBundle.currentSampleIndex];
        this.encryptionSignalByte.data[0] = (byte) ((z ? 128 : 0) | i);
        this.encryptionSignalByte.setPosition(0);
        TrackOutput trackOutput = trackBundle.output;
        trackOutput.sampleData(this.encryptionSignalByte, 1);
        trackOutput.sampleData(parsableByteArray, i);
        if (!z) {
            return i + 1;
        }
        ParsableByteArray parsableByteArray2 = trackFragment.sampleEncryptionData;
        int readUnsignedShort = parsableByteArray2.readUnsignedShort();
        parsableByteArray2.skipBytes(-2);
        int i3 = (readUnsignedShort * 6) + 2;
        trackOutput.sampleData(parsableByteArray2, i3);
        return i + 1 + i3;
    }

    private static DrmInitData getDrmInitDataFromAtoms(List<Atom.LeafAtom> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            Atom.LeafAtom leafAtom = list.get(i);
            if (leafAtom.type == Atom.TYPE_pssh) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = leafAtom.data.data;
                UUID parseUuid = PsshAtomUtil.parseUuid(bArr);
                if (parseUuid == null) {
                    Log.w(TAG, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(parseUuid, null, MimeTypes.VIDEO_MP4, bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private static boolean shouldParseLeafAtom(int i) {
        return i == Atom.TYPE_hdlr || i == Atom.TYPE_mdhd || i == Atom.TYPE_mvhd || i == Atom.TYPE_sidx || i == Atom.TYPE_stsd || i == Atom.TYPE_tfdt || i == Atom.TYPE_tfhd || i == Atom.TYPE_tkhd || i == Atom.TYPE_trex || i == Atom.TYPE_trun || i == Atom.TYPE_pssh || i == Atom.TYPE_saiz || i == Atom.TYPE_saio || i == Atom.TYPE_senc || i == Atom.TYPE_uuid || i == Atom.TYPE_sbgp || i == Atom.TYPE_sgpd || i == Atom.TYPE_elst || i == Atom.TYPE_mehd || i == Atom.TYPE_emsg;
    }

    private static boolean shouldParseContainerAtom(int i) {
        return i == Atom.TYPE_moov || i == Atom.TYPE_trak || i == Atom.TYPE_mdia || i == Atom.TYPE_minf || i == Atom.TYPE_stbl || i == Atom.TYPE_moof || i == Atom.TYPE_traf || i == Atom.TYPE_mvex || i == Atom.TYPE_edts;
    }

    /* access modifiers changed from: private */
    public static final class MetadataSampleInfo {
        public final long presentationTimeDeltaUs;
        public final int size;

        public MetadataSampleInfo(long j, int i) {
            this.presentationTimeDeltaUs = j;
            this.size = i;
        }
    }

    /* access modifiers changed from: private */
    public static final class TrackBundle {
        public int currentSampleInTrackRun;
        public int currentSampleIndex;
        public int currentTrackRunIndex;
        public DefaultSampleValues defaultSampleValues;
        public final TrackFragment fragment = new TrackFragment();
        public final TrackOutput output;
        public Track track;

        public TrackBundle(TrackOutput trackOutput) {
            this.output = trackOutput;
        }

        public void init(Track track2, DefaultSampleValues defaultSampleValues2) {
            this.track = (Track) Assertions.checkNotNull(track2);
            this.defaultSampleValues = (DefaultSampleValues) Assertions.checkNotNull(defaultSampleValues2);
            this.output.format(track2.format);
            reset();
        }

        public void reset() {
            this.fragment.reset();
            this.currentSampleIndex = 0;
            this.currentTrackRunIndex = 0;
            this.currentSampleInTrackRun = 0;
        }

        public void updateDrmInitData(DrmInitData drmInitData) {
            TrackEncryptionBox sampleDescriptionEncryptionBox = this.track.getSampleDescriptionEncryptionBox(this.fragment.header.sampleDescriptionIndex);
            this.output.format(this.track.format.copyWithDrmInitData(drmInitData.copyWithSchemeType(sampleDescriptionEncryptionBox != null ? sampleDescriptionEncryptionBox.schemeType : null)));
        }
    }
}
