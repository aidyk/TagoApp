package com.google.android.gms.internal.measurement;

import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.liber8tech.tago.service.BluetoothService;
import org.apache.commons.lang3.time.DateUtils;

@ShowFirstParty
@VisibleForTesting
public final class zzcf {
    public static zzcg<Integer> zzaaa = zzcg.zza("analytics.http_connection.read_timeout_millis", 61000, 61000);
    public static zzcg<Long> zzaab = zzcg.zza("analytics.campaigns.time_limit", (long) DateUtils.MILLIS_PER_DAY, (long) DateUtils.MILLIS_PER_DAY);
    private static zzcg<String> zzaac = zzcg.zza("analytics.first_party_experiment_id", "", "");
    private static zzcg<Integer> zzaad = zzcg.zza("analytics.first_party_experiment_variant", 0, 0);
    public static zzcg<Boolean> zzaae = zzcg.zza("analytics.test.disable_receiver", false, false);
    public static zzcg<Long> zzaaf = zzcg.zza("analytics.service_client.idle_disconnect_millis", (long) BluetoothService.messageTimeout, (long) BluetoothService.messageTimeout);
    public static zzcg<Long> zzaag = zzcg.zza("analytics.service_client.connect_timeout_millis", (long) DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, (long) DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    private static zzcg<Long> zzaah = zzcg.zza("analytics.service_client.second_connect_delay_millis", (long) DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, (long) DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    private static zzcg<Long> zzaai = zzcg.zza("analytics.service_client.unexpected_reconnect_millis", 60000L, 60000L);
    public static zzcg<Long> zzaaj = zzcg.zza("analytics.service_client.reconnect_throttle_millis", 1800000L, 1800000L);
    public static zzcg<Long> zzaak = zzcg.zza("analytics.monitoring.sample_period_millis", (long) DateUtils.MILLIS_PER_DAY, (long) DateUtils.MILLIS_PER_DAY);
    public static zzcg<Long> zzaal = zzcg.zza("analytics.initialization_warning_threshold", (long) DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, (long) DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    public static zzcg<Boolean> zzaam = zzcg.zza("analytics.gcm_task_service", false, false);
    private static zzcg<Boolean> zzyv = zzcg.zza("analytics.service_enabled", false, false);
    public static zzcg<Boolean> zzyw = zzcg.zza("analytics.service_client_enabled", true, true);
    public static zzcg<String> zzyx = zzcg.zza("analytics.log_tag", "GAv4", "GAv4-SVC");
    private static zzcg<Long> zzyy = zzcg.zza("analytics.max_tokens", 60L, 60L);
    private static zzcg<Float> zzyz = zzcg.zza("analytics.tokens_per_sec", 0.5f, 0.5f);
    public static zzcg<Integer> zzza = zzcg.zza("analytics.max_stored_hits", 2000, 20000);
    private static zzcg<Integer> zzzb = zzcg.zza("analytics.max_stored_hits_per_app", 2000, 2000);
    public static zzcg<Integer> zzzc = zzcg.zza("analytics.max_stored_properties_per_app", 100, 100);
    public static zzcg<Long> zzzd = zzcg.zza("analytics.local_dispatch_millis", 1800000L, 120000L);
    public static zzcg<Long> zzze = zzcg.zza("analytics.initial_local_dispatch_millis", (long) DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, (long) DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    private static zzcg<Long> zzzf = zzcg.zza("analytics.min_local_dispatch_millis", 120000L, 120000L);
    private static zzcg<Long> zzzg = zzcg.zza("analytics.max_local_dispatch_millis", 7200000L, 7200000L);
    public static zzcg<Long> zzzh = zzcg.zza("analytics.dispatch_alarm_millis", 7200000L, 7200000L);
    public static zzcg<Long> zzzi = zzcg.zza("analytics.max_dispatch_alarm_millis", 32400000L, 32400000L);
    public static zzcg<Integer> zzzj = zzcg.zza("analytics.max_hits_per_dispatch", 20, 20);
    public static zzcg<Integer> zzzk = zzcg.zza("analytics.max_hits_per_batch", 20, 20);
    public static zzcg<String> zzzl = zzcg.zza("analytics.insecure_host", "http://www.google-analytics.com", "http://www.google-analytics.com");
    public static zzcg<String> zzzm = zzcg.zza("analytics.secure_host", "https://ssl.google-analytics.com", "https://ssl.google-analytics.com");
    public static zzcg<String> zzzn = zzcg.zza("analytics.simple_endpoint", "/collect", "/collect");
    public static zzcg<String> zzzo = zzcg.zza("analytics.batching_endpoint", "/batch", "/batch");
    public static zzcg<Integer> zzzp = zzcg.zza("analytics.max_get_length", 2036, 2036);
    public static zzcg<String> zzzq = zzcg.zza("analytics.batching_strategy.k", zzbn.BATCH_BY_COUNT.name(), zzbn.BATCH_BY_COUNT.name());
    public static zzcg<String> zzzr;
    private static zzcg<Integer> zzzs = zzcg.zza("analytics.max_hits_per_request.k", 20, 20);
    public static zzcg<Integer> zzzt = zzcg.zza("analytics.max_hit_length.k", 8192, 8192);
    public static zzcg<Integer> zzzu = zzcg.zza("analytics.max_post_length.k", 8192, 8192);
    public static zzcg<Integer> zzzv = zzcg.zza("analytics.max_batch_post_length", 8192, 8192);
    public static zzcg<String> zzzw = zzcg.zza("analytics.fallback_responses.k", "404,502", "404,502");
    public static zzcg<Integer> zzzx = zzcg.zza("analytics.batch_retry_interval.seconds.k", 3600, 3600);
    private static zzcg<Long> zzzy = zzcg.zza("analytics.service_monitor_interval", (long) DateUtils.MILLIS_PER_DAY, (long) DateUtils.MILLIS_PER_DAY);
    public static zzcg<Integer> zzzz = zzcg.zza("analytics.http_connection.connect_timeout_millis", 60000, 60000);

    static {
        String name = zzbt.GZIP.name();
        zzzr = zzcg.zza("analytics.compression_strategy.k", name, name);
    }
}
