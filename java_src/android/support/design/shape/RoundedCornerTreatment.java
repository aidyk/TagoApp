package android.support.design.shape;

import android.support.design.internal.Experimental;

@Experimental("The shapes API is currently experimental and subject to change")
public class RoundedCornerTreatment extends CornerTreatment {
    private final float radius;

    public RoundedCornerTreatment(float f) {
        this.radius = f;
    }

    @Override // android.support.design.shape.CornerTreatment
    public void getCornerPath(float f, float f2, ShapePath shapePath) {
        shapePath.reset(0.0f, this.radius * f2);
        shapePath.addArc(0.0f, 0.0f, this.radius * 2.0f * f2, this.radius * 2.0f * f2, f + 180.0f, 90.0f);
    }
}
