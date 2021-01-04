package io.realm.internal;

import io.realm.CompactOnLaunchCallback;
import io.realm.RealmConfiguration;
import io.realm.internal.OsSharedRealm;
import io.realm.log.RealmLog;
import java.net.URI;
import java.net.URISyntaxException;
import javax.annotation.Nullable;

public class OsRealmConfig implements NativeObject {
    private static final byte SCHEMA_MODE_VALUE_ADDITIVE = 4;
    private static final byte SCHEMA_MODE_VALUE_AUTOMATIC = 0;
    private static final byte SCHEMA_MODE_VALUE_IMMUTABLE = 1;
    private static final byte SCHEMA_MODE_VALUE_MANUAL = 5;
    private static final byte SCHEMA_MODE_VALUE_READONLY = 2;
    private static final byte SCHEMA_MODE_VALUE_RESET_FILE = 3;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_AFTER_CHANGES_UPLOADED = 2;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_IMMEDIATELY = 0;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_LIVE_INDEFINETELY = 1;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final CompactOnLaunchCallback compactOnLaunchCallback;
    private final NativeContext context;
    private final OsSharedRealm.InitializationCallback initializationCallback;
    private final OsSharedRealm.MigrationCallback migrationCallback;
    private final long nativePtr;
    private final RealmConfiguration realmConfiguration;
    private final URI resolvedRealmURI;

    private static native long nativeCreate(String str, boolean z, boolean z2);

    private static native String nativeCreateAndSetSyncConfig(long j, String str, String str2, String str3, String str4, boolean z, byte b);

    private static native void nativeEnableChangeNotification(long j, boolean z);

    private static native long nativeGetFinalizerPtr();

    private static native void nativeSetCompactOnLaunchCallback(long j, CompactOnLaunchCallback compactOnLaunchCallback2);

    private static native void nativeSetEncryptionKey(long j, byte[] bArr);

    private static native void nativeSetInMemory(long j, boolean z);

    private native void nativeSetInitializationCallback(long j, OsSharedRealm.InitializationCallback initializationCallback2);

    private native void nativeSetSchemaConfig(long j, byte b, long j2, long j3, @Nullable OsSharedRealm.MigrationCallback migrationCallback2);

    private static native void nativeSetSyncConfigSslSettings(long j, boolean z, String str);

    public enum Durability {
        FULL(0),
        MEM_ONLY(1);
        
        final int value;

        private Durability(int i) {
            this.value = i;
        }
    }

    public enum SchemaMode {
        SCHEMA_MODE_AUTOMATIC((byte) 0),
        SCHEMA_MODE_IMMUTABLE((byte) 1),
        SCHEMA_MODE_READONLY((byte) 2),
        SCHEMA_MODE_RESET_FILE((byte) 3),
        SCHEMA_MODE_ADDITIVE((byte) 4),
        SCHEMA_MODE_MANUAL((byte) 5);
        
        final byte value;

        private SchemaMode(byte b) {
            this.value = b;
        }

        public byte getNativeValue() {
            return this.value;
        }
    }

    public enum SyncSessionStopPolicy {
        IMMEDIATELY((byte) 0),
        LIVE_INDEFINITELY((byte) 1),
        AFTER_CHANGES_UPLOADED((byte) 2);
        
        final byte value;

        private SyncSessionStopPolicy(byte b) {
            this.value = b;
        }

        public byte getNativeValue() {
            return this.value;
        }
    }

    public static class Builder {
        private boolean autoUpdateNotification = false;
        private RealmConfiguration configuration;
        private OsSharedRealm.InitializationCallback initializationCallback = null;
        private OsSharedRealm.MigrationCallback migrationCallback = null;
        private OsSchemaInfo schemaInfo = null;

        public Builder(RealmConfiguration realmConfiguration) {
            this.configuration = realmConfiguration;
        }

        public Builder schemaInfo(@Nullable OsSchemaInfo osSchemaInfo) {
            this.schemaInfo = osSchemaInfo;
            return this;
        }

        public Builder migrationCallback(@Nullable OsSharedRealm.MigrationCallback migrationCallback2) {
            this.migrationCallback = migrationCallback2;
            return this;
        }

        public Builder initializationCallback(@Nullable OsSharedRealm.InitializationCallback initializationCallback2) {
            this.initializationCallback = initializationCallback2;
            return this;
        }

