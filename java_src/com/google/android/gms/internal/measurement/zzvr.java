package com.google.android.gms.internal.measurement;

import java.lang.reflect.Type;

public enum zzvr {
    DOUBLE(0, zzvt.SCALAR, zzwg.DOUBLE),
    FLOAT(1, zzvt.SCALAR, zzwg.FLOAT),
    INT64(2, zzvt.SCALAR, zzwg.LONG),
    UINT64(3, zzvt.SCALAR, zzwg.LONG),
    INT32(4, zzvt.SCALAR, zzwg.INT),
    FIXED64(5, zzvt.SCALAR, zzwg.LONG),
    FIXED32(6, zzvt.SCALAR, zzwg.INT),
    BOOL(7, zzvt.SCALAR, zzwg.BOOLEAN),
    STRING(8, zzvt.SCALAR, zzwg.STRING),
    MESSAGE(9, zzvt.SCALAR, zzwg.MESSAGE),
    BYTES(10, zzvt.SCALAR, zzwg.BYTE_STRING),
    UINT32(11, zzvt.SCALAR, zzwg.INT),
    ENUM(12, zzvt.SCALAR, zzwg.ENUM),
    SFIXED32(13, zzvt.SCALAR, zzwg.INT),
    SFIXED64(14, zzvt.SCALAR, zzwg.LONG),
    SINT32(15, zzvt.SCALAR, zzwg.INT),
    SINT64(16, zzvt.SCALAR, zzwg.LONG),
    GROUP(17, zzvt.SCALAR, zzwg.MESSAGE),
    DOUBLE_LIST(18, zzvt.VECTOR, zzwg.DOUBLE),
    FLOAT_LIST(19, zzvt.VECTOR, zzwg.FLOAT),
    INT64_LIST(20, zzvt.VECTOR, zzwg.LONG),
    UINT64_LIST(21, zzvt.VECTOR, zzwg.LONG),
    INT32_LIST(22, zzvt.VECTOR, zzwg.INT),
    FIXED64_LIST(23, zzvt.VECTOR, zzwg.LONG),
    FIXED32_LIST(24, zzvt.VECTOR, zzwg.INT),
    BOOL_LIST(25, zzvt.VECTOR, zzwg.BOOLEAN),
    STRING_LIST(26, zzvt.VECTOR, zzwg.STRING),
    MESSAGE_LIST(27, zzvt.VECTOR, zzwg.MESSAGE),
    BYTES_LIST(28, zzvt.VECTOR, zzwg.BYTE_STRING),
    UINT32_LIST(29, zzvt.VECTOR, zzwg.INT),
    ENUM_LIST(30, zzvt.VECTOR, zzwg.ENUM),
    SFIXED32_LIST(31, zzvt.VECTOR, zzwg.INT),
    SFIXED64_LIST(32, zzvt.VECTOR, zzwg.LONG),
    SINT32_LIST(33, zzvt.VECTOR, zzwg.INT),
    SINT64_LIST(34, zzvt.VECTOR, zzwg.LONG),
    DOUBLE_LIST_PACKED(35, zzvt.PACKED_VECTOR, zzwg.DOUBLE),
    FLOAT_LIST_PACKED(36, zzvt.PACKED_VECTOR, zzwg.FLOAT),
    INT64_LIST_PACKED(37, zzvt.PACKED_VECTOR, zzwg.LONG),
    UINT64_LIST_PACKED(38, zzvt.PACKED_VECTOR, zzwg.LONG),
    INT32_LIST_PACKED(39, zzvt.PACKED_VECTOR, zzwg.INT),
    FIXED64_LIST_PACKED(40, zzvt.PACKED_VECTOR, zzwg.LONG),
    FIXED32_LIST_PACKED(41, zzvt.PACKED_VECTOR, zzwg.INT),
    BOOL_LIST_PACKED(42, zzvt.PACKED_VECTOR, zzwg.BOOLEAN),
    UINT32_LIST_PACKED(43, zzvt.PACKED_VECTOR, zzwg.INT),
    ENUM_LIST_PACKED(44, zzvt.PACKED_VECTOR, zzwg.ENUM),
    SFIXED32_LIST_PACKED(45, zzvt.PACKED_VECTOR, zzwg.INT),
    SFIXED64_LIST_PACKED(46, zzvt.PACKED_VECTOR, zzwg.LONG),
    SINT32_LIST_PACKED(47, zzvt.PACKED_VECTOR, zzwg.INT),
    SINT64_LIST_PACKED(48, zzvt.PACKED_VECTOR, zzwg.LONG),
    GROUP_LIST(49, zzvt.VECTOR, zzwg.MESSAGE),
    MAP(50, zzvt.MAP, zzwg.VOID);
    
    private static final zzvr[] zzbys;
    private static final Type[] zzbyt = new Type[0];
    private final int id;
    private final zzwg zzbyo;
    private final zzvt zzbyp;
    private final Class<?> zzbyq;
    private final boolean zzbyr;

    private zzvr(int i, zzvt zzvt, zzwg zzwg) {
        this.id = i;
        this.zzbyp = zzvt;
        this.zzbyo = zzwg;
        switch (zzvs.zzbyv[zzvt.ordinal()]) {
            case 1:
                this.zzbyq = zzwg.zzxf();
                break;
            case 2:
                this.zzbyq = zzwg.zzxf();
                break;
            default:
                this.zzbyq = null;
                break;
        }
        boolean z = false;
        if (zzvt == zzvt.SCALAR) {
            switch (zzvs.zzbyw[zzwg.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    break;
                default:
                    z = true;
                    break;
            }
        }
        this.zzbyr = z;
    }

    public final int id() {
        return this.id;
    }

    static {
        zzvr[] values = values();
        zzbys = new zzvr[values.length];
        for (zzvr zzvr : values) {
            zzbys[zzvr.id] = zzvr;
        }
    }
}
