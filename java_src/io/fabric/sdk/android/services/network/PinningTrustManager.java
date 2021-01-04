package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.Fabric;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* access modifiers changed from: package-private */
public class PinningTrustManager implements X509TrustManager {
    private static final X509Certificate[] NO_ISSUERS = new X509Certificate[0];
    private static final long PIN_FRESHNESS_DURATION_MILLIS = 15552000000L;
    private final Set<X509Certificate> cache = Collections.synchronizedSet(new HashSet());
    private final long pinCreationTimeMillis;
    private final List<byte[]> pins = new LinkedList();
    private final SystemKeyStore systemKeyStore;
    private final TrustManager[] systemTrustManagers;

    public PinningTrustManager(SystemKeyStore systemKeyStore2, PinningInfoProvider pinningInfoProvider) {
        this.systemTrustManagers = initializeSystemTrustManagers(systemKeyStore2);
        this.systemKeyStore = systemKeyStore2;
        this.pinCreationTimeMillis = pinningInfoProvider.getPinCreationTimeInMillis();
        for (String str : pinningInfoProvider.getPins()) {
            this.pins.add(hexStringToByteArray(str));
        }
    }

    private TrustManager[] initializeSystemTrustManagers(SystemKeyStore systemKeyStore2) {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
            instance.init(systemKeyStore2.trustStore);
            return instance.getTrustManagers();
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        } catch (KeyStoreException e2) {
            throw new AssertionError(e2);
        }
    }

    private boolean isValidPin(X509Certificate x509Certificate) throws CertificateException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(x509Certificate.getPublicKey().getEncoded());
            for (byte[] bArr : this.pins) {
                if (Arrays.equals(bArr, digest)) {
                    return true;
                }
            }
            return false;
        } catch (NoSuchAlgorithmException e) {
            throw new CertificateException(e);
        }
    }

    private void checkSystemTrust(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        for (TrustManager trustManager : this.systemTrustManagers) {
            ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, str);
        }
    }

    private void checkPinTrust(X509Certificate[] x509CertificateArr) throws CertificateException {
        if (this.pinCreationTimeMillis == -1 || System.currentTimeMillis() - this.pinCreationTimeMillis <= PIN_FRESHNESS_DURATION_MILLIS) {
            for (X509Certificate x509Certificate : CertificateChainCleaner.getCleanChain(x509CertificateArr, this.systemKeyStore)) {
                if (isValidPin(x509Certificate)) {
                    return;
                }
            }
            throw new CertificateException("No valid pins found in chain!");
        }
        Fabric.getLogger().w(Fabric.TAG, "Certificate pins are stale, (" + (System.currentTimeMillis() - this.pinCreationTimeMillis) + " millis vs " + PIN_FRESHNESS_DURATION_MILLIS + " millis) falling back to system trust.");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        if (!this.cache.contains(x509CertificateArr[0])) {
            checkSystemTrust(x509CertificateArr, str);
            checkPinTrust(x509CertificateArr);
            this.cache.add(x509CertificateArr[0]);
        }
    }

    public X509Certificate[] getAcceptedIssuers() {
        return NO_ISSUERS;
    }

    private byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }
}
