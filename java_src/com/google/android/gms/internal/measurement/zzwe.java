package com.google.android.gms.internal.measurement;

import java.io.IOException;

public class zzwe extends IOException {
    private zzxe zzcah = null;

    public zzwe(String str) {
        super(str);
    }

    public final zzwe zzg(zzxe zzxe) {
        this.zzcah = zzxe;
        return this;
    }

    static zzwe zzwx() {
        return new zzwe("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static zzwe zzwy() {
        return new zzwe("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzwe zzwz() {
        return new zzwe("CodedInputStream encountered a malformed varint.");
    }

    static zzwe zzxa() {
        return new zzwe("Protocol message end-group tag did not match expected tag.");
    }

    static zzwf zzxb() {
        return new zzwf("Protocol message tag had invalid wire type.");
    }

    static zzwe zzxc() {
        return new zzwe("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    static zzwe zzxd() {
        return new zzwe("Failed to parse the message.");
    }

    static zzwe zzxe() {
        return new zzwe("Protocol message had invalid UTF-8.");
    }
}
