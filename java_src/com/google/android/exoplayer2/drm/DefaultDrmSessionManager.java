package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.DeniedByServerException;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.ExoMediaCrypto;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@TargetApi(18)
public class DefaultDrmSessionManager<T extends ExoMediaCrypto> implements DrmSessionManager<T>, DrmSession<T> {
    private static final String CENC_SCHEME_MIME_TYPE = "cenc";
    private static final int MAX_LICENSE_DURATION_TO_RENEW = 60;
    public static final int MODE_DOWNLOAD = 2;
    public static final int MODE_PLAYBACK = 0;
    public static final int MODE_QUERY = 1;
    public static final int MODE_RELEASE = 3;
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    public static final String PLAYREADY_CUSTOM_DATA_KEY = "PRCustomData";
    private static final String TAG = "OfflineDrmSessionMngr";
    final MediaDrmCallback callback;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private DrmSession.DrmSessionException lastException;
    private T mediaCrypto;
    private final ExoMediaDrm<T> mediaDrm;
    DefaultDrmSessionManager<T>.MediaDrmHandler mediaDrmHandler;
    private int mode = 0;
    private byte[] offlineLicenseKeySetId;
    private int openCount;
    private final HashMap<String, String> optionalKeyRequestParameters;
    private Looper playbackLooper;
    private Handler postRequestHandler;
    DefaultDrmSessionManager<T>.PostResponseHandler postResponseHandler;
    private boolean provisioningInProgress;
    private HandlerThread requestHandlerThread;
    private byte[] schemeInitData;
    private String schemeMimeType;
    private byte[] sessionId;
    private int state;
    final UUID uuid;

    public interface EventListener {
        void onDrmKeysLoaded();

        void onDrmKeysRemoved();

        void onDrmKeysRestored();

        void onDrmSessionManagerError(Exception exc);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public static DefaultDrmSessionManager<FrameworkMediaCrypto> newWidevineInstance(MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener2) throws UnsupportedDrmException {
        return newFrameworkInstance(C.WIDEVINE_UUID, mediaDrmCallback, hashMap, handler, eventListener2);
    }

    public static DefaultDrmSessionManager<FrameworkMediaCrypto> newPlayReadyInstance(MediaDrmCallback mediaDrmCallback, String str, Handler handler, EventListener eventListener2) throws UnsupportedDrmException {
        HashMap hashMap;
        if (!TextUtils.isEmpty(str)) {
            hashMap = new HashMap();
            hashMap.put(PLAYREADY_CUSTOM_DATA_KEY, str);
        } else {
            hashMap = null;
        }
        return newFrameworkInstance(C.PLAYREADY_UUID, mediaDrmCallback, hashMap, handler, eventListener2);
    }

    public static DefaultDrmSessionManager<FrameworkMediaCrypto> newFrameworkInstance(UUID uuid2, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener2) throws UnsupportedDrmException {
        return new DefaultDrmSessionManager<>(uuid2, FrameworkMediaDrm.newInstance(uuid2), mediaDrmCallback, hashMap, handler, eventListener2);
    }

    public DefaultDrmSessionManager(UUID uuid2, ExoMediaDrm<T> exoMediaDrm, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener2) {
        this.uuid = uuid2;
        this.mediaDrm = exoMediaDrm;
        this.callback = mediaDrmCallback;
        this.optionalKeyRequestParameters = hashMap;
        this.eventHandler = handler;
        this.eventListener = eventListener2;
        exoMediaDrm.setOnEventListener(new MediaDrmEventListener());
    }

