package com.liber8tech.tago.android;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0016J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0015\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0015H\u0016¢\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0015H\u0016¢\u0006\u0002\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0019"}, d2 = {"Lcom/liber8tech/tago/android/TLSCompatibilitySocketFactory;", "Ljavax/net/ssl/SSLSocketFactory;", "delegate", "(Ljavax/net/ssl/SSLSocketFactory;)V", "getDelegate", "()Ljavax/net/ssl/SSLSocketFactory;", "createSocket", "Ljava/net/Socket;", "host", "Ljava/net/InetAddress;", "port", "", "address", "localAddress", "localPort", "s", "", "autoClose", "", "localHost", "getDefaultCipherSuites", "", "()[Ljava/lang/String;", "getSupportedCipherSuites", "patch", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TlsCompatibilitySocketFactory.kt */
public final class TLSCompatibilitySocketFactory extends SSLSocketFactory {
    @NotNull
    private final SSLSocketFactory delegate;

    public TLSCompatibilitySocketFactory(@NotNull SSLSocketFactory sSLSocketFactory) {
        Intrinsics.checkParameterIsNotNull(sSLSocketFactory, "delegate");
        this.delegate = sSLSocketFactory;
    }

    @NotNull
    public final SSLSocketFactory getDelegate() {
        return this.delegate;
    }

    @NotNull
    public String[] getDefaultCipherSuites() {
        String[] defaultCipherSuites = this.delegate.getDefaultCipherSuites();
        Intrinsics.checkExpressionValueIsNotNull(defaultCipherSuites, "delegate.defaultCipherSuites");
        return defaultCipherSuites;
    }

    @NotNull
    public String[] getSupportedCipherSuites() {
        String[] supportedCipherSuites = this.delegate.getSupportedCipherSuites();
        Intrinsics.checkExpressionValueIsNotNull(supportedCipherSuites, "delegate.supportedCipherSuites");
        return supportedCipherSuites;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    @NotNull
    public Socket createSocket(@NotNull Socket socket, @NotNull String str, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(socket, "s");
        Intrinsics.checkParameterIsNotNull(str, "host");
        Socket createSocket = this.delegate.createSocket(socket, str, i, z);
        Intrinsics.checkExpressionValueIsNotNull(createSocket, "delegate.createSocket(s, host, port, autoClose)");
        return patch(createSocket);
    }

    @Override // javax.net.SocketFactory
    @NotNull
    public Socket createSocket(@NotNull String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "host");
        Socket createSocket = this.delegate.createSocket(str, i);
        Intrinsics.checkExpressionValueIsNotNull(createSocket, "delegate.createSocket(host, port)");
        return patch(createSocket);
    }

    @Override // javax.net.SocketFactory
    @NotNull
    public Socket createSocket(@NotNull String str, int i, @NotNull InetAddress inetAddress, int i2) {
        Intrinsics.checkParameterIsNotNull(str, "host");
        Intrinsics.checkParameterIsNotNull(inetAddress, "localHost");
        Socket createSocket = this.delegate.createSocket(str, i, inetAddress, i2);
        Intrinsics.checkExpressionValueIsNotNull(createSocket, "delegate.createSocket(ho…rt, localHost, localPort)");
        return patch(createSocket);
    }

    @Override // javax.net.SocketFactory
    @NotNull
    public Socket createSocket(@NotNull InetAddress inetAddress, int i) {
        Intrinsics.checkParameterIsNotNull(inetAddress, "host");
        Socket createSocket = this.delegate.createSocket(inetAddress, i);
        Intrinsics.checkExpressionValueIsNotNull(createSocket, "delegate.createSocket(host, port)");
        return patch(createSocket);
    }

    @Override // javax.net.SocketFactory
    @NotNull
    public Socket createSocket(@NotNull InetAddress inetAddress, int i, @NotNull InetAddress inetAddress2, int i2) {
        Intrinsics.checkParameterIsNotNull(inetAddress, "address");
        Intrinsics.checkParameterIsNotNull(inetAddress2, "localAddress");
        Socket createSocket = this.delegate.createSocket(inetAddress, i, inetAddress2, i2);
        Intrinsics.checkExpressionValueIsNotNull(createSocket, "delegate.createSocket(ad… localAddress, localPort)");
        return patch(createSocket);
    }

    private final Socket patch(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
            sSLSocket.setEnabledCipherSuites(sSLSocket.getSupportedCipherSuites());
        }
        return socket;
    }
}
