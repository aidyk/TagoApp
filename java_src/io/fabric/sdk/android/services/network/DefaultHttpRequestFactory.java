package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.DefaultLogger;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public class DefaultHttpRequestFactory implements HttpRequestFactory {
    private static final String HTTPS = "https";
    private boolean attemptedSslInit;
    private final Logger logger;
    private PinningInfoProvider pinningInfo;
    private SSLSocketFactory sslSocketFactory;

    public DefaultHttpRequestFactory() {
        this(new DefaultLogger());
    }

    public DefaultHttpRequestFactory(Logger logger2) {
        this.logger = logger2;
    }

    @Override // io.fabric.sdk.android.services.network.HttpRequestFactory
    public PinningInfoProvider getPinningInfoProvider() {
        return this.pinningInfo;
    }

    @Override // io.fabric.sdk.android.services.network.HttpRequestFactory
    public void setPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        if (this.pinningInfo != pinningInfoProvider) {
            this.pinningInfo = pinningInfoProvider;
            resetSSLSocketFactory();
        }
    }

    private synchronized void resetSSLSocketFactory() {
        this.attemptedSslInit = false;
        this.sslSocketFactory = null;
    }

    @Override // io.fabric.sdk.android.services.network.HttpRequestFactory
    public HttpRequest buildHttpRequest(HttpMethod httpMethod, String str) {
        return buildHttpRequest(httpMethod, str, Collections.emptyMap());
    }

    @Override // io.fabric.sdk.android.services.network.HttpRequestFactory
    public HttpRequest buildHttpRequest(HttpMethod httpMethod, String str, Map<String, String> map) {
        HttpRequest httpRequest;
        SSLSocketFactory sSLSocketFactory;
        switch (httpMethod) {
            case GET:
                httpRequest = HttpRequest.get((CharSequence) str, (Map<?, ?>) map, true);
                break;
            case POST:
                httpRequest = HttpRequest.post((CharSequence) str, (Map<?, ?>) map, true);
                break;
            case PUT:
                httpRequest = HttpRequest.put(str);
                break;
            case DELETE:
                httpRequest = HttpRequest.delete(str);
                break;
            default:
                throw new IllegalArgumentException("Unsupported HTTP method!");
        }
        if (!(!isHttps(str) || this.pinningInfo == null || (sSLSocketFactory = getSSLSocketFactory()) == null)) {
            ((HttpsURLConnection) httpRequest.getConnection()).setSSLSocketFactory(sSLSocketFactory);
        }
        return httpRequest;
    }

    private boolean isHttps(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith(HTTPS);
    }

    private synchronized SSLSocketFactory getSSLSocketFactory() {
        if (this.sslSocketFactory == null && !this.attemptedSslInit) {
            this.sslSocketFactory = initSSLSocketFactory();
        }
        return this.sslSocketFactory;
    }

    private synchronized SSLSocketFactory initSSLSocketFactory() {
        SSLSocketFactory sSLSocketFactory;
        this.attemptedSslInit = true;
        try {
            sSLSocketFactory = NetworkUtils.getSSLSocketFactory(this.pinningInfo);
            this.logger.d(Fabric.TAG, "Custom SSL pinning enabled");
        } catch (Exception e) {
            this.logger.e(Fabric.TAG, "Exception while validating pinned certs", e);
            return null;
        }
        return sSLSocketFactory;
    }
}