        public Builder autoUpdateNotification(boolean z) {
            this.autoUpdateNotification = z;
            return this;
        }

        /* access modifiers changed from: package-private */
        public OsRealmConfig build() {
            return new OsRealmConfig(this.configuration, this.autoUpdateNotification, this.schemaInfo, this.migrationCallback, this.initializationCallback);
        }
    }

    private OsRealmConfig(RealmConfiguration realmConfiguration2, boolean z, @Nullable OsSchemaInfo osSchemaInfo, @Nullable OsSharedRealm.MigrationCallback migrationCallback2, @Nullable OsSharedRealm.InitializationCallback initializationCallback2) {
        long nativePtr2;
        this.context = new NativeContext();
        this.realmConfiguration = realmConfiguration2;
        boolean z2 = true;
        this.nativePtr = nativeCreate(realmConfiguration2.getPath(), false, true);
        NativeContext.dummyContext.addReference(this);
        Object[] userAndServerUrl = ObjectServerFacade.getSyncFacadeIfPossible().getUserAndServerUrl(this.realmConfiguration);
        String str = (String) userAndServerUrl[0];
        String str2 = (String) userAndServerUrl[1];
        String str3 = (String) userAndServerUrl[2];
        String str4 = (String) userAndServerUrl[3];
        boolean equals = Boolean.TRUE.equals(userAndServerUrl[4]);
        String str5 = (String) userAndServerUrl[5];
        Byte b = (Byte) userAndServerUrl[6];
        boolean equals2 = Boolean.TRUE.equals(userAndServerUrl[7]);
        byte[] encryptionKey = realmConfiguration2.getEncryptionKey();
        if (encryptionKey != null) {
            nativeSetEncryptionKey(this.nativePtr, encryptionKey);
        }
        nativeSetInMemory(this.nativePtr, realmConfiguration2.getDurability() != Durability.MEM_ONLY ? false : z2);
        nativeEnableChangeNotification(this.nativePtr, z);
        SchemaMode schemaMode = SchemaMode.SCHEMA_MODE_MANUAL;
        if (realmConfiguration2.isRecoveryConfiguration()) {
            schemaMode = SchemaMode.SCHEMA_MODE_IMMUTABLE;
        } else if (realmConfiguration2.isReadOnly()) {
            schemaMode = SchemaMode.SCHEMA_MODE_READONLY;
        } else if (str2 != null) {
            schemaMode = SchemaMode.SCHEMA_MODE_ADDITIVE;
        } else if (realmConfiguration2.shouldDeleteRealmIfMigrationNeeded()) {
            schemaMode = SchemaMode.SCHEMA_MODE_RESET_FILE;
        }
        long schemaVersion = realmConfiguration2.getSchemaVersion();
        if (osSchemaInfo == null) {
            nativePtr2 = 0;
        } else {
            nativePtr2 = osSchemaInfo.getNativePtr();
        }
        this.migrationCallback = migrationCallback2;
        nativeSetSchemaConfig(this.nativePtr, schemaMode.getNativeValue(), schemaVersion, nativePtr2, migrationCallback2);
        this.compactOnLaunchCallback = realmConfiguration2.getCompactOnLaunchCallback();
        if (this.compactOnLaunchCallback != null) {
            nativeSetCompactOnLaunchCallback(this.nativePtr, this.compactOnLaunchCallback);
        }
        this.initializationCallback = initializationCallback2;
        if (initializationCallback2 != null) {
            nativeSetInitializationCallback(this.nativePtr, initializationCallback2);
        }
        URI uri = null;
        if (str2 != null) {
            try {
                uri = new URI(nativeCreateAndSetSyncConfig(this.nativePtr, str2, str3, str, str4, equals2, b.byteValue()));
            } catch (URISyntaxException e) {
                RealmLog.error(e, "Cannot create a URI from the Realm URL address", new Object[0]);
            }
            nativeSetSyncConfigSslSettings(this.nativePtr, equals, str5);
        }
        this.resolvedRealmURI = uri;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public RealmConfiguration getRealmConfiguration() {
        return this.realmConfiguration;
    }

    public URI getResolvedRealmURI() {
        return this.resolvedRealmURI;
    }

    /* access modifiers changed from: package-private */
    public NativeContext getContext() {
        return this.context;
    }
}
