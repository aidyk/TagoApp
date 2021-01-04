package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.internal.vision.zzan;
import java.util.ArrayList;
import java.util.List;

public class Element implements Text {
    private zzan zzes;

    Element(zzan zzan) {
        this.zzes = zzan;
    }

    public String getLanguage() {
        return this.zzes.zzex;
    }

    @Override // com.google.android.gms.vision.text.Text
    public String getValue() {
        return this.zzes.zzfg;
    }

    @Override // com.google.android.gms.vision.text.Text
    public Rect getBoundingBox() {
        return zzc.zza(this);
    }

    @Override // com.google.android.gms.vision.text.Text
    public Point[] getCornerPoints() {
        return zzc.zza(this.zzes.zzfd);
    }

    @Override // com.google.android.gms.vision.text.Text
    public List<? extends Text> getComponents() {
        return new ArrayList();
    }
}
