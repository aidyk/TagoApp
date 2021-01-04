package kotlin;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.share.internal.MessengerShareContentUtility;
import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.collections.UByteIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0014\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006B\u0014\b\u0001\u0012\u0006\u0010\u0007\u001a\u00020\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\tJ\u001b\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\u001b\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0004H\u0002ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u001e\u001a\u00020\u0004HÖ\u0001J\u000f\u0010\u001f\u001a\u00020\u000fH\u0016¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020#H\u0002¢\u0006\u0004\b$\u0010%J#\u0010&\u001a\u00020'2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H\u0002ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\t\u0010+\u001a\u00020,HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\b8\u0000X\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rø\u0001\u0000\u0002\u0004\n\u0002\b\u0019¨\u0006."}, d2 = {"Lkotlin/UByteArray;", "", "Lkotlin/UByte;", "size", "", "constructor-impl", "(I)[B", "storage", "", "([B)[B", "getSize-impl", "([B)I", "storage$annotations", "()V", "contains", "", "element", "contains-7apg3OU", "([BB)Z", "containsAll", MessengerShareContentUtility.ELEMENTS, "containsAll-impl", "([BLjava/util/Collection;)Z", "equals", FacebookRequestErrorClassification.KEY_OTHER, "", "get", "index", "get-impl", "([BI)B", "hashCode", "isEmpty", "isEmpty-impl", "([B)Z", "iterator", "Lkotlin/collections/UByteIterator;", "iterator-impl", "([B)Lkotlin/collections/UByteIterator;", "set", "", "value", "set-VurrAj0", "([BIB)V", "toString", "", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 1, 13})
@ExperimentalUnsignedTypes
/* compiled from: UByteArray.kt */
public final class UByteArray implements Collection<UByte>, KMappedMarker {
    @NotNull
    private final byte[] storage;

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte[] m64constructorimpl(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "storage");
        return bArr;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m67equalsimpl(byte[] bArr, @Nullable Object obj) {
        return (obj instanceof UByteArray) && Intrinsics.areEqual(bArr, ((UByteArray) obj).m78unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m68equalsimpl0(@NotNull byte[] bArr, @NotNull byte[] bArr2) {
        Intrinsics.checkParameterIsNotNull(bArr, "p1");
        Intrinsics.checkParameterIsNotNull(bArr2, "p2");
        throw null;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m71hashCodeimpl(byte[] bArr) {
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    @PublishedApi
    public static /* synthetic */ void storage$annotations() {
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m75toStringimpl(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ")";
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.Collection
    public /* synthetic */ boolean add(UByte uByte) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-7apg3OU  reason: not valid java name */
    public boolean m76add7apg3OU(byte b) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UByte> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: contains-7apg3OU  reason: not valid java name */
    public boolean m77contains7apg3OU(byte b) {
        return m65contains7apg3OU(this.storage, b);
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> collection) {
        return m66containsAllimpl(this.storage, collection);
    }

    public boolean equals(Object obj) {
        return m67equalsimpl(this.storage, obj);
    }

    public int getSize() {
        return m70getSizeimpl(this.storage);
    }

    public int hashCode() {
        return m71hashCodeimpl(this.storage);
    }

    public boolean isEmpty() {
        return m72isEmptyimpl(this.storage);
    }

    /* Return type fixed from 'kotlin.collections.UByteIterator' to match base method */
    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public java.util.Iterator<UByte> iterator() {
        return m73iteratorimpl(this.storage);
    }

    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    public String toString() {
        return m75toStringimpl(this.storage);
    }

    @NotNull
    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ byte[] m78unboximpl() {
        return this.storage;
    }

    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UByte) {
            return m77contains7apg3OU(((UByte) obj).m61unboximpl());
        }
        return false;
    }

    public final /* bridge */ int size() {
        return getSize();
    }

    @PublishedApi
    private /* synthetic */ UByteArray(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "storage");
        this.storage = bArr;
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte[] m63constructorimpl(int i) {
        return m64constructorimpl(new byte[i]);
    }

    /* renamed from: get-impl  reason: not valid java name */
    public static final byte m69getimpl(byte[] bArr, int i) {
        return UByte.m22constructorimpl(bArr[i]);
    }

    /* renamed from: set-VurrAj0  reason: not valid java name */
    public static final void m74setVurrAj0(byte[] bArr, int i, byte b) {
        bArr[i] = b;
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m70getSizeimpl(byte[] bArr) {
        return bArr.length;
    }

    @NotNull
    /* renamed from: iterator-impl  reason: not valid java name */
    public static UByteIterator m73iteratorimpl(byte[] bArr) {
        return new Iterator(bArr);
    }

    /* access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\nH\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u000e¢\u0006\u0002\n\u0000\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlin/UByteArray$Iterator;", "Lkotlin/collections/UByteIterator;", "array", "", "([B)V", "index", "", "hasNext", "", "nextUByte", "Lkotlin/UByte;", "()B", "kotlin-stdlib"}, k = 1, mv = {1, 1, 13})
    /* compiled from: UByteArray.kt */
    public static final class Iterator extends UByteIterator {
        private final byte[] array;
        private int index;

        public Iterator(@NotNull byte[] bArr) {
            Intrinsics.checkParameterIsNotNull(bArr, "array");
            this.array = bArr;
        }

        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // kotlin.collections.UByteIterator
        public byte nextUByte() {
            if (this.index < this.array.length) {
                byte[] bArr = this.array;
                int i = this.index;
                this.index = i + 1;
                return UByte.m22constructorimpl(bArr[i]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    /* renamed from: contains-7apg3OU  reason: not valid java name */
    public static boolean m65contains7apg3OU(byte[] bArr, byte b) {
        return ArraysKt.contains(bArr, b);
    }

    /* renamed from: containsAll-impl  reason: not valid java name */
    public static boolean m66containsAllimpl(byte[] bArr, @NotNull Collection<UByte> collection) {
        Intrinsics.checkParameterIsNotNull(collection, MessengerShareContentUtility.ELEMENTS);
        Collection<UByte> collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        java.util.Iterator<T> it2 = collection2.iterator();
        while (it2.hasNext()) {
            if (!ArraysKt.contains(bArr, it2.next().m61unboximpl())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static boolean m72isEmptyimpl(byte[] bArr) {
        return bArr.length == 0;
    }
}
