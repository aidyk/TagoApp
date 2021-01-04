package org.apache.commons.lang3.builder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.lang3.ArrayUtils;

public class DiffBuilder implements Builder<DiffResult> {
    private final List<Diff<?>> diffs;
    private final Object left;
    private final boolean objectsTriviallyEqual;
    private final Object right;
    private final ToStringStyle style;

    public DiffBuilder(Object obj, Object obj2, ToStringStyle toStringStyle) {
        if (obj == null) {
            throw new IllegalArgumentException("lhs cannot be null");
        } else if (obj2 != null) {
            this.diffs = new ArrayList();
            this.left = obj;
            this.right = obj2;
            this.style = toStringStyle;
            this.objectsTriviallyEqual = obj == obj2 || obj.equals(obj2);
        } else {
            throw new IllegalArgumentException("rhs cannot be null");
        }
    }

    public DiffBuilder append(String str, final boolean z, final boolean z2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && z != z2) {
                this.diffs.add(new Diff<Boolean>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass1 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Boolean getLeft() {
                        return Boolean.valueOf(z);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Boolean getRight() {
                        return Boolean.valueOf(z2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final boolean[] zArr, final boolean[] zArr2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && !Arrays.equals(zArr, zArr2)) {
                this.diffs.add(new Diff<Boolean[]>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass2 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Boolean[] getLeft() {
                        return ArrayUtils.toObject(zArr);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Boolean[] getRight() {
                        return ArrayUtils.toObject(zArr2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final byte b, final byte b2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && b != b2) {
                this.diffs.add(new Diff<Byte>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass3 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Byte getLeft() {
                        return Byte.valueOf(b);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Byte getRight() {
                        return Byte.valueOf(b2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final byte[] bArr, final byte[] bArr2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && !Arrays.equals(bArr, bArr2)) {
                this.diffs.add(new Diff<Byte[]>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass4 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Byte[] getLeft() {
                        return ArrayUtils.toObject(bArr);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Byte[] getRight() {
                        return ArrayUtils.toObject(bArr2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final char c, final char c2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && c != c2) {
                this.diffs.add(new Diff<Character>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass5 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Character getLeft() {
                        return Character.valueOf(c);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Character getRight() {
                        return Character.valueOf(c2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final char[] cArr, final char[] cArr2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && !Arrays.equals(cArr, cArr2)) {
                this.diffs.add(new Diff<Character[]>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass6 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Character[] getLeft() {
                        return ArrayUtils.toObject(cArr);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Character[] getRight() {
                        return ArrayUtils.toObject(cArr2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final double d, final double d2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && Double.doubleToLongBits(d) != Double.doubleToLongBits(d2)) {
                this.diffs.add(new Diff<Double>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass7 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Double getLeft() {
                        return Double.valueOf(d);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Double getRight() {
                        return Double.valueOf(d2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final double[] dArr, final double[] dArr2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && !Arrays.equals(dArr, dArr2)) {
                this.diffs.add(new Diff<Double[]>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass8 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Double[] getLeft() {
                        return ArrayUtils.toObject(dArr);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Double[] getRight() {
                        return ArrayUtils.toObject(dArr2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final float f, final float f2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && Float.floatToIntBits(f) != Float.floatToIntBits(f2)) {
                this.diffs.add(new Diff<Float>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass9 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Float getLeft() {
                        return Float.valueOf(f);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Float getRight() {
                        return Float.valueOf(f2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final float[] fArr, final float[] fArr2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && !Arrays.equals(fArr, fArr2)) {
                this.diffs.add(new Diff<Float[]>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass10 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Float[] getLeft() {
                        return ArrayUtils.toObject(fArr);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Float[] getRight() {
                        return ArrayUtils.toObject(fArr2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final int i, final int i2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && i != i2) {
                this.diffs.add(new Diff<Integer>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass11 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Integer getLeft() {
                        return Integer.valueOf(i);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Integer getRight() {
                        return Integer.valueOf(i2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final int[] iArr, final int[] iArr2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && !Arrays.equals(iArr, iArr2)) {
                this.diffs.add(new Diff<Integer[]>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass12 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Integer[] getLeft() {
                        return ArrayUtils.toObject(iArr);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Integer[] getRight() {
                        return ArrayUtils.toObject(iArr2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final long j, final long j2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && j != j2) {
                this.diffs.add(new Diff<Long>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass13 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Long getLeft() {
                        return Long.valueOf(j);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Long getRight() {
                        return Long.valueOf(j2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final long[] jArr, final long[] jArr2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && !Arrays.equals(jArr, jArr2)) {
                this.diffs.add(new Diff<Long[]>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass14 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Long[] getLeft() {
                        return ArrayUtils.toObject(jArr);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Long[] getRight() {
                        return ArrayUtils.toObject(jArr2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final short s, final short s2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && s != s2) {
                this.diffs.add(new Diff<Short>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass15 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Short getLeft() {
                        return Short.valueOf(s);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Short getRight() {
                        return Short.valueOf(s2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final short[] sArr, final short[] sArr2) {
        if (str != null) {
            if (!this.objectsTriviallyEqual && !Arrays.equals(sArr, sArr2)) {
                this.diffs.add(new Diff<Short[]>(str) {
                    /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass16 */
                    private static final long serialVersionUID = 1;

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Short[] getLeft() {
                        return ArrayUtils.toObject(sArr);
                    }

                    @Override // org.apache.commons.lang3.tuple.Pair
                    public Short[] getRight() {
                        return ArrayUtils.toObject(sArr2);
                    }
                });
            }
            return this;
        }
        throw new IllegalArgumentException("Field name cannot be null");
    }

    public DiffBuilder append(String str, final Object obj, final Object obj2) {
        if (this.objectsTriviallyEqual || obj == obj2) {
            return this;
        }
        Object obj3 = obj != null ? obj : obj2;
        if (!obj3.getClass().isArray()) {
            this.diffs.add(new Diff<Object>(str) {
                /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass17 */
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Object getLeft() {
                    return obj;
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Object getRight() {
                    return obj2;
                }
            });
            return this;
        } else if (obj3 instanceof boolean[]) {
            return append(str, (boolean[]) obj, (boolean[]) obj2);
        } else {
            if (obj3 instanceof byte[]) {
                return append(str, (byte[]) obj, (byte[]) obj2);
            }
            if (obj3 instanceof char[]) {
                return append(str, (char[]) obj, (char[]) obj2);
            }
            if (obj3 instanceof double[]) {
                return append(str, (double[]) obj, (double[]) obj2);
            }
            if (obj3 instanceof float[]) {
                return append(str, (float[]) obj, (float[]) obj2);
            }
            if (obj3 instanceof int[]) {
                return append(str, (int[]) obj, (int[]) obj2);
            }
            if (obj3 instanceof long[]) {
                return append(str, (long[]) obj, (long[]) obj2);
            }
            if (obj3 instanceof short[]) {
                return append(str, (short[]) obj, (short[]) obj2);
            }
            return append(str, (Object[]) obj, (Object[]) obj2);
        }
    }

    public DiffBuilder append(String str, final Object[] objArr, final Object[] objArr2) {
        if (!this.objectsTriviallyEqual && !Arrays.equals(objArr, objArr2)) {
            this.diffs.add(new Diff<Object[]>(str) {
                /* class org.apache.commons.lang3.builder.DiffBuilder.AnonymousClass18 */
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Object[] getLeft() {
                    return objArr;
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Object[] getRight() {
                    return objArr2;
                }
            });
        }
        return this;
    }

    @Override // org.apache.commons.lang3.builder.Builder
    public DiffResult build() {
        return new DiffResult(this.left, this.right, this.diffs, this.style);
    }
}
