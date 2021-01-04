package com.polidea.rxandroidble2.internal.util;

import android.bluetooth.BluetoothGattDescriptor;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.UUID;

public class ByteAssociationUtil {
    private ByteAssociationUtil() {
    }

    public static Predicate<? super ByteAssociation<UUID>> characteristicUUIDPredicate(final UUID uuid) {
        return new Predicate<ByteAssociation<UUID>>() {
            /* class com.polidea.rxandroidble2.internal.util.ByteAssociationUtil.AnonymousClass1 */

            public boolean test(ByteAssociation<UUID> byteAssociation) {
                return byteAssociation.first.equals(uuid);
            }
        };
    }

    public static Function<ByteAssociation<?>, byte[]> getBytesFromAssociation() {
        return new Function<ByteAssociation<?>, byte[]>() {
            /* class com.polidea.rxandroidble2.internal.util.ByteAssociationUtil.AnonymousClass2 */

            public byte[] apply(ByteAssociation<?> byteAssociation) {
                return byteAssociation.second;
            }
        };
    }

    public static Predicate<? super ByteAssociation<BluetoothGattDescriptor>> descriptorPredicate(final BluetoothGattDescriptor bluetoothGattDescriptor) {
        return new Predicate<ByteAssociation<BluetoothGattDescriptor>>() {
            /* class com.polidea.rxandroidble2.internal.util.ByteAssociationUtil.AnonymousClass3 */

            public boolean test(ByteAssociation<BluetoothGattDescriptor> byteAssociation) throws Exception {
                return byteAssociation.first.equals(bluetoothGattDescriptor);
            }
        };
    }
}
