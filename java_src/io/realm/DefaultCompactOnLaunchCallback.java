package io.realm;

public class DefaultCompactOnLaunchCallback implements CompactOnLaunchCallback {
    @Override // io.realm.CompactOnLaunchCallback
    public boolean shouldCompact(long j, long j2) {
        if (j > 52428800) {
            double d = (double) j2;
            double d2 = (double) j;
            Double.isNaN(d);
            Double.isNaN(d2);
            if (d / d2 < 0.5d) {
                return true;
            }
        }
        return false;
    }
}
