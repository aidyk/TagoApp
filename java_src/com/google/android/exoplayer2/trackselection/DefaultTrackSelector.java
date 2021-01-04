package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class DefaultTrackSelector extends MappingTrackSelector {
    private static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;
    private static final int[] NO_TRACKS = new int[0];
    private static final int WITHIN_RENDERER_CAPABILITIES_BONUS = 1000;
    private final TrackSelection.Factory adaptiveTrackSelectionFactory;
    private final AtomicReference<Parameters> paramsReference;

    private static int compareFormatValues(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        }
        if (i2 == -1) {
            return 1;
        }
        return i - i2;
    }

    protected static boolean isSupported(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    public static final class Parameters {
        public final boolean allowMixedMimeAdaptiveness;
        public final boolean allowNonSeamlessAdaptiveness;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        public final int maxVideoBitrate;
        public final int maxVideoHeight;
        public final int maxVideoWidth;
        public final String preferredAudioLanguage;
        public final String preferredTextLanguage;
        public final int viewportHeight;
        public final boolean viewportOrientationMayChange;
        public final int viewportWidth;

        public Parameters() {
            this(null, null, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public Parameters(String str, String str2, boolean z, boolean z2, int i, int i2, int i3, boolean z3, boolean z4, int i4, int i5, boolean z5) {
            this.preferredAudioLanguage = str;
            this.preferredTextLanguage = str2;
            this.allowMixedMimeAdaptiveness = z;
            this.allowNonSeamlessAdaptiveness = z2;
            this.maxVideoWidth = i;
            this.maxVideoHeight = i2;
            this.maxVideoBitrate = i3;
            this.exceedVideoConstraintsIfNecessary = z3;
            this.exceedRendererCapabilitiesIfNecessary = z4;
            this.viewportWidth = i4;
            this.viewportHeight = i5;
            this.viewportOrientationMayChange = z5;
        }

        public Parameters withPreferredAudioLanguage(String str) {
            String normalizeLanguageCode = Util.normalizeLanguageCode(str);
            if (TextUtils.equals(normalizeLanguageCode, this.preferredAudioLanguage)) {
                return this;
            }
            return new Parameters(normalizeLanguageCode, this.preferredTextLanguage, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange);
        }

        public Parameters withPreferredTextLanguage(String str) {
            String normalizeLanguageCode = Util.normalizeLanguageCode(str);
            if (TextUtils.equals(normalizeLanguageCode, this.preferredTextLanguage)) {
                return this;
            }
            return new Parameters(this.preferredAudioLanguage, normalizeLanguageCode, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange);
        }

        public Parameters withAllowMixedMimeAdaptiveness(boolean z) {
            if (z == this.allowMixedMimeAdaptiveness) {
                return this;
            }
            return new Parameters(this.preferredAudioLanguage, this.preferredTextLanguage, z, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange);
        }

        public Parameters withAllowNonSeamlessAdaptiveness(boolean z) {
            if (z == this.allowNonSeamlessAdaptiveness) {
                return this;
            }
            return new Parameters(this.preferredAudioLanguage, this.preferredTextLanguage, this.allowMixedMimeAdaptiveness, z, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange);
        }

        public Parameters withMaxVideoSize(int i, int i2) {
            if (i == this.maxVideoWidth) {
                if (i2 == this.maxVideoHeight) {
                    return this;
                }
            }
            return new Parameters(this.preferredAudioLanguage, this.preferredTextLanguage, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, i, i2, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange);
        }

        public Parameters withMaxVideoBitrate(int i) {
            if (i == this.maxVideoBitrate) {
                return this;
            }
            return new Parameters(this.preferredAudioLanguage, this.preferredTextLanguage, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, i, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange);
        }

        public Parameters withMaxVideoSizeSd() {
            return withMaxVideoSize(1279, 719);
        }

        public Parameters withoutVideoSizeConstraints() {
            return withMaxVideoSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        public Parameters withExceedVideoConstraintsIfNecessary(boolean z) {
            if (z == this.exceedVideoConstraintsIfNecessary) {
                return this;
            }
            return new Parameters(this.preferredAudioLanguage, this.preferredTextLanguage, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, z, this.exceedRendererCapabilitiesIfNecessary, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange);
        }

        public Parameters withExceedRendererCapabilitiesIfNecessary(boolean z) {
            if (z == this.exceedRendererCapabilitiesIfNecessary) {
                return this;
            }
            return new Parameters(this.preferredAudioLanguage, this.preferredTextLanguage, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, z, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange);
        }

        public Parameters withViewportSize(int i, int i2, boolean z) {
            if (i == this.viewportWidth) {
                if (i2 == this.viewportHeight) {
                    if (z == this.viewportOrientationMayChange) {
                        return this;
                    }
                    return new Parameters(this.preferredAudioLanguage, this.preferredTextLanguage, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, i, i2, z);
                }
            }
            return new Parameters(this.preferredAudioLanguage, this.preferredTextLanguage, this.allowMixedMimeAdaptiveness, this.allowNonSeamlessAdaptiveness, this.maxVideoWidth, this.maxVideoHeight, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.exceedRendererCapabilitiesIfNecessary, i, i2, z);
        }

        public Parameters withViewportSizeFromContext(Context context, boolean z) {
            Point physicalDisplaySize = Util.getPhysicalDisplaySize(context);
            return withViewportSize(physicalDisplaySize.x, physicalDisplaySize.y, z);
        }

        public Parameters withoutViewportSizeConstraints() {
            return withViewportSize(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            if (this.allowMixedMimeAdaptiveness == parameters.allowMixedMimeAdaptiveness && this.allowNonSeamlessAdaptiveness == parameters.allowNonSeamlessAdaptiveness && this.maxVideoWidth == parameters.maxVideoWidth && this.maxVideoHeight == parameters.maxVideoHeight && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.viewportOrientationMayChange == parameters.viewportOrientationMayChange && this.viewportWidth == parameters.viewportWidth && this.viewportHeight == parameters.viewportHeight && this.maxVideoBitrate == parameters.maxVideoBitrate && TextUtils.equals(this.preferredAudioLanguage, parameters.preferredAudioLanguage) && TextUtils.equals(this.preferredTextLanguage, parameters.preferredTextLanguage)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((((this.preferredAudioLanguage.hashCode() * 31) + this.preferredTextLanguage.hashCode()) * 31) + (this.allowMixedMimeAdaptiveness ? 1 : 0)) * 31) + (this.allowNonSeamlessAdaptiveness ? 1 : 0)) * 31) + this.maxVideoWidth) * 31) + this.maxVideoHeight) * 31) + this.maxVideoBitrate) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight;
        }
    }

    public DefaultTrackSelector() {
        this((TrackSelection.Factory) null);
    }

    public DefaultTrackSelector(BandwidthMeter bandwidthMeter) {
        this(new AdaptiveTrackSelection.Factory(bandwidthMeter));
    }

    public DefaultTrackSelector(TrackSelection.Factory factory) {
        this.adaptiveTrackSelectionFactory = factory;
        this.paramsReference = new AtomicReference<>(new Parameters());
    }

    public void setParameters(Parameters parameters) {
        Assertions.checkNotNull(parameters);
        if (!this.paramsReference.getAndSet(parameters).equals(parameters)) {
            invalidate();
        }
    }

    public Parameters getParameters() {
        return this.paramsReference.get();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.trackselection.MappingTrackSelector
    public TrackSelection[] selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray[] trackGroupArrayArr, int[][][] iArr) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        TrackSelection[] trackSelectionArr = new TrackSelection[length];
        Parameters parameters = this.paramsReference.get();
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = true;
            if (i >= length) {
                break;
            }
            if (2 == rendererCapabilitiesArr[i].getTrackType()) {
                if (!z) {
                    trackSelectionArr[i] = selectVideoTrack(rendererCapabilitiesArr[i], trackGroupArrayArr[i], iArr[i], parameters, this.adaptiveTrackSelectionFactory);
                    z = trackSelectionArr[i] != null;
                }
                if (trackGroupArrayArr[i].length <= 0) {
                    z3 = false;
                }
                z2 |= z3;
            }
            i++;
        }
        boolean z4 = false;
        boolean z5 = false;
        for (int i2 = 0; i2 < length; i2++) {
            switch (rendererCapabilitiesArr[i2].getTrackType()) {
                case 1:
                    if (!z4) {
                        trackSelectionArr[i2] = selectAudioTrack(trackGroupArrayArr[i2], iArr[i2], parameters, z2 ? null : this.adaptiveTrackSelectionFactory);
                        if (trackSelectionArr[i2] != null) {
                            z4 = true;
                            break;
                        } else {
                            z4 = false;
                            break;
                        }
                    } else {
                        break;
                    }
                case 2:
                    break;
                case 3:
                    if (!z5) {
                        trackSelectionArr[i2] = selectTextTrack(trackGroupArrayArr[i2], iArr[i2], parameters);
                        if (trackSelectionArr[i2] != null) {
                            z5 = true;
                            break;
                        } else {
                            z5 = false;
                            break;
                        }
                    } else {
                        break;
                    }
                default:
                    trackSelectionArr[i2] = selectOtherTrack(rendererCapabilitiesArr[i2].getTrackType(), trackGroupArrayArr[i2], iArr[i2], parameters);
                    break;
            }
        }
        return trackSelectionArr;
    }

    /* access modifiers changed from: protected */
    public TrackSelection selectVideoTrack(RendererCapabilities rendererCapabilities, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, TrackSelection.Factory factory) throws ExoPlaybackException {
        TrackSelection selectAdaptiveVideoTrack = factory != null ? selectAdaptiveVideoTrack(rendererCapabilities, trackGroupArray, iArr, parameters, factory) : null;
        return selectAdaptiveVideoTrack == null ? selectFixedVideoTrack(trackGroupArray, iArr, parameters) : selectAdaptiveVideoTrack;
    }

    private static TrackSelection selectAdaptiveVideoTrack(RendererCapabilities rendererCapabilities, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, TrackSelection.Factory factory) throws ExoPlaybackException {
        int i = parameters.allowNonSeamlessAdaptiveness ? 24 : 16;
        boolean z = parameters.allowMixedMimeAdaptiveness && (rendererCapabilities.supportsMixedMimeTypeAdaptation() & i) != 0;
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup = trackGroupArray.get(i2);
            int[] adaptiveVideoTracksForGroup = getAdaptiveVideoTracksForGroup(trackGroup, iArr[i2], z, i, parameters.maxVideoWidth, parameters.maxVideoHeight, parameters.maxVideoBitrate, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            if (adaptiveVideoTracksForGroup.length > 0) {
                return factory.createTrackSelection(trackGroup, adaptiveVideoTracksForGroup);
            }
        }
        return null;
    }

    private static int[] getAdaptiveVideoTracksForGroup(TrackGroup trackGroup, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, boolean z2) {
        String str;
        int adaptiveVideoTrackCountForMimeType;
        if (trackGroup.length < 2) {
            return NO_TRACKS;
        }
        List<Integer> viewportFilteredTrackIndices = getViewportFilteredTrackIndices(trackGroup, i5, i6, z2);
        if (viewportFilteredTrackIndices.size() < 2) {
            return NO_TRACKS;
        }
        if (!z) {
            HashSet hashSet = new HashSet();
            String str2 = null;
            int i7 = 0;
            for (int i8 = 0; i8 < viewportFilteredTrackIndices.size(); i8++) {
                String str3 = trackGroup.getFormat(viewportFilteredTrackIndices.get(i8).intValue()).sampleMimeType;
                if (hashSet.add(str3) && (adaptiveVideoTrackCountForMimeType = getAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i, str3, i2, i3, i4, viewportFilteredTrackIndices)) > i7) {
                    i7 = adaptiveVideoTrackCountForMimeType;
                    str2 = str3;
                }
            }
            str = str2;
        } else {
            str = null;
        }
        filterAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i, str, i2, i3, i4, viewportFilteredTrackIndices);
        return viewportFilteredTrackIndices.size() < 2 ? NO_TRACKS : Util.toArray(viewportFilteredTrackIndices);
    }

    private static int getAdaptiveVideoTrackCountForMimeType(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, List<Integer> list) {
        int i5 = 0;
        for (int i6 = 0; i6 < list.size(); i6++) {
            int intValue = list.get(i6).intValue();
            if (isSupportedAdaptiveVideoTrack(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4)) {
                i5++;
            }
        }
        return i5;
    }

    private static void filterAdaptiveVideoTrackCountForMimeType(TrackGroup trackGroup, int[] iArr, int i, String str, int i2, int i3, int i4, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!isSupportedAdaptiveVideoTrack(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4)) {
                list.remove(size);
            }
        }
    }

    private static boolean isSupportedAdaptiveVideoTrack(Format format, String str, int i, int i2, int i3, int i4, int i5) {
        if (!isSupported(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !Util.areEqual(format.sampleMimeType, str)) {
            return false;
        }
        if (format.width != -1 && format.width > i3) {
            return false;
        }
        if (format.height != -1 && format.height > i4) {
            return false;
        }
        if (format.bitrate == -1 || format.bitrate <= i5) {
            return true;
        }
        return false;
    }

    private static TrackSelection selectFixedVideoTrack(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        int i;
        TrackGroupArray trackGroupArray2 = trackGroupArray;
        Parameters parameters2 = parameters;
        int i2 = -1;
        int i3 = 0;
        TrackGroup trackGroup = null;
        int i4 = 0;
        int i5 = 0;
        int i6 = -1;
        int i7 = -1;
        while (i3 < trackGroupArray2.length) {
            TrackGroup trackGroup2 = trackGroupArray2.get(i3);
            List<Integer> viewportFilteredTrackIndices = getViewportFilteredTrackIndices(trackGroup2, parameters2.viewportWidth, parameters2.viewportHeight, parameters2.viewportOrientationMayChange);
            int[] iArr2 = iArr[i3];
            int i8 = i7;
            int i9 = i6;
            int i10 = i5;
            int i11 = i4;
            TrackGroup trackGroup3 = trackGroup;
            int i12 = 0;
            while (i12 < trackGroup2.length) {
                if (isSupported(iArr2[i12], parameters2.exceedRendererCapabilitiesIfNecessary)) {
                    Format format = trackGroup2.getFormat(i12);
                    boolean z = viewportFilteredTrackIndices.contains(Integer.valueOf(i12)) && (format.width == i2 || format.width <= parameters2.maxVideoWidth) && ((format.height == -1 || format.height <= parameters2.maxVideoHeight) && (format.bitrate == -1 || format.bitrate <= parameters2.maxVideoBitrate));
                    if (z || parameters2.exceedVideoConstraintsIfNecessary) {
                        int i13 = z ? 2 : 1;
                        boolean isSupported = isSupported(iArr2[i12], false);
                        if (isSupported) {
                            i13 += 1000;
                        }
                        boolean z2 = i13 > i10;
                        if (i13 == i10) {
                            if (format.getPixelCount() != i9) {
                                i = compareFormatValues(format.getPixelCount(), i9);
                            } else {
                                i = compareFormatValues(format.bitrate, i8);
                            }
                            z2 = !isSupported || !z ? i < 0 : i > 0;
                        }
                        if (z2) {
                            i8 = format.bitrate;
                            i9 = format.getPixelCount();
                            i10 = i13;
                            i11 = i12;
                            trackGroup3 = trackGroup2;
                        }
                    }
                }
                i12++;
                parameters2 = parameters;
                i2 = -1;
            }
            i3++;
            trackGroup = trackGroup3;
            i4 = i11;
            i5 = i10;
            i6 = i9;
            i7 = i8;
            trackGroupArray2 = trackGroupArray;
            parameters2 = parameters;
            i2 = -1;
        }
        if (trackGroup == null) {
            return null;
        }
        return new FixedTrackSelection(trackGroup, i4);
    }

    /* access modifiers changed from: protected */
    public TrackSelection selectAudioTrack(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, TrackSelection.Factory factory) {
        int audioTrackScore;
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        int i4 = 0;
        while (i < trackGroupArray.length) {
            TrackGroup trackGroup = trackGroupArray.get(i);
            int[] iArr2 = iArr[i];
            int i5 = i4;
            int i6 = i3;
            int i7 = i2;
            for (int i8 = 0; i8 < trackGroup.length; i8++) {
                if (isSupported(iArr2[i8], parameters.exceedRendererCapabilitiesIfNecessary) && (audioTrackScore = getAudioTrackScore(iArr2[i8], parameters.preferredAudioLanguage, trackGroup.getFormat(i8))) > i5) {
                    i7 = i;
                    i6 = i8;
                    i5 = audioTrackScore;
                }
            }
            i++;
            i2 = i7;
            i3 = i6;
            i4 = i5;
        }
        if (i2 == -1) {
            return null;
        }
        TrackGroup trackGroup2 = trackGroupArray.get(i2);
        if (factory != null) {
            int[] adaptiveAudioTracks = getAdaptiveAudioTracks(trackGroup2, iArr[i2], parameters.allowMixedMimeAdaptiveness);
            if (adaptiveAudioTracks.length > 0) {
                return factory.createTrackSelection(trackGroup2, adaptiveAudioTracks);
            }
        }
        return new FixedTrackSelection(trackGroup2, i3);
    }

    private static int getAudioTrackScore(int i, String str, Format format) {
        int i2 = 1;
        boolean z = (format.selectionFlags & 1) != 0;
        if (formatHasLanguage(format, str)) {
            i2 = z ? 4 : 3;
        } else if (z) {
            i2 = 2;
        }
        return isSupported(i, false) ? i2 + 1000 : i2;
    }

    private static int[] getAdaptiveAudioTracks(TrackGroup trackGroup, int[] iArr, boolean z) {
        int adaptiveAudioTrackCount;
        HashSet hashSet = new HashSet();
        AudioConfigurationTuple audioConfigurationTuple = null;
        int i = 0;
        for (int i2 = 0; i2 < trackGroup.length; i2++) {
            Format format = trackGroup.getFormat(i2);
            AudioConfigurationTuple audioConfigurationTuple2 = new AudioConfigurationTuple(format.channelCount, format.sampleRate, z ? null : format.sampleMimeType);
            if (hashSet.add(audioConfigurationTuple2) && (adaptiveAudioTrackCount = getAdaptiveAudioTrackCount(trackGroup, iArr, audioConfigurationTuple2)) > i) {
                i = adaptiveAudioTrackCount;
                audioConfigurationTuple = audioConfigurationTuple2;
            }
        }
        if (i <= 1) {
            return NO_TRACKS;
        }
        int[] iArr2 = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroup.length; i4++) {
            if (isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i4), iArr[i4], audioConfigurationTuple)) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return iArr2;
    }

    private static int getAdaptiveAudioTrackCount(TrackGroup trackGroup, int[] iArr, AudioConfigurationTuple audioConfigurationTuple) {
        int i = 0;
        for (int i2 = 0; i2 < trackGroup.length; i2++) {
            if (isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i2), iArr[i2], audioConfigurationTuple)) {
                i++;
            }
        }
        return i;
    }

    private static boolean isSupportedAdaptiveAudioTrack(Format format, int i, AudioConfigurationTuple audioConfigurationTuple) {
        if (!isSupported(i, false) || format.channelCount != audioConfigurationTuple.channelCount || format.sampleRate != audioConfigurationTuple.sampleRate) {
            return false;
        }
        if (audioConfigurationTuple.mimeType == null || TextUtils.equals(audioConfigurationTuple.mimeType, format.sampleMimeType)) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public TrackSelection selectTextTrack(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        int i = 0;
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        while (i < trackGroupArray.length) {
            TrackGroup trackGroup2 = trackGroupArray.get(i);
            int[] iArr2 = iArr[i];
            int i4 = i3;
            int i5 = i2;
            TrackGroup trackGroup3 = trackGroup;
            for (int i6 = 0; i6 < trackGroup2.length; i6++) {
                if (isSupported(iArr2[i6], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    Format format = trackGroup2.getFormat(i6);
                    int i7 = 1;
                    boolean z = (format.selectionFlags & 1) != 0;
                    boolean z2 = (format.selectionFlags & 2) != 0;
                    if (formatHasLanguage(format, parameters.preferredTextLanguage)) {
                        i7 = z ? 6 : !z2 ? 5 : 4;
                    } else if (z) {
                        i7 = 3;
                    } else if (z2) {
                        if (formatHasLanguage(format, parameters.preferredAudioLanguage)) {
                            i7 = 2;
                        }
                    }
                    if (isSupported(iArr2[i6], false)) {
                        i7 += 1000;
                    }
                    if (i7 > i4) {
                        i5 = i6;
                        trackGroup3 = trackGroup2;
                        i4 = i7;
                    }
                }
            }
            i++;
            trackGroup = trackGroup3;
            i2 = i5;
            i3 = i4;
        }
        if (trackGroup == null) {
            return null;
        }
        return new FixedTrackSelection(trackGroup, i2);
    }

    /* access modifiers changed from: protected */
    public TrackSelection selectOtherTrack(int i, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < trackGroupArray.length) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            int i5 = i4;
            int i6 = i3;
            TrackGroup trackGroup3 = trackGroup;
            for (int i7 = 0; i7 < trackGroup2.length; i7++) {
                if (isSupported(iArr2[i7], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    int i8 = 1;
                    if ((trackGroup2.getFormat(i7).selectionFlags & 1) != 0) {
                        i8 = 2;
                    }
                    if (isSupported(iArr2[i7], false)) {
                        i8 += 1000;
                    }
                    if (i8 > i5) {
                        i6 = i7;
                        trackGroup3 = trackGroup2;
                        i5 = i8;
                    }
                }
            }
            i2++;
            trackGroup = trackGroup3;
            i3 = i6;
            i4 = i5;
        }
        if (trackGroup == null) {
            return null;
        }
        return new FixedTrackSelection(trackGroup, i3);
    }

    protected static boolean formatHasLanguage(Format format, String str) {
        return str != null && TextUtils.equals(str, Util.normalizeLanguageCode(format.language));
    }

    private static List<Integer> getViewportFilteredTrackIndices(TrackGroup trackGroup, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(trackGroup.length);
        for (int i3 = 0; i3 < trackGroup.length; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        if (i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE) {
            return arrayList;
        }
        int i4 = Integer.MAX_VALUE;
        for (int i5 = 0; i5 < trackGroup.length; i5++) {
            Format format = trackGroup.getFormat(i5);
            if (format.width > 0 && format.height > 0) {
                Point maxVideoSizeInViewport = getMaxVideoSizeInViewport(z, i, i2, format.width, format.height);
                int i6 = format.width * format.height;
                if (format.width >= ((int) (((float) maxVideoSizeInViewport.x) * FRACTION_TO_CONSIDER_FULLSCREEN)) && format.height >= ((int) (((float) maxVideoSizeInViewport.y) * FRACTION_TO_CONSIDER_FULLSCREEN)) && i6 < i4) {
                    i4 = i6;
                }
            }
        }
        if (i4 != Integer.MAX_VALUE) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                int pixelCount = trackGroup.getFormat(((Integer) arrayList.get(size)).intValue()).getPixelCount();
                if (pixelCount == -1 || pixelCount > i4) {
                    arrayList.remove(size);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x000c, code lost:
        if (r1 != r3) goto L_0x0012;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.graphics.Point getMaxVideoSizeInViewport(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L_0x000f
            r3 = 0
            r0 = 1
            if (r6 <= r7) goto L_0x0008
            r1 = 1
            goto L_0x0009
        L_0x0008:
            r1 = 0
        L_0x0009:
            if (r4 <= r5) goto L_0x000c
            r3 = 1
        L_0x000c:
            if (r1 == r3) goto L_0x000f
            goto L_0x0012
        L_0x000f:
            r2 = r5
            r5 = r4
            r4 = r2
        L_0x0012:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L_0x0022
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = com.google.android.exoplayer2.util.Util.ceilDivide(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L_0x0022:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = com.google.android.exoplayer2.util.Util.ceilDivide(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.getMaxVideoSizeInViewport(boolean, int, int, int, int):android.graphics.Point");
    }

    /* access modifiers changed from: private */
    public static final class AudioConfigurationTuple {
        public final int channelCount;
        public final String mimeType;
        public final int sampleRate;

        public AudioConfigurationTuple(int i, int i2, String str) {
            this.channelCount = i;
            this.sampleRate = i2;
            this.mimeType = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AudioConfigurationTuple audioConfigurationTuple = (AudioConfigurationTuple) obj;
            if (this.channelCount == audioConfigurationTuple.channelCount && this.sampleRate == audioConfigurationTuple.sampleRate && TextUtils.equals(this.mimeType, audioConfigurationTuple.mimeType)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.channelCount * 31) + this.sampleRate) * 31) + (this.mimeType != null ? this.mimeType.hashCode() : 0);
        }
    }
}
