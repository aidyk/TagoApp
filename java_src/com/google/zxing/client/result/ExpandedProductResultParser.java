package com.google.zxing.client.result;

public final class ExpandedProductResultParser extends ResultParser {
    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x0207  */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x0214  */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x022c  */
    /* JADX WARNING: Removed duplicated region for block: B:138:0x0235  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x023d  */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x024a  */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x024c  */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x024e  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x0250  */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x0252  */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x0254  */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x0256  */
    @Override // com.google.zxing.client.result.ResultParser
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.zxing.client.result.ExpandedProductParsedResult parse(com.google.zxing.Result r24) {
        /*
        // Method dump skipped, instructions count: 776
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.ExpandedProductResultParser.parse(com.google.zxing.Result):com.google.zxing.client.result.ExpandedProductParsedResult");
    }

    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String substring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == ')') {
                return sb.toString();
            }
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(i);
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == '(') {
                if (findAIvalue(i2, substring) != null) {
                    break;
                }
                sb.append('(');
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }
}