    public final String getPropertyString(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    public final void setPropertyString(String str, String str2) {
        this.mediaDrm.setPropertyString(str, str2);
    }

    public final byte[] getPropertyByteArray(String str) {
        return this.mediaDrm.getPropertyByteArray(str);
    }

    public final void setPropertyByteArray(String str, byte[] bArr) {
        this.mediaDrm.setPropertyByteArray(str, bArr);
    }

    public void setMode(int i, byte[] bArr) {
        Assertions.checkState(this.openCount == 0);
        if (i == 1 || i == 3) {
            Assertions.checkNotNull(bArr);
        }
        this.mode = i;
        this.offlineLicenseKeySetId = bArr;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public boolean canAcquireSession(@NonNull DrmInitData drmInitData) {
        DrmInitData.SchemeData schemeData = drmInitData.get(this.uuid);
        if (schemeData == null) {
            return false;
        }
        String str = schemeData.type;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        if ((C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cbcs.equals(str) || C.CENC_TYPE_cens.equals(str)) && Util.SDK_INT < 24) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public DrmSession<T> acquireSession(Looper looper, DrmInitData drmInitData) {
        byte[] parseSchemeSpecificData;
        Assertions.checkState(this.playbackLooper == null || this.playbackLooper == looper);
        int i = this.openCount + 1;
        this.openCount = i;
        if (i != 1) {
            return this;
        }
        if (this.playbackLooper == null) {
            this.playbackLooper = looper;
            this.mediaDrmHandler = new MediaDrmHandler(looper);
            this.postResponseHandler = new PostResponseHandler(looper);
        }
        this.requestHandlerThread = new HandlerThread("DrmRequestHandler");
        this.requestHandlerThread.start();
        this.postRequestHandler = new PostRequestHandler(this.requestHandlerThread.getLooper());
        if (this.offlineLicenseKeySetId == null) {
            DrmInitData.SchemeData schemeData = drmInitData.get(this.uuid);
            if (schemeData == null) {
                onError(new IllegalStateException("Media does not support uuid: " + this.uuid));
                return this;
            }
            this.schemeInitData = schemeData.data;
            this.schemeMimeType = schemeData.mimeType;
            if (Util.SDK_INT < 21 && (parseSchemeSpecificData = PsshAtomUtil.parseSchemeSpecificData(this.schemeInitData, C.WIDEVINE_UUID)) != null) {
                this.schemeInitData = parseSchemeSpecificData;
            }
            if (Util.SDK_INT < 26 && C.CLEARKEY_UUID.equals(this.uuid) && (MimeTypes.VIDEO_MP4.equals(this.schemeMimeType) || MimeTypes.AUDIO_MP4.equals(this.schemeMimeType))) {
                this.schemeMimeType = "cenc";
            }
        }
        this.state = 2;
        openInternal(true);
        return this;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public void releaseSession(DrmSession<T> drmSession) {
        int i = this.openCount - 1;
        this.openCount = i;
        if (i == 0) {
            this.state = 0;
            this.provisioningInProgress = false;
            this.mediaDrmHandler.removeCallbacksAndMessages(null);
            this.postResponseHandler.removeCallbacksAndMessages(null);
            this.postRequestHandler.removeCallbacksAndMessages(null);
            this.postRequestHandler = null;
            this.requestHandlerThread.quit();
            this.requestHandlerThread = null;
            this.schemeInitData = null;
            this.schemeMimeType = null;
            this.mediaCrypto = null;
            this.lastException = null;
            if (this.sessionId != null) {
                this.mediaDrm.closeSession(this.sessionId);
                this.sessionId = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final DrmSession.DrmSessionException getError() {
        if (this.state == 1) {
            return this.lastException;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final T getMediaCrypto() {
        return this.mediaCrypto;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public Map<String, String> queryKeyStatus() {
        if (this.sessionId == null) {
            return null;
        }
        return this.mediaDrm.queryKeyStatus(this.sessionId);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public byte[] getOfflineLicenseKeySetId() {
        return this.offlineLicenseKeySetId;
    }

    private void openInternal(boolean z) {
        try {
            this.sessionId = this.mediaDrm.openSession();
            this.mediaCrypto = this.mediaDrm.createMediaCrypto(this.uuid, this.sessionId);
            this.state = 3;
            doLicense();
        } catch (NotProvisionedException e) {
            if (z) {
                postProvisionRequest();
            } else {
                onError(e);
            }
        } catch (Exception e2) {
            onError(e2);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void postProvisionRequest() {
        if (!this.provisioningInProgress) {
            this.provisioningInProgress = true;
            this.postRequestHandler.obtainMessage(0, this.mediaDrm.getProvisionRequest()).sendToTarget();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void onProvisionResponse(Object obj) {
        this.provisioningInProgress = false;
        if (this.state != 2 && this.state != 3 && this.state != 4) {
            return;
        }
        if (obj instanceof Exception) {
            onError((Exception) obj);
            return;
        }
        try {
            this.mediaDrm.provideProvisionResponse((byte[]) obj);
            if (this.state == 2) {
                openInternal(false);
            } else {
                doLicense();
            }
        } catch (DeniedByServerException e) {
            onError(e);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void doLicense() {
        switch (this.mode) {
            case 0:
            case 1:
                if (this.offlineLicenseKeySetId == null) {
                    postKeyRequest(this.sessionId, 1);
                    return;
                } else if (restoreKeys()) {
                    long licenseDurationRemainingSec = getLicenseDurationRemainingSec();
                    if (this.mode == 0 && licenseDurationRemainingSec <= 60) {
                        Log.d(TAG, "Offline license has expired or will expire soon. Remaining seconds: " + licenseDurationRemainingSec);
                        postKeyRequest(this.sessionId, 2);
                        return;
                    } else if (licenseDurationRemainingSec <= 0) {
                        onError(new KeysExpiredException());
                        return;
                    } else {
                        this.state = 4;
                        if (this.eventHandler != null && this.eventListener != null) {
                            this.eventHandler.post(new Runnable() {
                                /* class com.google.android.exoplayer2.drm.DefaultDrmSessionManager.AnonymousClass1 */

                                public void run() {
                                    DefaultDrmSessionManager.this.eventListener.onDrmKeysRestored();
                                }
                            });
                            return;
                        }
                        return;
                    }
                } else {
                    return;
                }
            case 2:
                if (this.offlineLicenseKeySetId == null) {
                    postKeyRequest(this.sessionId, 2);
                    return;
                } else if (restoreKeys()) {
                    postKeyRequest(this.sessionId, 2);
                    return;
                } else {
                    return;
                }
            case 3:
                if (restoreKeys()) {
                    postKeyRequest(this.offlineLicenseKeySetId, 3);
                    return;
                }
                return;
            default:
                return;
        }
    }

    private boolean restoreKeys() {
        try {
            this.mediaDrm.restoreKeys(this.sessionId, this.offlineLicenseKeySetId);
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Error trying to restore Widevine keys.", e);
            onError(e);
            return false;
        }
    }

    private long getLicenseDurationRemainingSec() {
        if (!C.WIDEVINE_UUID.equals(this.uuid)) {
            return Long.MAX_VALUE;
        }
        Pair<Long, Long> licenseDurationRemainingSec = WidevineUtil.getLicenseDurationRemainingSec(this);
        return Math.min(((Long) licenseDurationRemainingSec.first).longValue(), ((Long) licenseDurationRemainingSec.second).longValue());
    }

    private void postKeyRequest(byte[] bArr, int i) {
        try {
            this.postRequestHandler.obtainMessage(1, this.mediaDrm.getKeyRequest(bArr, this.schemeInitData, this.schemeMimeType, i, this.optionalKeyRequestParameters)).sendToTarget();
        } catch (Exception e) {
            onKeysError(e);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void onKeyResponse(Object obj) {
        if (this.state != 3 && this.state != 4) {
            return;
        }
        if (obj instanceof Exception) {
            onKeysError((Exception) obj);
            return;
        }
        try {
            if (this.mode == 3) {
                this.mediaDrm.provideKeyResponse(this.offlineLicenseKeySetId, (byte[]) obj);
                if (this.eventHandler != null && this.eventListener != null) {
                    this.eventHandler.post(new Runnable() {
                        /* class com.google.android.exoplayer2.drm.DefaultDrmSessionManager.AnonymousClass2 */

                        public void run() {
                            DefaultDrmSessionManager.this.eventListener.onDrmKeysRemoved();
                        }
                    });
                    return;
                }
                return;
            }
            byte[] provideKeyResponse = this.mediaDrm.provideKeyResponse(this.sessionId, (byte[]) obj);
            if (!((this.mode != 2 && (this.mode != 0 || this.offlineLicenseKeySetId == null)) || provideKeyResponse == null || provideKeyResponse.length == 0)) {
                this.offlineLicenseKeySetId = provideKeyResponse;
            }
            this.state = 4;
            if (this.eventHandler != null && this.eventListener != null) {
                this.eventHandler.post(new Runnable() {
                    /* class com.google.android.exoplayer2.drm.DefaultDrmSessionManager.AnonymousClass3 */

                    public void run() {
                        DefaultDrmSessionManager.this.eventListener.onDrmKeysLoaded();
                    }
                });
            }
        } catch (Exception e) {
            onKeysError(e);
        }
    }

    private void onKeysError(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            postProvisionRequest();
        } else {
            onError(exc);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void onError(final Exception exc) {
        this.lastException = new DrmSession.DrmSessionException(exc);
        if (!(this.eventHandler == null || this.eventListener == null)) {
            this.eventHandler.post(new Runnable() {
                /* class com.google.android.exoplayer2.drm.DefaultDrmSessionManager.AnonymousClass4 */

                public void run() {
                    DefaultDrmSessionManager.this.eventListener.onDrmSessionManagerError(exc);
                }
            });
        }
        if (this.state != 4) {
            this.state = 1;
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class MediaDrmHandler extends Handler {
        public MediaDrmHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (DefaultDrmSessionManager.this.openCount == 0) {
                return;
            }
            if (DefaultDrmSessionManager.this.state == 3 || DefaultDrmSessionManager.this.state == 4) {
                switch (message.what) {
                    case 1:
                        DefaultDrmSessionManager.this.state = 3;
                        DefaultDrmSessionManager.this.postProvisionRequest();
                        return;
                    case 2:
                        DefaultDrmSessionManager.this.doLicense();
                        return;
                    case 3:
                        if (DefaultDrmSessionManager.this.state == 4) {
                            DefaultDrmSessionManager.this.state = 3;
                            DefaultDrmSessionManager.this.onError(new KeysExpiredException());
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    private class MediaDrmEventListener implements ExoMediaDrm.OnEventListener<T> {
        private MediaDrmEventListener() {
        }

        @Override // com.google.android.exoplayer2.drm.ExoMediaDrm.OnEventListener
        public void onEvent(ExoMediaDrm<? extends T> exoMediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
            if (DefaultDrmSessionManager.this.mode == 0) {
                DefaultDrmSessionManager.this.mediaDrmHandler.sendEmptyMessage(i);
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class PostResponseHandler extends Handler {
        public PostResponseHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    DefaultDrmSessionManager.this.onProvisionResponse(message.obj);
                    return;
                case 1:
                    DefaultDrmSessionManager.this.onKeyResponse(message.obj);
                    return;
                default:
                    return;
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class PostRequestHandler extends Handler {
        public PostRequestHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            Object e;
            try {
                switch (message.what) {
                    case 0:
                        e = DefaultDrmSessionManager.this.callback.executeProvisionRequest(DefaultDrmSessionManager.this.uuid, (ExoMediaDrm.ProvisionRequest) message.obj);
                        break;
                    case 1:
                        e = DefaultDrmSessionManager.this.callback.executeKeyRequest(DefaultDrmSessionManager.this.uuid, (ExoMediaDrm.KeyRequest) message.obj);
                        break;
                    default:
                        throw new RuntimeException();
                }
            } catch (Exception e2) {
                e = e2;
            }
            DefaultDrmSessionManager.this.postResponseHandler.obtainMessage(message.what, e).sendToTarget();
        }
    }
}
