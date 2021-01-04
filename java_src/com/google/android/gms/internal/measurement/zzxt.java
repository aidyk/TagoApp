package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public interface zzxt {
    int getTag();

    double readDouble() throws IOException;

    float readFloat() throws IOException;

    String readString() throws IOException;

    void readStringList(List<String> list) throws IOException;

    <T> T zza(zzxu<T> zzxu, zzvk zzvk) throws IOException;

    <T> void zza(List<T> list, zzxu<T> zzxu, zzvk zzvk) throws IOException;

    <K, V> void zza(Map<K, V> map, zzwx<K, V> zzwx, zzvk zzvk) throws IOException;

    @Deprecated
    <T> T zzb(zzxu<T> zzxu, zzvk zzvk) throws IOException;

    @Deprecated
    <T> void zzb(List<T> list, zzxu<T> zzxu, zzvk zzvk) throws IOException;

    void zzh(List<Double> list) throws IOException;

    void zzi(List<Float> list) throws IOException;

    void zzj(List<Long> list) throws IOException;

    void zzk(List<Long> list) throws IOException;

    void zzl(List<Integer> list) throws IOException;

    void zzm(List<Long> list) throws IOException;

    void zzn(List<Integer> list) throws IOException;

    void zzo(List<Boolean> list) throws IOException;

    void zzp(List<String> list) throws IOException;

    void zzq(List<zzun> list) throws IOException;

    void zzr(List<Integer> list) throws IOException;

    void zzs(List<Integer> list) throws IOException;

    void zzt(List<Integer> list) throws IOException;

    void zzu(List<Long> list) throws IOException;

    long zzur() throws IOException;

    long zzus() throws IOException;

    int zzut() throws IOException;

    long zzuu() throws IOException;

    int zzuv() throws IOException;

    boolean zzuw() throws IOException;

    String zzux() throws IOException;

    zzun zzuy() throws IOException;

    int zzuz() throws IOException;

    void zzv(List<Integer> list) throws IOException;

    int zzva() throws IOException;

    int zzvb() throws IOException;

    long zzvc() throws IOException;

    int zzvd() throws IOException;

    long zzve() throws IOException;

    int zzvo() throws IOException;

    boolean zzvp() throws IOException;

    void zzw(List<Long> list) throws IOException;
}
