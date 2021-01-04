package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class SlidingPercentile {
    private static final Comparator<Sample> INDEX_COMPARATOR = new Comparator<Sample>() {
        /* class com.google.android.exoplayer2.util.SlidingPercentile.AnonymousClass1 */

        public int compare(Sample sample, Sample sample2) {
            return sample.index - sample2.index;
        }
    };
    private static final int MAX_RECYCLED_SAMPLES = 5;
    private static final int SORT_ORDER_BY_INDEX = 1;
    private static final int SORT_ORDER_BY_VALUE = 0;
    private static final int SORT_ORDER_NONE = -1;
    private static final Comparator<Sample> VALUE_COMPARATOR = new Comparator<Sample>() {
        /* class com.google.android.exoplayer2.util.SlidingPercentile.AnonymousClass2 */

        public int compare(Sample sample, Sample sample2) {
            if (sample.value < sample2.value) {
                return -1;
            }
            return sample2.value < sample.value ? 1 : 0;
        }
    };
    private int currentSortOrder = -1;
    private final int maxWeight;
    private int nextSampleIndex;
    private int recycledSampleCount;
    private final Sample[] recycledSamples = new Sample[5];
    private final ArrayList<Sample> samples = new ArrayList<>();
    private int totalWeight;

    public SlidingPercentile(int i) {
        this.maxWeight = i;
    }

    public void addSample(int i, float f) {
        Sample sample;
        ensureSortedByIndex();
        if (this.recycledSampleCount > 0) {
            Sample[] sampleArr = this.recycledSamples;
            int i2 = this.recycledSampleCount - 1;
            this.recycledSampleCount = i2;
            sample = sampleArr[i2];
        } else {
            sample = new Sample();
        }
        int i3 = this.nextSampleIndex;
        this.nextSampleIndex = i3 + 1;
        sample.index = i3;
        sample.weight = i;
        sample.value = f;
        this.samples.add(sample);
        this.totalWeight += i;
        while (this.totalWeight > this.maxWeight) {
            int i4 = this.totalWeight - this.maxWeight;
            Sample sample2 = this.samples.get(0);
            if (sample2.weight <= i4) {
                this.totalWeight -= sample2.weight;
                this.samples.remove(0);
                if (this.recycledSampleCount < 5) {
                    Sample[] sampleArr2 = this.recycledSamples;
                    int i5 = this.recycledSampleCount;
                    this.recycledSampleCount = i5 + 1;
                    sampleArr2[i5] = sample2;
                }
            } else {
                sample2.weight -= i4;
                this.totalWeight -= i4;
            }
        }
    }

    public float getPercentile(float f) {
        ensureSortedByValue();
        float f2 = f * ((float) this.totalWeight);
        int i = 0;
        for (int i2 = 0; i2 < this.samples.size(); i2++) {
            Sample sample = this.samples.get(i2);
            i += sample.weight;
            if (((float) i) >= f2) {
                return sample.value;
            }
        }
        if (this.samples.isEmpty()) {
            return Float.NaN;
        }
        return this.samples.get(this.samples.size() - 1).value;
    }

    private void ensureSortedByIndex() {
        if (this.currentSortOrder != 1) {
            Collections.sort(this.samples, INDEX_COMPARATOR);
            this.currentSortOrder = 1;
        }
    }

    private void ensureSortedByValue() {
        if (this.currentSortOrder != 0) {
            Collections.sort(this.samples, VALUE_COMPARATOR);
            this.currentSortOrder = 0;
        }
    }

    /* access modifiers changed from: private */
    public static class Sample {
        public int index;
        public float value;
        public int weight;

        private Sample() {
        }
    }
}
