package com.liber8tech.tago.service;

import java.util.zip.ZipInputStream;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public final class ImageEditorService$extractFile$1 extends Lambda implements Function0<Integer> {
    final /* synthetic */ byte[] $bytesIn;
    final /* synthetic */ Ref.IntRef $read;
    final /* synthetic */ ZipInputStream $zipIn;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ImageEditorService$extractFile$1(Ref.IntRef intRef, ZipInputStream zipInputStream, byte[] bArr) {
        super(0);
        this.$read = intRef;
        this.$zipIn = zipInputStream;
        this.$bytesIn = bArr;
    }

    /* Return type fixed from 'int' to match base method */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        this.$read.element = this.$zipIn.read(this.$bytesIn);
        return this.$read.element;
    }
}
