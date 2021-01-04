package io.reactivex.rxkotlin;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.reactivex.Flowable;
import io.reactivex.Single;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import net.glxn.qrgen.core.scheme.EnterpriseWifi;
import org.jetbrains.annotations.NotNull;
import org.reactivestreams.Publisher;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000¹\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0018\n\u0002\u0010\u0005\n\u0002\u0010\u0012\n\u0002\u0010\f\n\u0002\u0010\u0019\n\u0002\u0010\u0006\n\u0002\u0010\u0013\n\u0002\u0010\u0007\n\u0002\u0010\u0014\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\u0010\t\n\u0002\u0010\u0016\n\u0002\u0010\n\n\u0002\u0010\u0017\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u001f\n\u0002\u0010\u001e\n\u0002\b\u0003*\u00015\u001a#\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0001H\b\u001aD\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00020\u00050\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\u001ab\u0010\u0004\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\b0\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003\"\b\b\u0002\u0010\t*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\u001a^\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\f2)\b\u0004\u0010\r\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00060\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u0002H\u00020\u000eH\b\u001aD\u0010\u0013\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001aD\u0010\u0013\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00150\f\u001aI\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\u001a\b\u0004\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00180\u000eH\b\u001a(\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00060\u00010\f\u001aD\u0010\u001a\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a(\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00060\u00010\f\u001a#\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0001H\b\u001aD\u0010\u001d\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a&\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a%\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060 ¢\u0006\u0002\u0010!\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\"0\u0001*\u00020#\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020$0\u0001*\u00020%\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020&0\u0001*\u00020'\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020(0\u0001*\u00020)\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020*0\u0001*\u00020+\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020,0\u0001*\u00020-\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020.0\u0001*\u00020/\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002000\u0001*\u000201\u001a \u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\f\u001a \u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u000602\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020,0\u0001*\u000203\u001a \u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u0018\u001a'\u00104\u001a\b\u0012\u0004\u0012\u0002H\u000605\"\b\b\u0000\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u000602H\u0002¢\u0006\u0002\u00106\u001aÅ\u0001\u00107\u001a\u0001\u0012D\u0012B\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H:H:\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H; \u0014* \u0012\f\u0012\n \u0014*\u0004\u0018\u0001H:H:\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H;\u0018\u00010<09 \u0014*J\u0012D\u0012B\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H:H:\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H; \u0014* \u0012\f\u0012\n \u0014*\u0004\u0018\u0001H:H:\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H;\u0018\u00010<09\u0018\u00010808\"\b\b\u0000\u0010:*\u00020\u0003\"\b\b\u0001\u0010;*\u00020\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H:\u0012\u0004\u0012\u0002H;0\u00050\u0001\u001a¶\u0002\u0010=\u001a\u0002\u0012|\u0012z\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H:H:\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H; \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H;\u0018\u00010?0> \u0014*<\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H:H:\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H; \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H;\u0018\u00010?0>\u0018\u00010<09 \u0014*\u0001\u0012|\u0012z\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H:H:\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H; \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H;\u0018\u00010?0> \u0014*<\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H:H:\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H; \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H;H;\u0018\u00010?0>\u0018\u00010<09\u0018\u00010808\"\b\b\u0000\u0010:*\u00020\u0003\"\b\b\u0001\u0010;*\u00020\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H:\u0012\u0004\u0012\u0002H;0\u00050\u0001\u001a^\u0010@\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\f2)\b\u0004\u0010A\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00060\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u0002H\u00020\u000eH\b¨\u0006B"}, d2 = {"cast", "Lio/reactivex/Flowable;", "R", "", "combineLatest", "Lkotlin/Pair;", "T", "flowable", "Lkotlin/Triple;", EnterpriseWifi.USER, "flowable1", "flowable2", "", "combineFunction", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "args", "concatAll", "kotlin.jvm.PlatformType", "Lorg/reactivestreams/Publisher;", "flatMapSequence", TtmlNode.TAG_BODY, "Lkotlin/sequences/Sequence;", "merge", "mergeAll", "mergeDelayError", "ofType", "switchLatest", "switchOnNext", "toFlowable", "", "([Ljava/lang/Object;)Lio/reactivex/Flowable;", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "Lkotlin/ranges/IntProgression;", "toIterable", "io/reactivex/rxkotlin/FlowableKt$toIterable$1", "(Ljava/util/Iterator;)Lio/reactivex/rxkotlin/FlowableKt$toIterable$1;", "toMap", "Lio/reactivex/Single;", "", "A", "B", "", "toMultimap", "", "", "zip", "zipFunction", "rxkotlin"}, k = 2, mv = {1, 1, 8})
/* compiled from: flowable.kt */
public final class FlowableKt {
    @NotNull
    public static final Flowable<Boolean> toFlowable(@NotNull boolean[] zArr) {
        Intrinsics.checkParameterIsNotNull(zArr, "$receiver");
        return toFlowable(ArraysKt.asIterable(zArr));
    }

