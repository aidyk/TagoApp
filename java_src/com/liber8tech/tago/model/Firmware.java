package com.liber8tech.tago.model;

import android.content.Context;
import com.liber8tech.tago.R;
import com.liber8tech.tago.protocol.Command;
import com.liber8tech.tago.protocol.Message;
import io.reactivex.Observable;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002¨\u0006\u000b"}, d2 = {"Lcom/liber8tech/tago/model/Firmware;", "Ljava/io/Serializable;", "()V", "chunks", "", "Lcom/liber8tech/tago/protocol/Message;", "ctx", "Landroid/content/Context;", "getStreamNetworkedSaved", "Ljava/io/InputStream;", "context", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Firmware.kt */
public final class Firmware implements Serializable {
    @NotNull
    public final List<Message> chunks(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        byte[] readByteArray = Okio.buffer(Okio.source(getStreamNetworkedSaved(context))).readByteArray();
        Intrinsics.checkExpressionValueIsNotNull(readByteArray, "firmwareBytes");
        List list = (List) Observable.fromIterable(ArraysKt.asIterable(readByteArray)).buffer(1020).map(Firmware$chunks$array$1.INSTANCE).toList().blockingGet();
        byte size = (byte) list.size();
        Intrinsics.checkExpressionValueIsNotNull(list, "array");
        List<byte[]> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (byte[] bArr : list2) {
            Message.Companion companion = Message.Companion;
            Intrinsics.checkExpressionValueIsNotNull(bArr, "it");
            arrayList.add(companion.withPayload(bArr, size));
        }
        List<Message> mutableList = CollectionsKt.toMutableList((Collection) arrayList);
        mutableList.add(0, Message.Companion.fromCommand$default(Message.Companion, Command.NEW_FIRMWARE, null, null, null, 14, null));
        return mutableList;
    }

    private final InputStream getStreamNetworkedSaved(Context context) {
        FileInputStream openFileInput = context.openFileInput(context.getString(R.string.firmware_filename));
        Intrinsics.checkExpressionValueIsNotNull(openFileInput, "context.openFileInput(co…tring.firmware_filename))");
        return openFileInput;
    }
}
