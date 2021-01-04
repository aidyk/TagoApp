package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.SparseArray;
import com.google.android.gms.internal.vision.zzae;
import com.google.android.gms.internal.vision.zzy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TextBlock implements Text {
    private Point[] cornerPoints;
    private zzae[] zzev;
    private List<Line> zzew;
    private String zzex;
    private Rect zzey;

    TextBlock(SparseArray<zzae> sparseArray) {
        this.zzev = new zzae[sparseArray.size()];
        for (int i = 0; i < this.zzev.length; i++) {
            this.zzev[i] = sparseArray.valueAt(i);
        }
    }

    public String getLanguage() {
        if (this.zzex != null) {
            return this.zzex;
        }
        HashMap hashMap = new HashMap();
        zzae[] zzaeArr = this.zzev;
        for (zzae zzae : zzaeArr) {
            hashMap.put(zzae.zzex, Integer.valueOf((hashMap.containsKey(zzae.zzex) ? ((Integer) hashMap.get(zzae.zzex)).intValue() : 0) + 1));
        }
        this.zzex = (String) ((Map.Entry) Collections.max(hashMap.entrySet(), new zza(this))).getKey();
        if (this.zzex == null || this.zzex.isEmpty()) {
            this.zzex = "und";
        }
        return this.zzex;
    }

    @Override // com.google.android.gms.vision.text.Text
    public String getValue() {
        if (this.zzev.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(this.zzev[0].zzfg);
        for (int i = 1; i < this.zzev.length; i++) {
            sb.append("\n");
            sb.append(this.zzev[i].zzfg);
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.vision.text.Text
    public Point[] getCornerPoints() {
        if (this.cornerPoints == null) {
            char c = 0;
            if (this.zzev.length == 0) {
                this.cornerPoints = new Point[0];
            } else {
                int i = Integer.MAX_VALUE;
                int i2 = 0;
                int i3 = Integer.MAX_VALUE;
                int i4 = Integer.MIN_VALUE;
                int i5 = Integer.MIN_VALUE;
                while (i2 < this.zzev.length) {
                    zzy zzy = this.zzev[i2].zzfd;
                    zzy zzy2 = this.zzev[c].zzfd;
                    double sin = Math.sin(Math.toRadians((double) zzy2.zzfb));
                    double cos = Math.cos(Math.toRadians((double) zzy2.zzfb));
                    Point[] pointArr = new Point[4];
                    pointArr[0] = new Point(zzy.left, zzy.top);
                    pointArr[0].offset(-zzy2.left, -zzy2.top);
                    double d = (double) pointArr[0].x;
                    Double.isNaN(d);
                    double d2 = (double) pointArr[0].y;
                    Double.isNaN(d2);
                    int i6 = (int) ((d * cos) + (d2 * sin));
                    double d3 = (double) (-pointArr[0].x);
                    Double.isNaN(d3);
                    double d4 = d3 * sin;
                    double d5 = (double) pointArr[0].y;
                    Double.isNaN(d5);
                    int i7 = (int) (d4 + (d5 * cos));
                    pointArr[0].x = i6;
                    pointArr[0].y = i7;
                    pointArr[1] = new Point(zzy.width + i6, i7);
                    pointArr[2] = new Point(zzy.width + i6, zzy.height + i7);
                    pointArr[3] = new Point(i6, i7 + zzy.height);
                    i5 = i5;
                    i = i;
                    for (int i8 = 0; i8 < 4; i8++) {
                        Point point = pointArr[i8];
                        i = Math.min(i, point.x);
                        i4 = Math.max(i4, point.x);
                        i3 = Math.min(i3, point.y);
                        i5 = Math.max(i5, point.y);
                    }
                    i2++;
                    c = 0;
                }
                zzy zzy3 = this.zzev[0].zzfd;
                int i9 = zzy3.left;
                int i10 = zzy3.top;
                double sin2 = Math.sin(Math.toRadians((double) zzy3.zzfb));
                double cos2 = Math.cos(Math.toRadians((double) zzy3.zzfb));
                Point[] pointArr2 = {new Point(i, i3), new Point(i4, i3), new Point(i4, i5), new Point(i, i5)};
                for (int i11 = 0; i11 < 4; i11++) {
                    double d6 = (double) pointArr2[i11].x;
                    Double.isNaN(d6);
                    double d7 = (double) pointArr2[i11].y;
                    Double.isNaN(d7);
                    double d8 = (double) pointArr2[i11].x;
                    Double.isNaN(d8);
                    double d9 = (double) pointArr2[i11].y;
                    Double.isNaN(d9);
                    pointArr2[i11].x = (int) ((d6 * cos2) - (d7 * sin2));
                    pointArr2[i11].y = (int) ((d8 * sin2) + (d9 * cos2));
                    i9 = i9;
                    pointArr2[i11].offset(i9, i10);
                }
                this.cornerPoints = pointArr2;
            }
        }
        return this.cornerPoints;
    }

    @Override // com.google.android.gms.vision.text.Text
    public List<? extends Text> getComponents() {
        if (this.zzev.length == 0) {
            return new ArrayList(0);
        }
        if (this.zzew == null) {
            this.zzew = new ArrayList(this.zzev.length);
            for (zzae zzae : this.zzev) {
                this.zzew.add(new Line(zzae));
            }
        }
        return this.zzew;
    }

    @Override // com.google.android.gms.vision.text.Text
    public Rect getBoundingBox() {
        if (this.zzey == null) {
            this.zzey = zzc.zza(this);
        }
        return this.zzey;
    }
}