    @NotNull
    public static final Flowable<Byte> toFlowable(@NotNull byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "$receiver");
        return toFlowable(ArraysKt.asIterable(bArr));
    }

    @NotNull
    public static final Flowable<Character> toFlowable(@NotNull char[] cArr) {
        Intrinsics.checkParameterIsNotNull(cArr, "$receiver");
        return toFlowable(ArraysKt.asIterable(cArr));
    }

    @NotNull
    public static final Flowable<Short> toFlowable(@NotNull short[] sArr) {
        Intrinsics.checkParameterIsNotNull(sArr, "$receiver");
        return toFlowable(ArraysKt.asIterable(sArr));
    }

    @NotNull
    public static final Flowable<Integer> toFlowable(@NotNull int[] iArr) {
        Intrinsics.checkParameterIsNotNull(iArr, "$receiver");
        return toFlowable(ArraysKt.asIterable(iArr));
    }

    @NotNull
    public static final Flowable<Long> toFlowable(@NotNull long[] jArr) {
        Intrinsics.checkParameterIsNotNull(jArr, "$receiver");
        return toFlowable(ArraysKt.asIterable(jArr));
    }

    @NotNull
    public static final Flowable<Float> toFlowable(@NotNull float[] fArr) {
        Intrinsics.checkParameterIsNotNull(fArr, "$receiver");
        return toFlowable(ArraysKt.asIterable(fArr));
    }

    @NotNull
    public static final Flowable<Double> toFlowable(@NotNull double[] dArr) {
        Intrinsics.checkParameterIsNotNull(dArr, "$receiver");
        return toFlowable(ArraysKt.asIterable(dArr));
    }

    @NotNull
    public static final <T> Flowable<T> toFlowable(@NotNull T[] tArr) {
        Intrinsics.checkParameterIsNotNull(tArr, "$receiver");
        Flowable<T> fromArray = Flowable.fromArray(Arrays.copyOf(tArr, tArr.length));
        Intrinsics.checkExpressionValueIsNotNull(fromArray, "Flowable.fromArray(*this)");
        return fromArray;
    }

    @NotNull
    public static final Flowable<Integer> toFlowable(@NotNull IntProgression intProgression) {
        Intrinsics.checkParameterIsNotNull(intProgression, "$receiver");
        if (intProgression.getStep() != 1 || ((long) intProgression.getLast()) - ((long) intProgression.getFirst()) >= ((long) Integer.MAX_VALUE)) {
            Flowable<Integer> fromIterable = Flowable.fromIterable(intProgression);
            Intrinsics.checkExpressionValueIsNotNull(fromIterable, "Flowable.fromIterable(this)");
            return fromIterable;
        }
        Flowable<Integer> range = Flowable.range(intProgression.getFirst(), Math.max(0, (intProgression.getLast() - intProgression.getFirst()) + 1));
        Intrinsics.checkExpressionValueIsNotNull(range, "Flowable.range(first, Ma…max(0, last - first + 1))");
        return range;
    }

    @NotNull
    public static final <T> Flowable<T> toFlowable(@NotNull Iterator<? extends T> it2) {
        Intrinsics.checkParameterIsNotNull(it2, "$receiver");
        return toFlowable(toIterable(it2));
    }

    @NotNull
    public static final <T> Flowable<T> toFlowable(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Flowable<T> fromIterable = Flowable.fromIterable(iterable);
        Intrinsics.checkExpressionValueIsNotNull(fromIterable, "Flowable.fromIterable(this)");
        return fromIterable;
    }

    @NotNull
    public static final <T> Flowable<T> toFlowable(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkParameterIsNotNull(sequence, "$receiver");
        return toFlowable(SequencesKt.asIterable(sequence));
    }

    @NotNull
    public static final <T> Flowable<T> merge(@NotNull Iterable<? extends Flowable<? extends T>> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Flowable<T> merge = Flowable.merge(toFlowable(iterable));
        Intrinsics.checkExpressionValueIsNotNull(merge, "Flowable.merge(this.toFlowable())");
        return merge;
    }

    @NotNull
    public static final <T> Flowable<T> mergeDelayError(@NotNull Iterable<? extends Flowable<? extends T>> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Flowable<T> mergeDelayError = Flowable.mergeDelayError(toFlowable(iterable));
        Intrinsics.checkExpressionValueIsNotNull(mergeDelayError, "Flowable.mergeDelayError(this.toFlowable())");
        return mergeDelayError;
    }

    @NotNull
    public static final <T, R> Flowable<R> flatMapSequence(@NotNull Flowable<T> flowable, @NotNull Function1<? super T, ? extends Sequence<? extends R>> function1) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, TtmlNode.TAG_BODY);
        Flowable<R> flatMap = flowable.flatMap(new FlowableKt$flatMapSequence$1(function1));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "flatMap { body(it).toFlowable() }");
        return flatMap;
    }

    @NotNull
    public static final <T, R> Flowable<R> combineLatest(@NotNull Iterable<? extends Flowable<T>> iterable, @NotNull Function1<? super List<? extends T>, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "combineFunction");
        Flowable<R> combineLatest = Flowable.combineLatest(iterable, new FlowableKt$combineLatest$1(function1));
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Flowable.combineLatest(t…List().map { it as T }) }");
        return combineLatest;
    }

    @NotNull
    public static final <T, R> Flowable<R> zip(@NotNull Iterable<? extends Flowable<T>> iterable, @NotNull Function1<? super List<? extends T>, ? extends R> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "zipFunction");
        Flowable<R> zip = Flowable.zip(iterable, new FlowableKt$zip$1(function1));
        Intrinsics.checkExpressionValueIsNotNull(zip, "Flowable.zip(this) { zip…List().map { it as T }) }");
        return zip;
    }

    /* JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types: io.reactivex.Flowable<U>, java.lang.Object, io.reactivex.Flowable<R> */
    private static final <R> Flowable<R> cast(@NotNull Flowable<?> flowable) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Flowable flowable2 = (Flowable<U>) flowable.cast(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "cast(R::class.java)");
        return flowable2;
    }

    /* JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types: io.reactivex.Flowable<U>, java.lang.Object, io.reactivex.Flowable<R> */
    private static final <R> Flowable<R> ofType(@NotNull Flowable<?> flowable) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Flowable flowable2 = (Flowable<U>) flowable.ofType(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "ofType(R::class.java)");
        return flowable2;
    }

    private static final <T> FlowableKt$toIterable$1 toIterable(@NotNull Iterator<? extends T> it2) {
        return new FlowableKt$toIterable$1(it2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [io.reactivex.rxkotlin.FlowableKt$sam$BiFunction$89d2d6b2] */
    /* JADX WARNING: Unknown variable types count: 1 */
    @org.jetbrains.annotations.NotNull
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T, R> io.reactivex.Flowable<kotlin.Pair<T, R>> combineLatest(@org.jetbrains.annotations.NotNull io.reactivex.Flowable<T> r2, @org.jetbrains.annotations.NotNull io.reactivex.Flowable<R> r3) {
        /*
            java.lang.String r0 = "$receiver"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
            java.lang.String r0 = "flowable"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            org.reactivestreams.Publisher r2 = (org.reactivestreams.Publisher) r2
            org.reactivestreams.Publisher r3 = (org.reactivestreams.Publisher) r3
            io.reactivex.rxkotlin.FlowableKt$combineLatest$2 r0 = io.reactivex.rxkotlin.FlowableKt$combineLatest$2.INSTANCE
            kotlin.jvm.functions.Function2 r0 = (kotlin.jvm.functions.Function2) r0
            if (r0 == 0) goto L_0x001a
            io.reactivex.rxkotlin.FlowableKt$sam$BiFunction$89d2d6b2 r1 = new io.reactivex.rxkotlin.FlowableKt$sam$BiFunction$89d2d6b2
            r1.<init>(r0)
            r0 = r1
        L_0x001a:
            io.reactivex.functions.BiFunction r0 = (io.reactivex.functions.BiFunction) r0
            io.reactivex.Flowable r2 = io.reactivex.Flowable.combineLatest(r2, r3, r0)
            java.lang.String r3 = "Flowable.combineLatest(t…able, BiFunction(::Pair))"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxkotlin.FlowableKt.combineLatest(io.reactivex.Flowable, io.reactivex.Flowable):io.reactivex.Flowable");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [io.reactivex.rxkotlin.FlowableKt$sam$Function3$7083077a] */
    /* JADX WARNING: Unknown variable types count: 1 */
    @org.jetbrains.annotations.NotNull
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final <T, R, U> io.reactivex.Flowable<kotlin.Triple<T, R, U>> combineLatest(@org.jetbrains.annotations.NotNull io.reactivex.Flowable<T> r2, @org.jetbrains.annotations.NotNull io.reactivex.Flowable<R> r3, @org.jetbrains.annotations.NotNull io.reactivex.Flowable<U> r4) {
        /*
            java.lang.String r0 = "$receiver"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
            java.lang.String r0 = "flowable1"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0)
            java.lang.String r0 = "flowable2"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            org.reactivestreams.Publisher r2 = (org.reactivestreams.Publisher) r2
            org.reactivestreams.Publisher r3 = (org.reactivestreams.Publisher) r3
            org.reactivestreams.Publisher r4 = (org.reactivestreams.Publisher) r4
            io.reactivex.rxkotlin.FlowableKt$combineLatest$3 r0 = io.reactivex.rxkotlin.FlowableKt$combineLatest$3.INSTANCE
            kotlin.jvm.functions.Function3 r0 = (kotlin.jvm.functions.Function3) r0
            if (r0 == 0) goto L_0x0021
            io.reactivex.rxkotlin.FlowableKt$sam$Function3$7083077a r1 = new io.reactivex.rxkotlin.FlowableKt$sam$Function3$7083077a
            r1.<init>(r0)
            r0 = r1
        L_0x0021:
            io.reactivex.functions.Function3 r0 = (io.reactivex.functions.Function3) r0
            io.reactivex.Flowable r2 = io.reactivex.Flowable.combineLatest(r2, r3, r4, r0)
            java.lang.String r3 = "Flowable.combineLatest(t…le2, Function3(::Triple))"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxkotlin.FlowableKt.combineLatest(io.reactivex.Flowable, io.reactivex.Flowable, io.reactivex.Flowable):io.reactivex.Flowable");
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, io.reactivex.Flowable<T> */
    public static final <T> Flowable<T> mergeAll(@NotNull Flowable<Flowable<T>> flowable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        return (Flowable<R>) flowable.flatMap(FlowableKt$mergeAll$1.INSTANCE);
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, io.reactivex.Flowable<T> */
    public static final <T> Flowable<T> concatAll(@NotNull Flowable<Flowable<T>> flowable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        return (Flowable<R>) flowable.concatMap(FlowableKt$concatAll$1.INSTANCE);
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, io.reactivex.Flowable<T> */
    public static final <T> Flowable<T> switchLatest(@NotNull Flowable<Flowable<T>> flowable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        return (Flowable<R>) flowable.switchMap(FlowableKt$switchLatest$1.INSTANCE);
    }

    @NotNull
    public static final <T> Flowable<T> switchOnNext(@NotNull Flowable<Flowable<T>> flowable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        Flowable<T> switchOnNext = Flowable.switchOnNext(flowable);
        Intrinsics.checkExpressionValueIsNotNull(switchOnNext, "Flowable.switchOnNext(this)");
        return switchOnNext;
    }

    /* JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types: io.reactivex.Single<java.util.Map<K, V>>, io.reactivex.Single<java.util.Map<A, B>> */
    public static final <A, B> Single<Map<A, B>> toMap(@NotNull Flowable<Pair<A, B>> flowable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        return (Single<Map<K, V>>) flowable.toMap(FlowableKt$toMap$1.INSTANCE, FlowableKt$toMap$2.INSTANCE);
    }

    /* JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types: io.reactivex.Single<java.util.Map<K, java.util.Collection<V>>>, io.reactivex.Single<java.util.Map<A, java.util.Collection<B>>> */
    public static final <A, B> Single<Map<A, Collection<B>>> toMultimap(@NotNull Flowable<Pair<A, B>> flowable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        return (Single<Map<K, Collection<V>>>) flowable.toMultimap(FlowableKt$toMultimap$1.INSTANCE, FlowableKt$toMultimap$2.INSTANCE);
    }

    public static final <T> Flowable<T> concatAll(@NotNull Iterable<? extends Publisher<T>> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        return Flowable.concat(iterable);
    }
}
