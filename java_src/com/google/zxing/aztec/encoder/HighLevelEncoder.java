package com.google.zxing.aztec.encoder;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import kotlin.UByte;
import kotlinx.coroutines.scheduling.WorkQueueKt;

public final class HighLevelEncoder {
    private static final int[][] CHAR_MAP;
    static final int[][] LATCH_TABLE = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};
    static final int MODE_DIGIT = 2;
    static final int MODE_LOWER = 1;
    static final int MODE_MIXED = 3;
    static final String[] MODE_NAMES = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};
    static final int MODE_PUNCT = 4;
    static final int MODE_UPPER = 0;
    static final int[][] SHIFT_TABLE;
    private final byte[] text;

    static {
        int[][] iArr = (int[][]) Array.newInstance(int.class, 5, 256);
        CHAR_MAP = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            CHAR_MAP[0][i] = (i - 65) + 2;
        }
        CHAR_MAP[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            CHAR_MAP[1][i2] = (i2 - 97) + 2;
        }
        CHAR_MAP[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            CHAR_MAP[2][i3] = (i3 - 48) + 2;
        }
        CHAR_MAP[2][44] = 12;
        CHAR_MAP[2][46] = 13;
        int[] iArr2 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, WorkQueueKt.MASK};
        for (int i4 = 0; i4 < 28; i4++) {
            CHAR_MAP[3][iArr2[i4]] = i4;
        }
        int[] iArr3 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            if (iArr3[i5] > 0) {
                CHAR_MAP[4][iArr3[i5]] = i5;
            }
        }
        int[][] iArr4 = (int[][]) Array.newInstance(int.class, 6, 6);
        SHIFT_TABLE = iArr4;
        for (int[] iArr5 : iArr4) {
            Arrays.fill(iArr5, -1);
        }
        SHIFT_TABLE[0][4] = 0;
        SHIFT_TABLE[1][4] = 0;
        SHIFT_TABLE[1][0] = 28;
        SHIFT_TABLE[3][4] = 0;
        SHIFT_TABLE[2][4] = 0;
        SHIFT_TABLE[2][0] = 15;
    }

    public HighLevelEncoder(byte[] bArr) {
        this.text = bArr;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x004d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.zxing.common.BitArray encode() {
        /*
        // Method dump skipped, instructions count: 102
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.encoder.HighLevelEncoder.encode():com.google.zxing.common.BitArray");
    }

    private Collection<State> updateStateListForChar(Iterable<State> iterable, int i) {
        LinkedList linkedList = new LinkedList();
        for (State state : iterable) {
            updateStateForChar(state, i, linkedList);
        }
        return simplifyStates(linkedList);
    }

    private void updateStateForChar(State state, int i, Collection<State> collection) {
        char c = (char) (this.text[i] & UByte.MAX_VALUE);
        boolean z = CHAR_MAP[state.getMode()][c] > 0;
        State state2 = null;
        for (int i2 = 0; i2 <= 4; i2++) {
            int i3 = CHAR_MAP[i2][c];
            if (i3 > 0) {
                if (state2 == null) {
                    state2 = state.endBinaryShift(i);
                }
                if (!z || i2 == state.getMode() || i2 == 2) {
                    collection.add(state2.latchAndAppend(i2, i3));
                }
                if (!z && SHIFT_TABLE[state.getMode()][i2] >= 0) {
                    collection.add(state2.shiftAndAppend(i2, i3));
                }
            }
        }
        if (state.getBinaryShiftByteCount() > 0 || CHAR_MAP[state.getMode()][c] == 0) {
            collection.add(state.addBinaryShiftChar(i));
        }
    }

    private static Collection<State> updateStateListForPair(Iterable<State> iterable, int i, int i2) {
        LinkedList linkedList = new LinkedList();
        for (State state : iterable) {
            updateStateForPair(state, i, i2, linkedList);
        }
        return simplifyStates(linkedList);
    }

    private static void updateStateForPair(State state, int i, int i2, Collection<State> collection) {
        State endBinaryShift = state.endBinaryShift(i);
        collection.add(endBinaryShift.latchAndAppend(4, i2));
        if (state.getMode() != 4) {
            collection.add(endBinaryShift.shiftAndAppend(4, i2));
        }
        if (i2 == 3 || i2 == 4) {
            collection.add(endBinaryShift.latchAndAppend(2, 16 - i2).latchAndAppend(2, 1));
        }
        if (state.getBinaryShiftByteCount() > 0) {
            collection.add(state.addBinaryShiftChar(i).addBinaryShiftChar(i + 1));
        }
    }

    private static Collection<State> simplifyStates(Iterable<State> iterable) {
        LinkedList linkedList = new LinkedList();
        for (State state : iterable) {
            boolean z = true;
            Iterator it2 = linkedList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                State state2 = (State) it2.next();
                if (state2.isBetterThanOrEqualTo(state)) {
                    z = false;
                    break;
                } else if (state.isBetterThanOrEqualTo(state2)) {
                    it2.remove();
                }
            }
            if (z) {
                linkedList.add(state);
            }
        }
        return linkedList;
    }
}
