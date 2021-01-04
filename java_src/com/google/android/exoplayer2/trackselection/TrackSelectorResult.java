package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.Util;

public final class TrackSelectorResult {
    public final TrackGroupArray groups;
    public final Object info;
    public final RendererConfiguration[] rendererConfigurations;
    public final TrackSelectionArray selections;

    public TrackSelectorResult(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray, Object obj, RendererConfiguration[] rendererConfigurationArr) {
        this.groups = trackGroupArray;
        this.selections = trackSelectionArray;
        this.info = obj;
        this.rendererConfigurations = rendererConfigurationArr;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult) {
        if (trackSelectorResult == null) {
            return false;
        }
        for (int i = 0; i < this.selections.length; i++) {
            if (!isEquivalent(trackSelectorResult, i)) {
                return false;
            }
        }
        return true;
    }

    public boolean isEquivalent(TrackSelectorResult trackSelectorResult, int i) {
        if (trackSelectorResult != null && Util.areEqual(this.selections.get(i), trackSelectorResult.selections.get(i)) && Util.areEqual(this.rendererConfigurations[i], trackSelectorResult.rendererConfigurations[i])) {
            return true;
        }
        return false;
    }
}
