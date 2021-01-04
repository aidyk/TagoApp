package org.jetbrains.anko.sdk15.listeners;

import android.media.MediaPlayer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_media_MediaPlayer_OnErrorListener$0 implements MediaPlayer.OnErrorListener {
    private final /* synthetic */ Function3 function;

    public Sdk15ListenersListenersKt$sam$i$android_media_MediaPlayer_OnErrorListener$0(Function3 function3) {
        this.function = function3;
    }

    public final /* synthetic */ boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Object invoke = this.function.invoke(mediaPlayer, Integer.valueOf(i), Integer.valueOf(i2));
        Intrinsics.checkExpressionValueIsNotNull(invoke, "invoke(...)");
        return ((Boolean) invoke).booleanValue();
    }
}
