package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;

public final class AddressBookAUResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        String[] strArr = null;
        if (!massagedText.contains("MEMORY") || !massagedText.contains(IOUtils.LINE_SEPARATOR_WINDOWS)) {
            return null;
        }
        String matchSinglePrefixedField = matchSinglePrefixedField("NAME1:", massagedText, CharUtils.CR, true);
        String matchSinglePrefixedField2 = matchSinglePrefixedField("NAME2:", massagedText, CharUtils.CR, true);
        String[] matchMultipleValuePrefix = matchMultipleValuePrefix("TEL", 3, massagedText, true);
        String[] matchMultipleValuePrefix2 = matchMultipleValuePrefix("MAIL", 3, massagedText, true);
        String matchSinglePrefixedField3 = matchSinglePrefixedField("MEMORY:", massagedText, CharUtils.CR, false);
        String matchSinglePrefixedField4 = matchSinglePrefixedField("ADD:", massagedText, CharUtils.CR, true);
        if (matchSinglePrefixedField4 != null) {
            strArr = new String[]{matchSinglePrefixedField4};
        }
        return new AddressBookParsedResult(maybeWrap(matchSinglePrefixedField), null, matchSinglePrefixedField2, matchMultipleValuePrefix, null, matchMultipleValuePrefix2, null, null, matchSinglePrefixedField3, strArr, null, null, null, null, null, null);
    }

    private static String[] matchMultipleValuePrefix(String str, int i, String str2, boolean z) {
        ArrayList arrayList = null;
        for (int i2 = 1; i2 <= i; i2++) {
            String matchSinglePrefixedField = matchSinglePrefixedField(str + i2 + ':', str2, CharUtils.CR, z);
            if (matchSinglePrefixedField == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(i);
            }
            arrayList.add(matchSinglePrefixedField);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
