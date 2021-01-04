package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class zzzq extends IOException {
    public zzzq(String str) {
        super(str);
    }

    public zzzq(String str, Exception exc) {
        super(str, exc);
    }

    static zzzq zzzk() {
        return new zzzq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    static zzzq zzzl() {
        return new zzzq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzzq zzzm() {
        return new zzzq("CodedInputStream encountered a malformed varint.");
    }

    static zzzq zzzn() {
        return new zzzq("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
}
