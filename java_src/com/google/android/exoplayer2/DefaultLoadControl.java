package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Util;

public final class DefaultLoadControl implements LoadControl {
    private static final int ABOVE_HIGH_WATERMARK = 0;
    private static final int BELOW_LOW_WATERMARK = 2;
    private static final int BETWEEN_WATERMARKS = 1;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 5000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2500;
    public static final int DEFAULT_MAX_BUFFER_MS = 30000;
    public static final int DEFAULT_MIN_BUFFER_MS = 15000;
    private final DefaultAllocator allocator;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackUs;
    private boolean isBuffering;
    private final long maxBufferUs;
    private final long minBufferUs;
    private final PriorityTaskManager priorityTaskManager;
    private int targetBufferSize;

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536));
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator) {
        this(defaultAllocator, 15000, DEFAULT_MAX_BUFFER_MS, 2500, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, long j, long j2) {
        this(defaultAllocator, i, i2, j, j2, null);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, long j, long j2, PriorityTaskManager priorityTaskManager2) {
        this.allocator = defaultAllocator;
        this.minBufferUs = ((long) i) * 1000;
        this.maxBufferUs = ((long) i2) * 1000;
        this.bufferForPlaybackUs = j * 1000;
        this.bufferForPlaybackAfterRebufferUs = j2 * 1000;
        this.priorityTaskManager = priorityTaskManager2;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onPrepared() {
        reset(false);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        this.targetBufferSize = 0;
        for (int i = 0; i < rendererArr.length; i++) {
            if (trackSelectionArray.get(i) != null) {
                this.targetBufferSize += Util.getDefaultBufferSize(rendererArr[i].getTrackType());
            }
        }
        this.allocator.setTargetBufferSize(this.targetBufferSize);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onStopped() {
        reset(true);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onReleased() {
        reset(true);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean shouldStartPlayback(long j, boolean z) {
        long j2 = z ? this.bufferForPlaybackAfterRebufferUs : this.bufferForPlaybackUs;
        return j2 <= 0 || j >= j2;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean shouldContinueLoading(long j) {
        int bufferTimeState = getBufferTimeState(j);
        boolean z = true;
        boolean z2 = this.allocator.getTotalBytesAllocated() >= this.targetBufferSize;
        boolean z3 = this.isBuffering;
        if (bufferTimeState != 2 && (bufferTimeState != 1 || !this.isBuffering || z2)) {
            z = false;
        }
        this.isBuffering = z;
        if (!(this.priorityTaskManager == null || this.isBuffering == z3)) {
            if (this.isBuffering) {
                this.priorityTaskManager.add(0);
            } else {
                this.priorityTaskManager.remove(0);
            }
        }
        return this.isBuffering;
    }

    private int getBufferTimeState(long j) {
        if (j > this.maxBufferUs) {
            return 0;
        }
        return j < this.minBufferUs ? 2 : 1;
    }

    private void reset(boolean z) {
        this.targetBufferSize = 0;
        if (this.priorityTaskManager != null && this.isBuffering) {
            this.priorityTaskManager.remove(0);
        }
        this.isBuffering = false;
        if (z) {
            this.allocator.reset();
        }
    }
}
