package io.realm;

import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import io.realm.internal.Keep;
import java.nio.ByteBuffer;
import java.util.Date;

@Keep
public enum RealmFieldType {
    INTEGER(0),
    BOOLEAN(1),
    STRING(2),
    BINARY(4),
    DATE(8),
    FLOAT(9),
    DOUBLE(10),
    OBJECT(12),
    LIST(13),
    LINKING_OBJECTS(14),
    INTEGER_LIST(128),
    BOOLEAN_LIST(TsExtractor.TS_STREAM_TYPE_AC3),
    STRING_LIST(TsExtractor.TS_STREAM_TYPE_HDMV_DTS),
    BINARY_LIST(132),
    DATE_LIST(136),
    FLOAT_LIST(137),
    DOUBLE_LIST(TsExtractor.TS_STREAM_TYPE_DTS);
    
    private static final RealmFieldType[] basicTypes = new RealmFieldType[15];
    private static final RealmFieldType[] listTypes = new RealmFieldType[15];
    private final int nativeValue;

    static {
        RealmFieldType[] values = values();
        for (RealmFieldType realmFieldType : values) {
            int i = realmFieldType.nativeValue;
            if (i < 128) {
                basicTypes[i] = realmFieldType;
            } else {
                listTypes[i - 128] = realmFieldType;
            }
        }
    }

    private RealmFieldType(int i) {
        this.nativeValue = i;
    }

    public int getNativeValue() {
        return this.nativeValue;
    }

    public boolean isValid(Object obj) {
        int i = this.nativeValue;
        if (i != 4) {
            if (i == 132) {
                return false;
            }
            switch (i) {
                case 0:
                    if ((obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                        return true;
                    }
                    return false;
                case 1:
                    return obj instanceof Boolean;
                case 2:
                    return obj instanceof String;
                default:
                    switch (i) {
                        case 8:
                            return obj instanceof Date;
                        case 9:
                            return obj instanceof Float;
                        case 10:
                            return obj instanceof Double;
                        default:
                            switch (i) {
                                case 12:
                                    return false;
                                case 13:
                                    return false;
                                case 14:
                                    return false;
                                default:
                                    switch (i) {
                                        case 128:
                                            return false;
                                        case TsExtractor.TS_STREAM_TYPE_AC3:
                                            return false;
                                        case TsExtractor.TS_STREAM_TYPE_HDMV_DTS:
                                            return false;
                                        default:
                                            switch (i) {
                                                case 136:
                                                    return false;
                                                case 137:
                                                    return false;
                                                case TsExtractor.TS_STREAM_TYPE_DTS:
                                                    return false;
                                                default:
                                                    throw new RuntimeException("Unsupported Realm type:  " + this);
                                            }
                                    }
                            }
                    }
            }
        } else if ((obj instanceof byte[]) || (obj instanceof ByteBuffer)) {
            return true;
        } else {
            return false;
        }
    }

    public static RealmFieldType fromNativeValue(int i) {
        int i2;
        RealmFieldType realmFieldType;
        RealmFieldType realmFieldType2;
        if (i >= 0 && i < basicTypes.length && (realmFieldType2 = basicTypes[i]) != null) {
            return realmFieldType2;
        }
        if (128 <= i && i - 128 < listTypes.length && (realmFieldType = listTypes[i2]) != null) {
            return realmFieldType;
        }
        throw new IllegalArgumentException("Invalid native Realm type: " + i);
    }
}
