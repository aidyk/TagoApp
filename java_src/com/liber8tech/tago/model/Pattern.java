package com.liber8tech.tago.model;

import android.content.Context;
import com.liber8tech.tago.protocol.Command;
import com.liber8tech.tago.protocol.ExifData;
import com.liber8tech.tago.protocol.Message;
import io.reactivex.Observable;
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

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH&R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/liber8tech/tago/model/Pattern;", "Ljava/io/Serializable;", "name", "", "desc", "src", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getName", "getSrc", "chunks", "", "Lcom/liber8tech/tago/protocol/Message;", "ctx", "Landroid/content/Context;", "getStream", "Ljava/io/InputStream;", "context", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Pattern.kt */
public abstract class Pattern implements Serializable {
    @NotNull
    private final String desc;
    @NotNull
    private final String name;
    @NotNull
    private final String src;

    @NotNull
    public abstract InputStream getStream(@NotNull Context context);

    public Pattern(@NotNull String str, @NotNull String str2, @NotNull String str3) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "desc");
        Intrinsics.checkParameterIsNotNull(str3, "src");
        this.name = str;
        this.desc = str2;
        this.src = str3;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getDesc() {
        return this.desc;
    }

    @NotNull
    public final String getSrc() {
        return this.src;
    }

    @NotNull
    public final List<Message> chunks(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        byte[] readByteArray = Okio.buffer(Okio.source(getStream(context))).readByteArray();
        ExifData.Companion companion = ExifData.Companion;
        Intrinsics.checkExpressionValueIsNotNull(readByteArray, "imageBytes");
        ExifData fromBytes = companion.fromBytes(readByteArray);
        int bLEImageSize = (int) fromBytes.getBLEImageSize();
        byte[] bArr = new byte[bLEImageSize];
        System.arraycopy(readByteArray, readByteArray.length - bLEImageSize, bArr, 0, bLEImageSize);
        List list = (List) Observable.fromIterable(ArraysKt.asIterable(bArr)).buffer(1020).map(Pattern$chunks$array$1.INSTANCE).toList().blockingGet();
        byte size = (byte) list.size();
        Intrinsics.checkExpressionValueIsNotNull(list, "array");
        List<byte[]> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (byte[] bArr2 : list2) {
            Message.Companion companion2 = Message.Companion;
            Intrinsics.checkExpressionValueIsNotNull(bArr2, "it");
            arrayList.add(companion2.withPayload(bArr2, size));
        }
        List<Message> mutableList = CollectionsKt.toMutableList((Collection) arrayList);
        mutableList.add(0, Message.Companion.fromCommand$default(Message.Companion, Command.FIND_IMAGE, Long.valueOf(fromBytes.getImageId()), null, null, 12, null));
        return mutableList;
    }
}
