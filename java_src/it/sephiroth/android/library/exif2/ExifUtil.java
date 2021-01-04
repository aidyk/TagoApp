package it.sephiroth.android.library.exif2;

import java.text.DecimalFormat;
import java.text.NumberFormat;

public class ExifUtil {
    static final NumberFormat formatter = DecimalFormat.getInstance();

    public static String processLensSpecifications(Rational[] rationalArr) {
        Rational rational = rationalArr[0];
        Rational rational2 = rationalArr[1];
        Rational rational3 = rationalArr[2];
        Rational rational4 = rationalArr[3];
        formatter.setMaximumFractionDigits(1);
        return formatter.format(rational.toDouble()) + "-" + formatter.format(rational2.toDouble()) + "mm f/" + formatter.format(rational3.toDouble()) + "-" + formatter.format(rational4.toDouble());
    }
}
