package com.polidea.rxandroidble2.utils;

import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import it.sephiroth.android.library.exif2.JpegHeader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class GattStatusParser {
    private static final Map<Integer, String> GATT_STATUS;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(0, "GATT_SUCCESS");
        hashMap.put(1, "GATT_INVALID_HANDLE");
        hashMap.put(2, "GATT_READ_NOT_PERMIT");
        hashMap.put(3, "GATT_WRITE_NOT_PERMIT");
        hashMap.put(4, "GATT_INVALID_PDU");
        hashMap.put(5, "GATT_INSUF_AUTHENTICATION");
        hashMap.put(6, "GATT_REQ_NOT_SUPPORTED");
        hashMap.put(7, "GATT_INVALID_OFFSET");
        hashMap.put(8, "GATT_INSUF_AUTHORIZATION");
        hashMap.put(9, "GATT_PREPARE_Q_FULL");
        hashMap.put(10, "GATT_NOT_FOUND");
        hashMap.put(11, "GATT_NOT_LONG");
        hashMap.put(12, "GATT_INSUF_KEY_SIZE");
        hashMap.put(13, "GATT_INVALID_ATTR_LEN");
        hashMap.put(14, "GATT_ERR_UNLIKELY");
        hashMap.put(15, "GATT_INSUF_ENCRYPTION");
        hashMap.put(16, "GATT_UNSUPPORT_GRP_TYPE");
        hashMap.put(17, "GATT_INSUF_RESOURCE");
        hashMap.put(Integer.valueOf((int) TsExtractor.TS_STREAM_TYPE_E_AC3), "GATT_ILLEGAL_PARAMETER");
        hashMap.put(128, "GATT_NO_RESOURCES");
        hashMap.put(Integer.valueOf((int) TsExtractor.TS_STREAM_TYPE_AC3), "GATT_INTERNAL_ERROR");
        hashMap.put(Integer.valueOf((int) TsExtractor.TS_STREAM_TYPE_HDMV_DTS), "GATT_WRONG_STATE");
        hashMap.put(131, "GATT_DB_FULL");
        hashMap.put(132, "GATT_BUSY");
        hashMap.put(133, "GATT_ERROR");
        hashMap.put(Integer.valueOf((int) TsExtractor.TS_STREAM_TYPE_SPLICE_INFO), "GATT_CMD_STARTED");
        hashMap.put(136, "GATT_PENDING");
        hashMap.put(137, "GATT_AUTH_FAIL");
        hashMap.put(Integer.valueOf((int) TsExtractor.TS_STREAM_TYPE_DTS), "GATT_MORE");
        hashMap.put(139, "GATT_INVALID_CFG");
        hashMap.put(140, "GATT_SERVICE_STARTED");
        hashMap.put(0, "GATT_SUCCESS");
        hashMap.put(141, "GATT_ENCRYPED_NO_MITM");
        hashMap.put(142, "GATT_NOT_ENCRYPTED");
        hashMap.put(143, "GATT_CONGESTED");
        hashMap.put(253, "GATT_CCC_CFG_ERR");
        hashMap.put(Integer.valueOf((int) JpegHeader.TAG_M_COM), "GATT_PRC_IN_PROGRESS");
        hashMap.put(255, "GATT_OUT_OF_RANGE");
        GATT_STATUS = Collections.unmodifiableMap(hashMap);
    }

    private GattStatusParser() {
    }

    public static String getGattCallbackStatusDescription(int i) {
        String str = GATT_STATUS.get(Integer.valueOf(i));
        return str == null ? "UNKNOWN" : str;
    }
}
