package kotlin.collections;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.MessengerShareContentUtility;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareBy$2;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt$compareByDescending$1;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

class CollectionsKt___CollectionsKt extends CollectionsKt___CollectionsJvmKt {
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: java.lang.Iterable<? extends T> */
    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> Iterable<T> asIterable(Iterable<? extends T> iterable) {
        return iterable;
    }

    private static final <T> T component1(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        return (T) list.get(0);
    }

    private static final <T> T component2(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        return (T) list.get(1);
    }

    private static final <T> T component3(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        return (T) list.get(2);
    }

    private static final <T> T component4(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        return (T) list.get(3);
    }

    private static final <T> T component5(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        return (T) list.get(4);
    }

    public static final <T> boolean contains(Iterable<? extends T> iterable, T t) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t);
        }
        return CollectionsKt.indexOf(iterable, t) >= 0;
    }

    public static final <T> T elementAt(Iterable<? extends T> iterable, int i) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        return iterable instanceof List ? (T) ((List) iterable).get(i) : (T) CollectionsKt.elementAtOrElse(iterable, i, new CollectionsKt___CollectionsKt$elementAt$1(i));
    }

    private static final <T> T elementAt(List<? extends T> list, int i) {
        return (T) list.get(i);
    }

    public static final <T> T elementAtOrElse(Iterable<? extends T> iterable, int i, Function1<? super Integer, ? extends T> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "defaultValue");
        if (iterable instanceof List) {
            List list = (List) iterable;
            return (i < 0 || i > CollectionsKt.getLastIndex(list)) ? (T) function1.invoke(Integer.valueOf(i)) : (T) list.get(i);
        } else if (i < 0) {
            return (T) function1.invoke(Integer.valueOf(i));
        } else {
            int i2 = 0;
            for (T t : iterable) {
                int i3 = i2 + 1;
                if (i == i2) {
                    return t;
                }
                i2 = i3;
            }
            return (T) function1.invoke(Integer.valueOf(i));
        }
    }

    private static final <T> T elementAtOrElse(List<? extends T> list, int i, Function1<? super Integer, ? extends T> function1) {
        return (i < 0 || i > CollectionsKt.getLastIndex(list)) ? (T) function1.invoke(Integer.valueOf(i)) : (T) list.get(i);
    }

    public static final <T> T elementAtOrNull(Iterable<? extends T> iterable, int i) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            return (T) CollectionsKt.getOrNull((List) iterable, i);
        }
        if (i < 0) {
            return null;
        }
        int i2 = 0;
        for (T t : iterable) {
            int i3 = i2 + 1;
            if (i == i2) {
                return t;
            }
            i2 = i3;
        }
        return null;
    }

    private static final <T> T elementAtOrNull(List<? extends T> list, int i) {
        return (T) CollectionsKt.getOrNull(list, i);
    }

    public static final <T> T first(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            return (T) CollectionsKt.first((List) iterable);
        }
        Iterator<? extends T> it2 = iterable.iterator();
        if (it2.hasNext()) {
            return (T) it2.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T first(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (!list.isEmpty()) {
            return (T) list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T first(java.lang.Iterable<? extends T> r2, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r3) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.util.Iterator r2 = r2.iterator()
        L_0x000e:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0025
            java.lang.Object r0 = r2.next()
            java.lang.Object r1 = r3.invoke(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x000e
            return r0
        L_0x0025:
            java.util.NoSuchElementException r2 = new java.util.NoSuchElementException
            java.lang.String r3 = "Collection contains no element matching the predicate."
            r2.<init>(r3)
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.first(java.lang.Iterable, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    public static final <T> T firstOrNull(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(0);
        }
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        return (T) it2.next();
    }

    public static final <T> T firstOrNull(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (list.isEmpty()) {
            return null;
        }
        return (T) list.get(0);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T firstOrNull(java.lang.Iterable<? extends T> r2, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r3) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.util.Iterator r2 = r2.iterator()
        L_0x000e:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0025
            java.lang.Object r0 = r2.next()
            java.lang.Object r1 = r3.invoke(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x000e
            return r0
        L_0x0025:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.firstOrNull(java.lang.Iterable, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    private static final <T> T getOrElse(List<? extends T> list, int i, Function1<? super Integer, ? extends T> function1) {
        return (i < 0 || i > CollectionsKt.getLastIndex(list)) ? (T) function1.invoke(Integer.valueOf(i)) : (T) list.get(i);
    }

    public static final <T> T getOrNull(List<? extends T> list, int i) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (i < 0 || i > CollectionsKt.getLastIndex(list)) {
            return null;
        }
        return (T) list.get(i);
    }

    public static final <T> int indexOf(Iterable<? extends T> iterable, T t) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t);
        }
        int i = 0;
        for (Object obj : iterable) {
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            if (Intrinsics.areEqual(t, obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final <T> int indexOf(List<? extends T> list, T t) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        return list.indexOf(t);
    }

    public static final <T> int indexOfFirst(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            if (function1.invoke(obj).booleanValue()) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final <T> int indexOfFirst(List<? extends T> list, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        Iterator<? extends T> it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (function1.invoke((Object) it2.next()).booleanValue()) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final <T> int indexOfLast(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        int i2 = -1;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            if (function1.invoke(obj).booleanValue()) {
                i2 = i;
            }
            i++;
        }
        return i2;
    }

    public static final <T> int indexOfLast(List<? extends T> list, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (function1.invoke((Object) listIterator.previous()).booleanValue()) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public static final <T> T last(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            return (T) CollectionsKt.last((List) iterable);
        }
        Iterator<? extends T> it2 = iterable.iterator();
        if (it2.hasNext()) {
            T t = (T) it2.next();
            while (it2.hasNext()) {
                t = (T) it2.next();
            }
            return t;
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T last(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (!list.isEmpty()) {
            return (T) list.get(CollectionsKt.getLastIndex(list));
        }
        throw new NoSuchElementException("List is empty.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T last(java.lang.Iterable<? extends T> r4, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r5) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.util.Iterator r4 = r4.iterator()
            r0 = 0
            r1 = 0
        L_0x0010:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L_0x002a
            java.lang.Object r2 = r4.next()
            java.lang.Object r3 = r5.invoke(r2)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto L_0x0010
            r0 = 1
            r0 = r2
            r1 = 1
            goto L_0x0010
        L_0x002a:
            if (r1 == 0) goto L_0x002d
            return r0
        L_0x002d:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Collection contains no element matching the predicate."
            r4.<init>(r5)
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.last(java.lang.Iterable, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T last(java.util.List<? extends T> r2, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r3) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            int r0 = r2.size()
            java.util.ListIterator r2 = r2.listIterator(r0)
        L_0x0012:
            boolean r0 = r2.hasPrevious()
            if (r0 == 0) goto L_0x0029
            java.lang.Object r0 = r2.previous()
            java.lang.Object r1 = r3.invoke(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x0012
            return r0
        L_0x0029:
            java.util.NoSuchElementException r2 = new java.util.NoSuchElementException
            java.lang.String r3 = "List contains no element matching the predicate."
            r2.<init>(r3)
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.last(java.util.List, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    public static final <T> int lastIndexOf(Iterable<? extends T> iterable, T t) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            return ((List) iterable).lastIndexOf(t);
        }
        int i = -1;
        int i2 = 0;
        for (Object obj : iterable) {
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            if (Intrinsics.areEqual(t, obj)) {
                i = i2;
            }
            i2++;
        }
        return i;
    }

    public static final <T> int lastIndexOf(List<? extends T> list, T t) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        return list.lastIndexOf(t);
    }

    public static final <T> T lastOrNull(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(list.size() - 1);
        }
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        T t = (T) it2.next();
        while (it2.hasNext()) {
            t = (T) it2.next();
        }
        return t;
    }

    public static final <T> T lastOrNull(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (list.isEmpty()) {
            return null;
        }
        return (T) list.get(list.size() - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T lastOrNull(java.lang.Iterable<? extends T> r3, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r4) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            java.util.Iterator r3 = r3.iterator()
            r0 = 0
        L_0x000f:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L_0x0027
            java.lang.Object r1 = r3.next()
            java.lang.Object r2 = r4.invoke(r1)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L_0x000f
            r0 = r1
            goto L_0x000f
        L_0x0027:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.lastOrNull(java.lang.Iterable, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T lastOrNull(java.util.List<? extends T> r2, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r3) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            int r0 = r2.size()
            java.util.ListIterator r2 = r2.listIterator(r0)
        L_0x0012:
            boolean r0 = r2.hasPrevious()
            if (r0 == 0) goto L_0x0029
            java.lang.Object r0 = r2.previous()
            java.lang.Object r1 = r3.invoke(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x0012
            return r0
        L_0x0029:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.lastOrNull(java.util.List, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    private static final <T> T random(Collection<? extends T> collection) {
        return (T) CollectionsKt.random(collection, Random.Default);
    }

    public static final <T> T random(Collection<? extends T> collection, Random random) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!collection.isEmpty()) {
            return (T) CollectionsKt.elementAt(collection, random.nextInt(collection.size()));
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T single(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            return (T) CollectionsKt.single((List) iterable);
        }
        Iterator<? extends T> it2 = iterable.iterator();
        if (it2.hasNext()) {
            T t = (T) it2.next();
            if (!it2.hasNext()) {
                return t;
            }
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T single(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        switch (list.size()) {
            case 0:
                throw new NoSuchElementException("List is empty.");
            case 1:
                return (T) list.get(0);
            default:
                throw new IllegalArgumentException("List has more than one element.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T single(java.lang.Iterable<? extends T> r4, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r5) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.util.Iterator r4 = r4.iterator()
            r0 = 0
            r1 = 0
        L_0x0010:
            boolean r2 = r4.hasNext()
            if (r2 == 0) goto L_0x0036
            java.lang.Object r2 = r4.next()
            java.lang.Object r3 = r5.invoke(r2)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto L_0x0010
            if (r1 != 0) goto L_0x002c
            r0 = 1
            r0 = r2
            r1 = 1
            goto L_0x0010
        L_0x002c:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "Collection contains more than one matching element."
            r4.<init>(r5)
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            throw r4
        L_0x0036:
            if (r1 == 0) goto L_0x0039
            return r0
        L_0x0039:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Collection contains no element matching the predicate."
            r4.<init>(r5)
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.single(java.lang.Iterable, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    public static final <T> T singleOrNull(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.size() == 1) {
                return (T) list.get(0);
            }
            return null;
        }
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        T t = (T) it2.next();
        if (it2.hasNext()) {
            return null;
        }
        return t;
    }

    public static final <T> T singleOrNull(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (list.size() == 1) {
            return (T) list.get(0);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T singleOrNull(java.lang.Iterable<? extends T> r5, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r6) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.lang.String r0 = "predicate"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r6, r0)
            java.util.Iterator r5 = r5.iterator()
            r0 = 0
            r1 = 0
            r2 = r0
        L_0x0011:
            boolean r3 = r5.hasNext()
            if (r3 == 0) goto L_0x002d
            java.lang.Object r3 = r5.next()
            java.lang.Object r4 = r6.invoke(r3)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L_0x0011
            if (r1 == 0) goto L_0x002a
            return r0
        L_0x002a:
            r1 = 1
            r2 = r3
            goto L_0x0011
        L_0x002d:
            if (r1 != 0) goto L_0x0030
            return r0
        L_0x0030:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.singleOrNull(java.lang.Iterable, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    public static final <T> List<T> drop(Iterable<? extends T> iterable, int i) {
        ArrayList arrayList;
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        int i2 = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        } else if (i == 0) {
            return CollectionsKt.toList(iterable);
        } else {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                int size = collection.size() - i;
                if (size <= 0) {
                    return CollectionsKt.emptyList();
                }
                if (size == 1) {
                    return CollectionsKt.listOf(CollectionsKt.last(iterable));
                }
                arrayList = new ArrayList(size);
                if (iterable instanceof List) {
                    if (iterable instanceof RandomAccess) {
                        int size2 = collection.size();
                        while (i < size2) {
                            arrayList.add(((List) iterable).get(i));
                            i++;
                        }
                    } else {
                        ListIterator listIterator = ((List) iterable).listIterator(i);
                        while (listIterator.hasNext()) {
                            arrayList.add(listIterator.next());
                        }
                    }
                    return arrayList;
                }
            } else {
                arrayList = new ArrayList();
            }
            for (Object obj : iterable) {
                int i3 = i2 + 1;
                if (i2 >= i) {
                    arrayList.add(obj);
                }
                i2 = i3;
            }
            return CollectionsKt.optimizeReadOnlyList(arrayList);
        }
    }

    public static final <T> List<T> dropLast(List<? extends T> list, int i) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (i >= 0) {
            return CollectionsKt.take(list, RangesKt.coerceAtLeast(list.size() - i, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
    }

    public static final <T> List<T> dropLastWhile(List<? extends T> list, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        if (!list.isEmpty()) {
            ListIterator<? extends T> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (!function1.invoke((Object) listIterator.previous()).booleanValue()) {
                    return CollectionsKt.take(list, listIterator.nextIndex() + 1);
                }
            }
        }
        return CollectionsKt.emptyList();
    }

    public static final <T> List<T> dropWhile(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (z) {
                arrayList.add(obj);
            } else if (!function1.invoke(obj).booleanValue()) {
                arrayList.add(obj);
                z = true;
            }
        }
        return arrayList;
    }

    public static final <T> List<T> filter(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (function1.invoke(obj).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> List<T> filterIndexed(Iterable<? extends T> iterable, Function2<? super Integer, ? super T, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            int i2 = i + 1;
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            if (function2.invoke(Integer.valueOf(i), obj).booleanValue()) {
                arrayList.add(obj);
            }
            i = i2;
        }
        return arrayList;
    }

    private static final <R> List<R> filterIsInstance(Iterable<?> iterable) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            Intrinsics.reifiedOperationMarker(3, "R");
            if (obj instanceof Object) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private static final <R, C extends Collection<? super R>> C filterIsInstanceTo(Iterable<?> iterable, C c) {
        for (Object obj : iterable) {
            Intrinsics.reifiedOperationMarker(3, "R");
            if (obj instanceof Object) {
                c.add(obj);
            }
        }
        return c;
    }

    public static final <T> List<T> filterNot(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (!function1.invoke(obj).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> List<T> filterNotNull(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        return (List) CollectionsKt.filterNotNullTo(iterable, new ArrayList());
    }

    public static final <C extends Collection<? super T>, T> C filterNotNullTo(Iterable<? extends T> iterable, C c) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        for (Object obj : iterable) {
            if (obj != null) {
                c.add(obj);
            }
        }
        return c;
    }

    public static final <T, C extends Collection<? super T>> C filterNotTo(Iterable<? extends T> iterable, C c, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (!function1.invoke(obj).booleanValue()) {
                c.add(obj);
            }
        }
        return c;
    }

    public static final <T, C extends Collection<? super T>> C filterTo(Iterable<? extends T> iterable, C c, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (function1.invoke(obj).booleanValue()) {
                c.add(obj);
            }
        }
        return c;
    }

    public static final <T> List<T> slice(List<? extends T> list, IntRange intRange) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(intRange, "indices");
        if (intRange.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        return CollectionsKt.toList(list.subList(intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1));
    }

    public static final <T> List<T> slice(List<? extends T> list, Iterable<Integer> iterable) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable, "indices");
        int collectionSizeOrDefault = CollectionsKt.collectionSizeOrDefault(iterable, 10);
        if (collectionSizeOrDefault == 0) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Integer num : iterable) {
            arrayList.add(list.get(num.intValue()));
        }
        return arrayList;
    }

    public static final <T> List<T> take(Iterable<? extends T> iterable, int i) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        int i2 = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        } else if (i == 0) {
            return CollectionsKt.emptyList();
        } else {
            if (iterable instanceof Collection) {
                if (i >= ((Collection) iterable).size()) {
                    return CollectionsKt.toList(iterable);
                }
                if (i == 1) {
                    return CollectionsKt.listOf(CollectionsKt.first(iterable));
                }
            }
            ArrayList arrayList = new ArrayList(i);
            for (Object obj : iterable) {
                int i3 = i2 + 1;
                if (i2 == i) {
                    break;
                }
                arrayList.add(obj);
                i2 = i3;
            }
            return CollectionsKt.optimizeReadOnlyList(arrayList);
        }
    }

    public static final <T> List<T> takeLast(List<? extends T> list, int i) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        } else if (i == 0) {
            return CollectionsKt.emptyList();
        } else {
            int size = list.size();
            if (i >= size) {
                return CollectionsKt.toList(list);
            }
            if (i == 1) {
                return CollectionsKt.listOf(CollectionsKt.last((List) list));
            }
            ArrayList arrayList = new ArrayList(i);
            if (list instanceof RandomAccess) {
                for (int i2 = size - i; i2 < size; i2++) {
                    arrayList.add(list.get(i2));
                }
            } else {
                ListIterator<? extends T> listIterator = list.listIterator(size - i);
                while (listIterator.hasNext()) {
                    arrayList.add(listIterator.next());
                }
            }
            return arrayList;
        }
    }

    public static final <T> List<T> takeLastWhile(List<? extends T> list, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        if (list.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (!function1.invoke((Object) listIterator.previous()).booleanValue()) {
                listIterator.next();
                int size = list.size() - listIterator.nextIndex();
                if (size == 0) {
                    return CollectionsKt.emptyList();
                }
                ArrayList arrayList = new ArrayList(size);
                while (listIterator.hasNext()) {
                    arrayList.add(listIterator.next());
                }
                return arrayList;
            }
        }
        return CollectionsKt.toList(list);
    }

    public static final <T> List<T> takeWhile(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (!function1.invoke(obj).booleanValue()) {
                break;
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    public static final <T> List<T> reversed(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return CollectionsKt.toList(iterable);
        }
        List<T> mutableList = CollectionsKt.toMutableList(iterable);
        CollectionsKt.reverse(mutableList);
        return mutableList;
    }

    public static final <T, R extends Comparable<? super R>> void sortBy(List<T> list, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        if (list.size() > 1) {
            CollectionsKt.sortWith(list, new ComparisonsKt__ComparisonsKt$compareBy$2(function1));
        }
    }

    public static final <T, R extends Comparable<? super R>> void sortByDescending(List<T> list, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        if (list.size() > 1) {
            CollectionsKt.sortWith(list, new ComparisonsKt__ComparisonsKt$compareByDescending$1(function1));
        }
    }

    public static final <T extends Comparable<? super T>> void sortDescending(List<T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        CollectionsKt.sortWith(list, ComparisonsKt.reverseOrder());
    }

    public static final <T extends Comparable<? super T>> List<T> sorted(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return CollectionsKt.toList(iterable);
            }
            Object[] array = collection.toArray(new Comparable[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            } else if (array != null) {
                Comparable[] comparableArr = (Comparable[]) array;
                if (comparableArr != null) {
                    Comparable[] comparableArr2 = comparableArr;
                    ArraysKt.sort((Object[]) comparableArr2);
                    return ArraysKt.asList(comparableArr2);
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        } else {
            List<T> mutableList = CollectionsKt.toMutableList(iterable);
            CollectionsKt.sort(mutableList);
            return mutableList;
        }
    }

    public static final <T, R extends Comparable<? super R>> List<T> sortedBy(Iterable<? extends T> iterable, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        return CollectionsKt.sortedWith(iterable, new ComparisonsKt__ComparisonsKt$compareBy$2(function1));
    }

    public static final <T, R extends Comparable<? super R>> List<T> sortedByDescending(Iterable<? extends T> iterable, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        return CollectionsKt.sortedWith(iterable, new ComparisonsKt__ComparisonsKt$compareByDescending$1(function1));
    }

    public static final <T extends Comparable<? super T>> List<T> sortedDescending(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        return CollectionsKt.sortedWith(iterable, ComparisonsKt.reverseOrder());
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v4, resolved type: java.util.Collection */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> sortedWith(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return CollectionsKt.toList(iterable);
            }
            Object[] array = collection.toArray(new Object[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            } else if (array != null) {
                ArraysKt.sortWith(array, comparator);
                return ArraysKt.asList(array);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        } else {
            List<T> mutableList = CollectionsKt.toMutableList(iterable);
            CollectionsKt.sortWith(mutableList, comparator);
            return mutableList;
        }
    }

    public static final boolean[] toBooleanArray(Collection<Boolean> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        boolean[] zArr = new boolean[collection.size()];
        int i = 0;
        for (Boolean bool : collection) {
            zArr[i] = bool.booleanValue();
            i++;
        }
        return zArr;
    }

    public static final byte[] toByteArray(Collection<Byte> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        byte[] bArr = new byte[collection.size()];
        int i = 0;
        for (Byte b : collection) {
            bArr[i] = b.byteValue();
            i++;
        }
        return bArr;
    }

    public static final char[] toCharArray(Collection<Character> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        char[] cArr = new char[collection.size()];
        int i = 0;
        for (Character ch : collection) {
            cArr[i] = ch.charValue();
            i++;
        }
        return cArr;
    }

    public static final double[] toDoubleArray(Collection<Double> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        double[] dArr = new double[collection.size()];
        int i = 0;
        for (Double d : collection) {
            dArr[i] = d.doubleValue();
            i++;
        }
        return dArr;
    }

    public static final float[] toFloatArray(Collection<Float> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        float[] fArr = new float[collection.size()];
        int i = 0;
        for (Float f : collection) {
            fArr[i] = f.floatValue();
            i++;
        }
        return fArr;
    }

    public static final int[] toIntArray(Collection<Integer> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        int[] iArr = new int[collection.size()];
        int i = 0;
        for (Integer num : collection) {
            iArr[i] = num.intValue();
            i++;
        }
        return iArr;
    }

    public static final long[] toLongArray(Collection<Long> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        long[] jArr = new long[collection.size()];
        int i = 0;
        for (Long l : collection) {
            jArr[i] = l.longValue();
            i++;
        }
        return jArr;
    }

    public static final short[] toShortArray(Collection<Short> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        short[] sArr = new short[collection.size()];
        int i = 0;
        for (Short sh : collection) {
            sArr[i] = sh.shortValue();
            i++;
        }
        return sArr;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: java.util.LinkedHashMap */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, V> Map<K, V> associate(Iterable<? extends T> iterable, Function1<? super T, ? extends Pair<? extends K, ? extends V>> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterable, 10)), 16));
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Pair pair = (Pair) function1.invoke((Object) it2.next());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: java.util.LinkedHashMap */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K> Map<K, T> associateBy(Iterable<? extends T> iterable, Function1<? super T, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterable, 10)), 16));
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            linkedHashMap.put(function1.invoke(obj), obj);
        }
        return linkedHashMap;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: java.util.LinkedHashMap */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, V> Map<K, V> associateBy(Iterable<? extends T> iterable, Function1<? super T, ? extends K> function1, Function1<? super T, ? extends V> function12) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Intrinsics.checkParameterIsNotNull(function12, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterable, 10)), 16));
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            linkedHashMap.put(function1.invoke(obj), function12.invoke(obj));
        }
        return linkedHashMap;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: M extends java.util.Map<? super K, ? super T> */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, M extends Map<? super K, ? super T>> M associateByTo(Iterable<? extends T> iterable, M m, Function1<? super T, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(m, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            m.put(function1.invoke(obj), obj);
        }
        return m;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: M extends java.util.Map<? super K, ? super V> */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, V, M extends Map<? super K, ? super V>> M associateByTo(Iterable<? extends T> iterable, M m, Function1<? super T, ? extends K> function1, Function1<? super T, ? extends V> function12) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(m, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Intrinsics.checkParameterIsNotNull(function12, "valueTransform");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            m.put(function1.invoke(obj), function12.invoke(obj));
        }
        return m;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: M extends java.util.Map<? super K, ? super V> */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, V, M extends Map<? super K, ? super V>> M associateTo(Iterable<? extends T> iterable, M m, Function1<? super T, ? extends Pair<? extends K, ? extends V>> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(m, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Pair pair = (Pair) function1.invoke((Object) it2.next());
            m.put(pair.getFirst(), pair.getSecond());
        }
        return m;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v2, resolved type: java.util.LinkedHashMap */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> associateWith(Iterable<? extends K> iterable, Function1<? super K, ? extends V> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterable, 10)), 16));
        Iterator<? extends K> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            linkedHashMap.put(obj, function1.invoke(obj));
        }
        return linkedHashMap;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: M extends java.util.Map<? super K, ? super V> */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V, M extends Map<? super K, ? super V>> M associateWithTo(Iterable<? extends K> iterable, M m, Function1<? super K, ? extends V> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(m, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "valueSelector");
        Iterator<? extends K> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            m.put(obj, function1.invoke(obj));
        }
        return m;
    }

    public static final <T, C extends Collection<? super T>> C toCollection(Iterable<? extends T> iterable, C c) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            c.add(it2.next());
        }
        return c;
    }

    public static final <T> HashSet<T> toHashSet(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        return (HashSet) CollectionsKt.toCollection(iterable, new HashSet(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(iterable, 12))));
    }

    public static final <T> List<T> toList(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (!(iterable instanceof Collection)) {
            return CollectionsKt.optimizeReadOnlyList(CollectionsKt.toMutableList(iterable));
        }
        Collection collection = (Collection) iterable;
        switch (collection.size()) {
            case 0:
                return CollectionsKt.emptyList();
            case 1:
                return CollectionsKt.listOf(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            default:
                return CollectionsKt.toMutableList(collection);
        }
    }

    public static final <T> List<T> toMutableList(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            return CollectionsKt.toMutableList((Collection) iterable);
        }
        return (List) CollectionsKt.toCollection(iterable, new ArrayList());
    }

    public static final <T> List<T> toMutableList(Collection<? extends T> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        return new ArrayList(collection);
    }

    public static final <T> Set<T> toSet(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (!(iterable instanceof Collection)) {
            return SetsKt.optimizeReadOnlySet((Set) CollectionsKt.toCollection(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        switch (collection.size()) {
            case 0:
                return SetsKt.emptySet();
            case 1:
                return SetsKt.setOf(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            default:
                return (Set) CollectionsKt.toCollection(iterable, new LinkedHashSet(MapsKt.mapCapacity(collection.size())));
        }
    }

    public static final <T, R> List<R> flatMap(Iterable<? extends T> iterable, Function1<? super T, ? extends Iterable<? extends R>> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            CollectionsKt.addAll(arrayList, (Iterable) function1.invoke((Object) it2.next()));
        }
        return arrayList;
    }

    public static final <T, R, C extends Collection<? super R>> C flatMapTo(Iterable<? extends T> iterable, C c, Function1<? super T, ? extends Iterable<? extends R>> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            CollectionsKt.addAll(c, (Iterable) function1.invoke((Object) it2.next()));
        }
        return c;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v3, resolved type: java.util.LinkedHashMap */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K> Map<K, List<T>> groupBy(Iterable<? extends T> iterable, Function1<? super T, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            Object invoke = function1.invoke(obj);
            Object obj2 = linkedHashMap.get(invoke);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(invoke, obj2);
            }
            ((List) obj2).add(obj);
        }
        return linkedHashMap;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v4, resolved type: java.util.LinkedHashMap */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, V> Map<K, List<V>> groupBy(Iterable<? extends T> iterable, Function1<? super T, ? extends K> function1, Function1<? super T, ? extends V> function12) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Intrinsics.checkParameterIsNotNull(function12, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            Object invoke = function1.invoke(obj);
            Object obj2 = linkedHashMap.get(invoke);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(invoke, obj2);
            }
            ((List) obj2).add(function12.invoke(obj));
        }
        return linkedHashMap;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: M extends java.util.Map<? super K, java.util.List<T>> */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, M extends Map<? super K, List<T>>> M groupByTo(Iterable<? extends T> iterable, M m, Function1<? super T, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(m, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            Object invoke = function1.invoke(obj);
            Object obj2 = m.get(invoke);
            if (obj2 == null) {
                obj2 = new ArrayList();
                m.put(invoke, obj2);
            }
            ((List) obj2).add(obj);
        }
        return m;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: M extends java.util.Map<? super K, java.util.List<V>> */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, K, V, M extends Map<? super K, List<V>>> M groupByTo(Iterable<? extends T> iterable, M m, Function1<? super T, ? extends K> function1, Function1<? super T, ? extends V> function12) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(m, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        Intrinsics.checkParameterIsNotNull(function12, "valueTransform");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            Object invoke = function1.invoke(obj);
            Object obj2 = m.get(invoke);
            if (obj2 == null) {
                obj2 = new ArrayList();
                m.put(invoke, obj2);
            }
            ((List) obj2).add(function12.invoke(obj));
        }
        return m;
    }

    public static final <T, K> Grouping<T, K> groupingBy(Iterable<? extends T> iterable, Function1<? super T, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "keySelector");
        return new CollectionsKt___CollectionsKt$groupingBy$1(iterable, function1);
    }

    public static final <T, R> List<R> map(Iterable<? extends T> iterable, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList.add(function1.invoke((Object) it2.next()));
        }
        return arrayList;
    }

    public static final <T, R> List<R> mapIndexed(Iterable<? extends T> iterable, Function2<? super Integer, ? super T, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            int i2 = i + 1;
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            arrayList.add(function2.invoke(Integer.valueOf(i), obj));
            i = i2;
        }
        return arrayList;
    }

    public static final <T, R> List<R> mapIndexedNotNull(Iterable<? extends T> iterable, Function2<? super Integer, ? super T, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            int i2 = i + 1;
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            Object invoke = function2.invoke(Integer.valueOf(i), obj);
            if (invoke != null) {
                arrayList.add(invoke);
            }
            i = i2;
        }
        return arrayList;
    }

    public static final <T, R, C extends Collection<? super R>> C mapIndexedTo(Iterable<? extends T> iterable, C c, Function2<? super Integer, ? super T, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            int i2 = i + 1;
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            c.add(function2.invoke(Integer.valueOf(i), obj));
            i = i2;
        }
        return c;
    }

    public static final <T, R> List<R> mapNotNull(Iterable<? extends T> iterable, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object invoke = function1.invoke((Object) it2.next());
            if (invoke != null) {
                arrayList.add(invoke);
            }
        }
        return arrayList;
    }

    public static final <T, R, C extends Collection<? super R>> C mapTo(Iterable<? extends T> iterable, C c, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            c.add(function1.invoke((Object) it2.next()));
        }
        return c;
    }

    public static final <T> Iterable<IndexedValue<T>> withIndex(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        return new IndexingIterable(new CollectionsKt___CollectionsKt$withIndex$1(iterable));
    }

    public static final <T> List<T> distinct(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        return CollectionsKt.toList(CollectionsKt.toMutableSet(iterable));
    }

    public static final <T, K> List<T> distinctBy(Iterable<? extends T> iterable, Function1<? super T, ? extends K> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (hashSet.add(function1.invoke(obj))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> Set<T> intersect(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable2, FacebookRequestErrorClassification.KEY_OTHER);
        Set<T> mutableSet = CollectionsKt.toMutableSet(iterable);
        CollectionsKt.retainAll(mutableSet, iterable2);
        return mutableSet;
    }

    public static final <T> Set<T> subtract(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable2, FacebookRequestErrorClassification.KEY_OTHER);
        Set<T> mutableSet = CollectionsKt.toMutableSet(iterable);
        CollectionsKt.removeAll(mutableSet, iterable2);
        return mutableSet;
    }

    public static final <T> Set<T> toMutableSet(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        return (Set) CollectionsKt.toCollection(iterable, new LinkedHashSet());
    }

    public static final <T> Set<T> union(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable2, FacebookRequestErrorClassification.KEY_OTHER);
        Set<T> mutableSet = CollectionsKt.toMutableSet(iterable);
        CollectionsKt.addAll(mutableSet, iterable2);
        return mutableSet;
    }

    public static final <T> boolean all(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return true;
        }
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            if (!function1.invoke((Object) it2.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <T> boolean any(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            return !((Collection) iterable).isEmpty();
        }
        return iterable.iterator().hasNext();
    }

    public static final <T> boolean any(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return false;
        }
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            if (function1.invoke((Object) it2.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static final <T> int count(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        int i = 0;
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            it2.next();
            i++;
            if (i < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        return i;
    }

    private static final <T> int count(Collection<? extends T> collection) {
        return collection.size();
    }

    public static final <T> int count(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return 0;
        }
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (function1.invoke((Object) it2.next()).booleanValue() && (i = i + 1) < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwCountOverflow();
                } else {
                    throw new ArithmeticException("Count overflow has happened.");
                }
            }
        }
        return i;
    }

    public static final <T, R> R fold(Iterable<? extends T> iterable, R r, Function2<? super R, ? super T, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            r = (R) function2.invoke(r, (Object) it2.next());
        }
        return r;
    }

    public static final <T, R> R foldIndexed(Iterable<? extends T> iterable, R r, Function3<? super Integer, ? super R, ? super T, ? extends R> function3) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "operation");
        Iterator<? extends T> it2 = iterable.iterator();
        R r2 = r;
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            int i2 = i + 1;
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            r2 = (R) function3.invoke(Integer.valueOf(i), r2, obj);
            i = i2;
        }
        return r2;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:7:0x0027 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v3, resolved type: ? super R */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> R foldRight(List<? extends T> list, R r, Function2<? super T, ? super R, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        if (!list.isEmpty()) {
            ListIterator<? extends T> listIterator = list.listIterator(list.size());
            r = r;
            while (listIterator.hasPrevious()) {
                r = (Object) function2.invoke((Object) listIterator.previous(), r);
            }
        }
        return r;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:7:0x002f */
    /* JADX DEBUG: Multi-variable search result rejected for r3v3, resolved type: ? super R */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> R foldRightIndexed(List<? extends T> list, R r, Function3<? super Integer, ? super T, ? super R, ? extends R> function3) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "operation");
        if (!list.isEmpty()) {
            ListIterator<? extends T> listIterator = list.listIterator(list.size());
            r = r;
            while (listIterator.hasPrevious()) {
                r = (Object) function3.invoke(Integer.valueOf(listIterator.previousIndex()), (Object) listIterator.previous(), r);
            }
        }
        return r;
    }

    public static final <T> void forEach(Iterable<? extends T> iterable, Function1<? super T, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, NativeProtocol.WEB_DIALOG_ACTION);
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            function1.invoke((Object) it2.next());
        }
    }

    public static final <T> void forEachIndexed(Iterable<? extends T> iterable, Function2<? super Integer, ? super T, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, NativeProtocol.WEB_DIALOG_ACTION);
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            int i2 = i + 1;
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            function2.invoke(Integer.valueOf(i), obj);
            i = i2;
        }
    }

    /* renamed from: max */
    public static final Double m283max(Iterable<Double> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Iterator<Double> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        double doubleValue = it2.next().doubleValue();
        if (Double.isNaN(doubleValue)) {
            return Double.valueOf(doubleValue);
        }
        while (it2.hasNext()) {
            double doubleValue2 = it2.next().doubleValue();
            if (Double.isNaN(doubleValue2)) {
                return Double.valueOf(doubleValue2);
            }
            if (doubleValue < doubleValue2) {
                doubleValue = doubleValue2;
            }
        }
        return Double.valueOf(doubleValue);
    }

    /* renamed from: max */
    public static final Float m284max(Iterable<Float> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Iterator<Float> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        float floatValue = it2.next().floatValue();
        if (Float.isNaN(floatValue)) {
            return Float.valueOf(floatValue);
        }
        while (it2.hasNext()) {
            float floatValue2 = it2.next().floatValue();
            if (Float.isNaN(floatValue2)) {
                return Float.valueOf(floatValue2);
            }
            if (floatValue < floatValue2) {
                floatValue = floatValue2;
            }
        }
        return Float.valueOf(floatValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Comparable, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T extends java.lang.Comparable<? super T>> T max(java.lang.Iterable<? extends T> r3) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.util.Iterator r3 = r3.iterator()
            boolean r0 = r3.hasNext()
            if (r0 != 0) goto L_0x0011
            r3 = 0
            return r3
        L_0x0011:
            java.lang.Object r0 = r3.next()
            java.lang.Comparable r0 = (java.lang.Comparable) r0
        L_0x0017:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L_0x002b
            java.lang.Object r1 = r3.next()
            java.lang.Comparable r1 = (java.lang.Comparable) r1
            int r2 = r0.compareTo(r1)
            if (r2 >= 0) goto L_0x0017
            r0 = r1
            goto L_0x0017
        L_0x002b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.max(java.lang.Iterable):java.lang.Comparable");
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:10:0x0020 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:12:0x0020 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v3, resolved type: ? super T */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: java.lang.Comparable */
    /* JADX DEBUG: Multi-variable search result rejected for r0v4, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r1v3, resolved type: java.lang.Comparable */
    /* JADX DEBUG: Multi-variable search result rejected for r0v5, resolved type: ? super T */
    /* JADX DEBUG: Multi-variable search result rejected for r0v6, resolved type: ? super T */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R extends Comparable<? super R>> T maxBy(Iterable<? extends T> iterable, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        Object obj = (Object) it2.next();
        Comparable comparable = (Comparable) function1.invoke(obj);
        while (it2.hasNext()) {
            Object obj2 = (Object) it2.next();
            Comparable comparable2 = (Comparable) function1.invoke(obj2);
            if (comparable.compareTo(comparable2) < 0) {
                obj = (T) obj2;
                comparable = comparable2;
            }
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T maxWith(java.lang.Iterable<? extends T> r3, java.util.Comparator<? super T> r4) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.lang.String r0 = "comparator"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            java.util.Iterator r3 = r3.iterator()
            boolean r0 = r3.hasNext()
            if (r0 != 0) goto L_0x0016
            r3 = 0
            return r3
        L_0x0016:
            java.lang.Object r0 = r3.next()
        L_0x001a:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L_0x002c
            java.lang.Object r1 = r3.next()
            int r2 = r4.compare(r0, r1)
            if (r2 >= 0) goto L_0x001a
            r0 = r1
            goto L_0x001a
        L_0x002c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.maxWith(java.lang.Iterable, java.util.Comparator):java.lang.Object");
    }

    /* renamed from: min */
    public static final Double m285min(Iterable<Double> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Iterator<Double> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        double doubleValue = it2.next().doubleValue();
        if (Double.isNaN(doubleValue)) {
            return Double.valueOf(doubleValue);
        }
        while (it2.hasNext()) {
            double doubleValue2 = it2.next().doubleValue();
            if (Double.isNaN(doubleValue2)) {
                return Double.valueOf(doubleValue2);
            }
            if (doubleValue > doubleValue2) {
                doubleValue = doubleValue2;
            }
        }
        return Double.valueOf(doubleValue);
    }

    /* renamed from: min */
    public static final Float m286min(Iterable<Float> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Iterator<Float> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        float floatValue = it2.next().floatValue();
        if (Float.isNaN(floatValue)) {
            return Float.valueOf(floatValue);
        }
        while (it2.hasNext()) {
            float floatValue2 = it2.next().floatValue();
            if (Float.isNaN(floatValue2)) {
                return Float.valueOf(floatValue2);
            }
            if (floatValue > floatValue2) {
                floatValue = floatValue2;
            }
        }
        return Float.valueOf(floatValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Comparable, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T extends java.lang.Comparable<? super T>> T min(java.lang.Iterable<? extends T> r3) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.util.Iterator r3 = r3.iterator()
            boolean r0 = r3.hasNext()
            if (r0 != 0) goto L_0x0011
            r3 = 0
            return r3
        L_0x0011:
            java.lang.Object r0 = r3.next()
            java.lang.Comparable r0 = (java.lang.Comparable) r0
        L_0x0017:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L_0x002b
            java.lang.Object r1 = r3.next()
            java.lang.Comparable r1 = (java.lang.Comparable) r1
            int r2 = r0.compareTo(r1)
            if (r2 <= 0) goto L_0x0017
            r0 = r1
            goto L_0x0017
        L_0x002b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.min(java.lang.Iterable):java.lang.Comparable");
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:10:0x0020 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:12:0x0020 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v3, resolved type: ? super T */
    /* JADX DEBUG: Multi-variable search result rejected for r1v2, resolved type: java.lang.Comparable */
    /* JADX DEBUG: Multi-variable search result rejected for r0v4, resolved type: T */
    /* JADX DEBUG: Multi-variable search result rejected for r1v3, resolved type: java.lang.Comparable */
    /* JADX DEBUG: Multi-variable search result rejected for r0v5, resolved type: ? super T */
    /* JADX DEBUG: Multi-variable search result rejected for r0v6, resolved type: ? super T */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R extends Comparable<? super R>> T minBy(Iterable<? extends T> iterable, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return null;
        }
        Object obj = (Object) it2.next();
        Comparable comparable = (Comparable) function1.invoke(obj);
        while (it2.hasNext()) {
            Object obj2 = (Object) it2.next();
            Comparable comparable2 = (Comparable) function1.invoke(obj2);
            if (comparable.compareTo(comparable2) > 0) {
                obj = (T) obj2;
                comparable = comparable2;
            }
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T> T minWith(java.lang.Iterable<? extends T> r3, java.util.Comparator<? super T> r4) {
        /*
            java.lang.String r0 = "receiver$0"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.lang.String r0 = "comparator"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            java.util.Iterator r3 = r3.iterator()
            boolean r0 = r3.hasNext()
            if (r0 != 0) goto L_0x0016
            r3 = 0
            return r3
        L_0x0016:
            java.lang.Object r0 = r3.next()
        L_0x001a:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L_0x002c
            java.lang.Object r1 = r3.next()
            int r2 = r4.compare(r0, r1)
            if (r2 <= 0) goto L_0x001a
            r0 = r1
            goto L_0x001a
        L_0x002c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.minWith(java.lang.Iterable, java.util.Comparator):java.lang.Object");
    }

    public static final <T> boolean none(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).isEmpty();
        }
        return !iterable.iterator().hasNext();
    }

    public static final <T> boolean none(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return true;
        }
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            if (function1.invoke((Object) it2.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <T, C extends Iterable<? extends T>> C onEach(C c, Function1<? super T, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(c, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, NativeProtocol.WEB_DIALOG_ACTION);
        Iterator<T> it2 = c.iterator();
        while (it2.hasNext()) {
            function1.invoke(it2.next());
        }
        return c;
    }

    public static final <S, T extends S> S reduce(Iterable<? extends T> iterable, Function2<? super S, ? super T, ? extends S> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        Iterator<? extends T> it2 = iterable.iterator();
        if (it2.hasNext()) {
            S s = (S) it2.next();
            while (it2.hasNext()) {
                s = (S) function2.invoke(s, (Object) it2.next());
            }
            return s;
        }
        throw new UnsupportedOperationException("Empty collection can't be reduced.");
    }

    public static final <S, T extends S> S reduceIndexed(Iterable<? extends T> iterable, Function3<? super Integer, ? super S, ? super T, ? extends S> function3) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "operation");
        Iterator<? extends T> it2 = iterable.iterator();
        if (it2.hasNext()) {
            S s = (S) it2.next();
            int i = 1;
            while (it2.hasNext()) {
                int i2 = i + 1;
                if (i < 0) {
                    if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                        CollectionsKt.throwIndexOverflow();
                    } else {
                        throw new ArithmeticException("Index overflow has happened.");
                    }
                }
                s = (S) function3.invoke(Integer.valueOf(i), s, (Object) it2.next());
                i = i2;
            }
            return s;
        }
        throw new UnsupportedOperationException("Empty collection can't be reduced.");
    }

    public static final <S, T extends S> S reduceRight(List<? extends T> list, Function2<? super T, ? super S, ? extends S> function2) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        if (listIterator.hasPrevious()) {
            S s = (S) listIterator.previous();
            while (listIterator.hasPrevious()) {
                s = (S) function2.invoke((Object) listIterator.previous(), s);
            }
            return s;
        }
        throw new UnsupportedOperationException("Empty list can't be reduced.");
    }

    public static final <S, T extends S> S reduceRightIndexed(List<? extends T> list, Function3<? super Integer, ? super T, ? super S, ? extends S> function3) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "operation");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        if (listIterator.hasPrevious()) {
            S s = (S) listIterator.previous();
            while (listIterator.hasPrevious()) {
                s = (S) function3.invoke(Integer.valueOf(listIterator.previousIndex()), (Object) listIterator.previous(), s);
            }
            return s;
        }
        throw new UnsupportedOperationException("Empty list can't be reduced.");
    }

    public static final <T> int sumBy(Iterable<? extends T> iterable, Function1<? super T, Integer> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += function1.invoke((Object) it2.next()).intValue();
        }
        return i;
    }

    public static final <T> double sumByDouble(Iterable<? extends T> iterable, Function1<? super T, Double> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "selector");
        Iterator<? extends T> it2 = iterable.iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            d += function1.invoke((Object) it2.next()).doubleValue();
        }
        return d;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Iterable<? extends T> */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Iterable<T> requireNoNulls(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("null element found in " + iterable + '.');
            }
        }
        return iterable;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.util.List<? extends T> */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> requireNoNulls(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "receiver$0");
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("null element found in " + list + '.');
            }
        }
        return list;
    }

    public static final <T> List<List<T>> chunked(Iterable<? extends T> iterable, int i) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        return CollectionsKt.windowed(iterable, i, i, true);
    }

    public static final <T, R> List<R> chunked(Iterable<? extends T> iterable, int i, Function1<? super List<? extends T>, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        return CollectionsKt.windowed(iterable, i, i, true, function1);
    }

    public static final <T> List<T> minus(Iterable<? extends T> iterable, T t) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
        boolean z = false;
        for (Object obj : iterable) {
            boolean z2 = true;
            if (!z && Intrinsics.areEqual(obj, t)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> List<T> minus(Iterable<? extends T> iterable, T[] tArr) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(tArr, MessengerShareContentUtility.ELEMENTS);
        if (tArr.length == 0) {
            return CollectionsKt.toList(iterable);
        }
        HashSet hashSet = ArraysKt.toHashSet(tArr);
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (!hashSet.contains(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> List<T> minus(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable2, MessengerShareContentUtility.ELEMENTS);
        Collection convertToSetForSetOperationWith = CollectionsKt.convertToSetForSetOperationWith(iterable2, iterable);
        if (convertToSetForSetOperationWith.isEmpty()) {
            return CollectionsKt.toList(iterable);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (!convertToSetForSetOperationWith.contains(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> List<T> minus(Iterable<? extends T> iterable, Sequence<? extends T> sequence) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(sequence, MessengerShareContentUtility.ELEMENTS);
        HashSet hashSet = SequencesKt.toHashSet(sequence);
        if (hashSet.isEmpty()) {
            return CollectionsKt.toList(iterable);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (!hashSet.contains(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private static final <T> List<T> minusElement(Iterable<? extends T> iterable, T t) {
        return CollectionsKt.minus((Iterable) iterable, (Object) t);
    }

    public static final <T> Pair<List<T>, List<T>> partition(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (function1.invoke(obj).booleanValue()) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    public static final <T> List<T> plus(Iterable<? extends T> iterable, T t) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        if (iterable instanceof Collection) {
            return CollectionsKt.plus((Collection) iterable, (Object) t);
        }
        ArrayList arrayList = new ArrayList();
        CollectionsKt.addAll(arrayList, iterable);
        arrayList.add(t);
        return arrayList;
    }

    public static final <T> List<T> plus(Collection<? extends T> collection, T t) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t);
        return arrayList;
    }

    public static final <T> List<T> plus(Iterable<? extends T> iterable, T[] tArr) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(tArr, MessengerShareContentUtility.ELEMENTS);
        if (iterable instanceof Collection) {
            return CollectionsKt.plus((Collection) iterable, (Object[]) tArr);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        CollectionsKt.addAll(arrayList2, iterable);
        CollectionsKt.addAll(arrayList2, tArr);
        return arrayList;
    }

    public static final <T> List<T> plus(Collection<? extends T> collection, T[] tArr) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        Intrinsics.checkParameterIsNotNull(tArr, MessengerShareContentUtility.ELEMENTS);
        ArrayList arrayList = new ArrayList(collection.size() + tArr.length);
        arrayList.addAll(collection);
        CollectionsKt.addAll(arrayList, tArr);
        return arrayList;
    }

    public static final <T> List<T> plus(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable2, MessengerShareContentUtility.ELEMENTS);
        if (iterable instanceof Collection) {
            return CollectionsKt.plus((Collection) iterable, (Iterable) iterable2);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        CollectionsKt.addAll(arrayList2, iterable);
        CollectionsKt.addAll(arrayList2, iterable2);
        return arrayList;
    }

    public static final <T> List<T> plus(Collection<? extends T> collection, Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable, MessengerShareContentUtility.ELEMENTS);
        if (iterable instanceof Collection) {
            Collection collection2 = (Collection) iterable;
            ArrayList arrayList = new ArrayList(collection.size() + collection2.size());
            arrayList.addAll(collection);
            arrayList.addAll(collection2);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(collection);
        CollectionsKt.addAll(arrayList2, iterable);
        return arrayList2;
    }

    public static final <T> List<T> plus(Iterable<? extends T> iterable, Sequence<? extends T> sequence) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(sequence, MessengerShareContentUtility.ELEMENTS);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        CollectionsKt.addAll(arrayList2, iterable);
        CollectionsKt.addAll(arrayList2, sequence);
        return arrayList;
    }

    public static final <T> List<T> plus(Collection<? extends T> collection, Sequence<? extends T> sequence) {
        Intrinsics.checkParameterIsNotNull(collection, "receiver$0");
        Intrinsics.checkParameterIsNotNull(sequence, MessengerShareContentUtility.ELEMENTS);
        ArrayList arrayList = new ArrayList(collection.size() + 10);
        arrayList.addAll(collection);
        CollectionsKt.addAll(arrayList, sequence);
        return arrayList;
    }

    private static final <T> List<T> plusElement(Iterable<? extends T> iterable, T t) {
        return CollectionsKt.plus((Iterable) iterable, (Object) t);
    }

    private static final <T> List<T> plusElement(Collection<? extends T> collection, T t) {
        return CollectionsKt.plus((Collection) collection, (Object) t);
    }

    public static /* synthetic */ List windowed$default(Iterable iterable, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return CollectionsKt.windowed(iterable, i, i2, z);
    }

    public static final <T> List<List<T>> windowed(Iterable<? extends T> iterable, int i, int i2, boolean z) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        SlidingWindowKt.checkWindowSizeStep(i, i2);
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            ArrayList arrayList = new ArrayList();
            Iterator windowedIterator = SlidingWindowKt.windowedIterator(iterable.iterator(), i, i2, z, false);
            while (windowedIterator.hasNext()) {
                arrayList.add((List) windowedIterator.next());
            }
            return arrayList;
        }
        List list = (List) iterable;
        int size = list.size();
        ArrayList arrayList2 = new ArrayList(((size + i2) - 1) / i2);
        int i3 = 0;
        while (i3 < size) {
            int coerceAtMost = RangesKt.coerceAtMost(i, size - i3);
            if (coerceAtMost < i && !z) {
                break;
            }
            ArrayList arrayList3 = new ArrayList(coerceAtMost);
            for (int i4 = 0; i4 < coerceAtMost; i4++) {
                arrayList3.add(list.get(i4 + i3));
            }
            arrayList2.add(arrayList3);
            i3 += i2;
        }
        return arrayList2;
    }

    public static /* synthetic */ List windowed$default(Iterable iterable, int i, int i2, boolean z, Function1 function1, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 1;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return CollectionsKt.windowed(iterable, i, i2, z, function1);
    }

    public static final <T, R> List<R> windowed(Iterable<? extends T> iterable, int i, int i2, boolean z, Function1<? super List<? extends T>, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        SlidingWindowKt.checkWindowSizeStep(i, i2);
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            ArrayList arrayList = new ArrayList();
            Iterator windowedIterator = SlidingWindowKt.windowedIterator(iterable.iterator(), i, i2, z, true);
            while (windowedIterator.hasNext()) {
                arrayList.add(function1.invoke((List) windowedIterator.next()));
            }
            return arrayList;
        }
        List list = (List) iterable;
        int size = list.size();
        ArrayList arrayList2 = new ArrayList(((size + i2) - 1) / i2);
        MovingSubList movingSubList = new MovingSubList(list);
        int i3 = 0;
        while (i3 < size) {
            movingSubList.move(i3, RangesKt.coerceAtMost(i3 + i, size));
            if (!z && movingSubList.size() < i) {
                break;
            }
            arrayList2.add(function1.invoke(movingSubList));
            i3 += i2;
        }
        return arrayList2;
    }

    public static final <T, R, V> List<V> zip(Iterable<? extends T> iterable, R[] rArr, Function2<? super T, ? super R, ? extends V> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(rArr, FacebookRequestErrorClassification.KEY_OTHER);
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        int length = rArr.length;
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt.collectionSizeOrDefault(iterable, 10), length));
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            if (i >= length) {
                break;
            }
            arrayList.add(function2.invoke(obj, rArr[i]));
            i++;
        }
        return arrayList;
    }

    public static final <T, R, V> List<V> zip(Iterable<? extends T> iterable, Iterable<? extends R> iterable2, Function2<? super T, ? super R, ? extends V> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable2, FacebookRequestErrorClassification.KEY_OTHER);
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        Iterator<? extends T> it2 = iterable.iterator();
        Iterator<? extends R> it3 = iterable2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt.collectionSizeOrDefault(iterable, 10), CollectionsKt.collectionSizeOrDefault(iterable2, 10)));
        while (it2.hasNext() && it3.hasNext()) {
            arrayList.add(function2.invoke((Object) it2.next(), (Object) it3.next()));
        }
        return arrayList;
    }

    public static final <T, R> List<R> zipWithNext(Iterable<? extends T> iterable, Function2<? super T, ? super T, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Object obj = (Object) it2.next();
        while (it2.hasNext()) {
            Object obj2 = (Object) it2.next();
            arrayList.add(function2.invoke(obj, obj2));
            obj = (Object) obj2;
        }
        return arrayList;
    }

    public static /* synthetic */ Appendable joinTo$default(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        return CollectionsKt.joinTo(iterable, appendable, (i2 & 2) != 0 ? ", " : charSequence, (i2 & 4) != 0 ? "" : charSequence2, (i2 & 8) != 0 ? "" : charSequence3, (i2 & 16) != 0 ? -1 : i, (i2 & 32) != 0 ? "..." : charSequence4, (i2 & 64) != 0 ? null : function1);
    }

    public static final <T, A extends Appendable> A joinTo(Iterable<? extends T> iterable, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(a, "buffer");
        Intrinsics.checkParameterIsNotNull(charSequence, "separator");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        Intrinsics.checkParameterIsNotNull(charSequence3, "postfix");
        Intrinsics.checkParameterIsNotNull(charSequence4, "truncated");
        a.append(charSequence2);
        int i2 = 0;
        for (Object obj : iterable) {
            i2++;
            if (i2 > 1) {
                a.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            StringsKt.appendElement(a, obj, function1);
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    public static /* synthetic */ String joinToString$default(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
        }
        if ((i2 & 2) != 0) {
        }
        if ((i2 & 4) != 0) {
        }
        int i3 = (i2 & 8) != 0 ? -1 : i;
        if ((i2 & 16) != 0) {
        }
        if ((i2 & 32) != 0) {
            function1 = null;
        }
        return CollectionsKt.joinToString(iterable, charSequence, charSequence2, charSequence3, i3, charSequence4, function1);
    }

    public static final <T> String joinToString(Iterable<? extends T> iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(charSequence, "separator");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        Intrinsics.checkParameterIsNotNull(charSequence3, "postfix");
        Intrinsics.checkParameterIsNotNull(charSequence4, "truncated");
        String sb = ((StringBuilder) CollectionsKt.joinTo(iterable, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, function1)).toString();
        Intrinsics.checkExpressionValueIsNotNull(sb, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb;
    }

    public static final <T> Sequence<T> asSequence(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        return new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(iterable);
    }

    public static final double averageOfByte(Iterable<Byte> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        double d = 0.0d;
        int i = 0;
        for (Byte b : iterable) {
            double byteValue = (double) b.byteValue();
            Double.isNaN(byteValue);
            d += byteValue;
            i++;
            if (i < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        if (i == 0) {
            return DoubleCompanionObject.INSTANCE.getNaN();
        }
        double d2 = (double) i;
        Double.isNaN(d2);
        return d / d2;
    }

    public static final double averageOfShort(Iterable<Short> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        double d = 0.0d;
        int i = 0;
        for (Short sh : iterable) {
            double shortValue = (double) sh.shortValue();
            Double.isNaN(shortValue);
            d += shortValue;
            i++;
            if (i < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        if (i == 0) {
            return DoubleCompanionObject.INSTANCE.getNaN();
        }
        double d2 = (double) i;
        Double.isNaN(d2);
        return d / d2;
    }

    public static final double averageOfInt(Iterable<Integer> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        double d = 0.0d;
        int i = 0;
        for (Integer num : iterable) {
            double intValue = (double) num.intValue();
            Double.isNaN(intValue);
            d += intValue;
            i++;
            if (i < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        if (i == 0) {
            return DoubleCompanionObject.INSTANCE.getNaN();
        }
        double d2 = (double) i;
        Double.isNaN(d2);
        return d / d2;
    }

    public static final double averageOfLong(Iterable<Long> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        double d = 0.0d;
        int i = 0;
        for (Long l : iterable) {
            double longValue = (double) l.longValue();
            Double.isNaN(longValue);
            d += longValue;
            i++;
            if (i < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        if (i == 0) {
            return DoubleCompanionObject.INSTANCE.getNaN();
        }
        double d2 = (double) i;
        Double.isNaN(d2);
        return d / d2;
    }

    public static final double averageOfFloat(Iterable<Float> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        double d = 0.0d;
        int i = 0;
        for (Float f : iterable) {
            double floatValue = (double) f.floatValue();
            Double.isNaN(floatValue);
            d += floatValue;
            i++;
            if (i < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        if (i == 0) {
            return DoubleCompanionObject.INSTANCE.getNaN();
        }
        double d2 = (double) i;
        Double.isNaN(d2);
        return d / d2;
    }

    public static final double averageOfDouble(Iterable<Double> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        double d = 0.0d;
        int i = 0;
        for (Double d2 : iterable) {
            d += d2.doubleValue();
            i++;
            if (i < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        if (i == 0) {
            return DoubleCompanionObject.INSTANCE.getNaN();
        }
        double d3 = (double) i;
        Double.isNaN(d3);
        return d / d3;
    }

    public static final int sumOfByte(Iterable<Byte> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        int i = 0;
        for (Byte b : iterable) {
            i += b.byteValue();
        }
        return i;
    }

    public static final int sumOfShort(Iterable<Short> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        int i = 0;
        for (Short sh : iterable) {
            i += sh.shortValue();
        }
        return i;
    }

    public static final int sumOfInt(Iterable<Integer> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        int i = 0;
        for (Integer num : iterable) {
            i += num.intValue();
        }
        return i;
    }

    public static final long sumOfLong(Iterable<Long> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        long j = 0;
        for (Long l : iterable) {
            j += l.longValue();
        }
        return j;
    }

    public static final float sumOfFloat(Iterable<Float> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        float f = 0.0f;
        for (Float f2 : iterable) {
            f += f2.floatValue();
        }
        return f;
    }

    public static final double sumOfDouble(Iterable<Double> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        double d = 0.0d;
        for (Double d2 : iterable) {
            d += d2.doubleValue();
        }
        return d;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final <T> T find(java.lang.Iterable<? extends T> r2, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r3) {
        /*
            java.util.Iterator r2 = r2.iterator()
        L_0x0004:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x001b
            java.lang.Object r0 = r2.next()
            java.lang.Object r1 = r3.invoke(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x0004
            goto L_0x001c
        L_0x001b:
            r0 = 0
        L_0x001c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.find(java.lang.Iterable, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final <T> T findLast(java.lang.Iterable<? extends T> r3, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r4) {
        /*
            java.util.Iterator r3 = r3.iterator()
            r0 = 0
        L_0x0005:
            boolean r1 = r3.hasNext()
            if (r1 == 0) goto L_0x001d
            java.lang.Object r1 = r3.next()
            java.lang.Object r2 = r4.invoke(r1)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L_0x0005
            r0 = r1
            goto L_0x0005
        L_0x001d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.findLast(java.lang.Iterable, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final <T> T findLast(java.util.List<? extends T> r2, kotlin.jvm.functions.Function1<? super T, java.lang.Boolean> r3) {
        /*
            int r0 = r2.size()
            java.util.ListIterator r2 = r2.listIterator(r0)
        L_0x0008:
            boolean r0 = r2.hasPrevious()
            if (r0 == 0) goto L_0x001f
            java.lang.Object r0 = r2.previous()
            java.lang.Object r1 = r3.invoke(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x0008
            goto L_0x0020
        L_0x001f:
            r0 = 0
        L_0x0020:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.CollectionsKt___CollectionsKt.findLast(java.util.List, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    public static final <T, C extends Collection<? super T>> C filterIndexedTo(Iterable<? extends T> iterable, C c, Function2<? super Integer, ? super T, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function2, "predicate");
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            int i2 = i + 1;
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            if (function2.invoke(Integer.valueOf(i), obj).booleanValue()) {
                c.add(obj);
            }
            i = i2;
        }
        return c;
    }

    public static final <T, R, C extends Collection<? super R>> C mapIndexedNotNullTo(Iterable<? extends T> iterable, C c, Function2<? super Integer, ? super T, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function2, "transform");
        Iterator<? extends T> it2 = iterable.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object obj = (Object) it2.next();
            int i2 = i + 1;
            if (i < 0) {
                if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    CollectionsKt.throwIndexOverflow();
                } else {
                    throw new ArithmeticException("Index overflow has happened.");
                }
            }
            Object invoke = function2.invoke(Integer.valueOf(i), obj);
            if (invoke != null) {
                c.add(invoke);
            }
            i = i2;
        }
        return c;
    }

    public static final <T, R, C extends Collection<? super R>> C mapNotNullTo(Iterable<? extends T> iterable, C c, Function1<? super T, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(c, ShareConstants.DESTINATION);
        Intrinsics.checkParameterIsNotNull(function1, "transform");
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Object invoke = function1.invoke((Object) it2.next());
            if (invoke != null) {
                c.add(invoke);
            }
        }
        return c;
    }

    public static final <T, R> List<Pair<T, R>> zip(Iterable<? extends T> iterable, R[] rArr) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(rArr, FacebookRequestErrorClassification.KEY_OTHER);
        int length = rArr.length;
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt.collectionSizeOrDefault(iterable, 10), length));
        int i = 0;
        for (Object obj : iterable) {
            if (i >= length) {
                break;
            }
            arrayList.add(TuplesKt.to(obj, rArr[i]));
            i++;
        }
        return arrayList;
    }

    public static final <T, R> List<Pair<T, R>> zip(Iterable<? extends T> iterable, Iterable<? extends R> iterable2) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Intrinsics.checkParameterIsNotNull(iterable2, FacebookRequestErrorClassification.KEY_OTHER);
        Iterator<? extends T> it2 = iterable.iterator();
        Iterator<? extends R> it3 = iterable2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt.collectionSizeOrDefault(iterable, 10), CollectionsKt.collectionSizeOrDefault(iterable2, 10)));
        while (it2.hasNext() && it3.hasNext()) {
            arrayList.add(TuplesKt.to(it2.next(), it3.next()));
        }
        return arrayList;
    }

    public static final <T> List<Pair<T, T>> zipWithNext(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "receiver$0");
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Object next = it2.next();
        while (it2.hasNext()) {
            Object next2 = it2.next();
            arrayList.add(TuplesKt.to(next, next2));
            next = next2;
        }
        return arrayList;
    }
}
