package com.nikhilpanju.recyclerviewenhanced;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Vibrator;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class RecyclerTouchListener implements RecyclerView.OnItemTouchListener, OnActivityTouchListener {
    private static final String TAG = "RecyclerTouchListener";
    private long ANIMATION_CLOSE = 150;
    private long ANIMATION_STANDARD = 300;
    private int LONG_CLICK_DELAY = 800;
    Activity act;
    private View bgView;
    private int bgViewID;
    private int bgViewIDLeft;
    private boolean bgVisible;
    private int bgVisiblePosition;
    private View bgVisibleView;
    private int bgWidth = 1;
    private int bgWidthLeft = 1;
    private boolean clickable = false;
    private ArrayList<Integer> fadeViews;
    private boolean fgPartialViewClicked;
    private View fgView;
    private int fgViewID;
    final Handler handler = new Handler();
    private int heightOutsideRView;
    List<Integer> independentViews;
    private boolean isFgSwiping;
    private boolean isRViewScrolling;
    private boolean longClickVibrate;
    private boolean longClickable = false;
    private OnSwipeOptionsClickListener mBgClickListener;
    private OnSwipeOptionsClickListener mBgClickListenerLeft;
    private int mDismissAnimationRefCount = 0;
    private boolean mLongClickPerformed;
    Runnable mLongPressed = new Runnable() {
        /* class com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener.AnonymousClass1 */

        public void run() {
            if (RecyclerTouchListener.this.longClickable) {
                RecyclerTouchListener.this.mLongClickPerformed = true;
                if (!RecyclerTouchListener.this.bgVisible && RecyclerTouchListener.this.touchedPosition >= 0 && !RecyclerTouchListener.this.unClickableRows.contains(Integer.valueOf(RecyclerTouchListener.this.touchedPosition)) && !RecyclerTouchListener.this.isRViewScrolling) {
                    if (RecyclerTouchListener.this.longClickVibrate) {
                        ((Vibrator) RecyclerTouchListener.this.act.getSystemService("vibrator")).vibrate(100);
                    }
                    RecyclerTouchListener.this.mRowLongClickListener.onRowLongClicked(RecyclerTouchListener.this.touchedPosition);
                }
            }
        }
    };
    private boolean mPaused;
    private OnRowClickListener mRowClickListener;
    private OnRowLongClickListener mRowLongClickListener;
    private int mSwipingSlop;
    private VelocityTracker mVelocityTracker;
    private int maxFlingVel;
    private int minFlingVel;
    List<Integer> optionViews;
    private RecyclerView rView;
    private int screenHeight;
    private boolean swipeable = false;
    private boolean swipeableLeftOptions = false;
    private int touchSlop;
    private int touchedPosition;
    private View touchedView;
    private float touchedX;
    private float touchedY;
    List<Integer> unClickableRows;
    List<Integer> unSwipeableRows;

    /* access modifiers changed from: private */
    public enum Animation {
        OPEN,
        CLOSE
    }

    public interface OnRowClickListener {
        void onIndependentViewClicked(int i, int i2);

        void onRowClicked(int i);
    }

    public interface OnRowLongClickListener {
        void onRowLongClicked(int i);
    }

    public interface OnSwipeListener {
        void onSwipeOptionsClosed();

        void onSwipeOptionsOpened();
    }

    public interface OnSwipeOptionsClickListener {
        void onSwipeOptionClicked(int i, int i2);
    }

    public interface RecyclerTouchListenerHelper {
        void setOnActivityTouchListener(OnActivityTouchListener onActivityTouchListener);
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    private RecyclerTouchListener() {
    }

    public RecyclerTouchListener(Activity activity, RecyclerView recyclerView) {
        this.act = activity;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(recyclerView.getContext());
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.minFlingVel = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.maxFlingVel = viewConfiguration.getScaledMaximumFlingVelocity();
        this.rView = recyclerView;
        this.bgVisible = false;
        this.bgVisiblePosition = -1;
        this.bgVisibleView = null;
        this.fgPartialViewClicked = false;
        this.unSwipeableRows = new ArrayList();
        this.unClickableRows = new ArrayList();
        this.independentViews = new ArrayList();
        this.optionViews = new ArrayList();
        this.fadeViews = new ArrayList<>();
        this.isRViewScrolling = false;
        this.rView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            /* class com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener.AnonymousClass2 */

            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            }

            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                boolean z = false;
                RecyclerTouchListener.this.setEnabled(i != 1);
                RecyclerTouchListener recyclerTouchListener = RecyclerTouchListener.this;
                if (i != 0) {
                    z = true;
                }
                recyclerTouchListener.isRViewScrolling = z;
            }
        });
    }

    public void setEnabled(boolean z) {
        this.mPaused = !z;
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent);
    }

    @Override // android.support.v7.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        handleTouchEvent(motionEvent);
    }

    public RecyclerTouchListener setClickable(OnRowClickListener onRowClickListener) {
        this.clickable = true;
        this.mRowClickListener = onRowClickListener;
        return this;
    }

    public RecyclerTouchListener setClickable(boolean z) {
        this.clickable = z;
        return this;
    }

    public RecyclerTouchListener setLongClickable(boolean z, OnRowLongClickListener onRowLongClickListener) {
        this.longClickable = true;
        this.mRowLongClickListener = onRowLongClickListener;
        this.longClickVibrate = z;
        return this;
    }

    public RecyclerTouchListener setLongClickable(boolean z) {
        this.longClickable = z;
        return this;
    }

    public RecyclerTouchListener setIndependentViews(Integer... numArr) {
        this.independentViews = new ArrayList(Arrays.asList(numArr));
        return this;
    }

    public RecyclerTouchListener setUnClickableRows(Integer... numArr) {
        this.unClickableRows = new ArrayList(Arrays.asList(numArr));
        return this;
    }

    public RecyclerTouchListener setSwipeable(int i, int i2, OnSwipeOptionsClickListener onSwipeOptionsClickListener) {
        this.swipeable = true;
        if (this.fgViewID == 0 || i == this.fgViewID) {
            this.fgViewID = i;
            this.bgViewID = i2;
            this.mBgClickListener = onSwipeOptionsClickListener;
            if (this.act instanceof RecyclerTouchListenerHelper) {
                ((RecyclerTouchListenerHelper) this.act).setOnActivityTouchListener(this);
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.act.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            this.screenHeight = displayMetrics.heightPixels;
            return this;
        }
        throw new IllegalArgumentException("foregroundID does not match previously set ID");
    }

    public RecyclerTouchListener setSwipeable(boolean z) {
        this.swipeable = z;
        if (!z) {
            invalidateSwipeOptions();
        }
        return this;
    }

    public RecyclerTouchListener setSwipeOptionViews(Integer... numArr) {
        this.optionViews = new ArrayList(Arrays.asList(numArr));
        return this;
    }

    public RecyclerTouchListener setUnSwipeableRows(Integer... numArr) {
        this.unSwipeableRows = new ArrayList(Arrays.asList(numArr));
        return this;
    }

    public RecyclerTouchListener setViewsToFade(Integer... numArr) {
        this.fadeViews = new ArrayList<>(Arrays.asList(numArr));
        return this;
    }

    public RecyclerTouchListener setFgFade() {
        if (!this.fadeViews.contains(Integer.valueOf(this.fgViewID))) {
            this.fadeViews.add(Integer.valueOf(this.fgViewID));
        }
        return this;
    }

    private boolean isIndependentViewClicked(MotionEvent motionEvent) {
        for (int i = 0; i < this.independentViews.size(); i++) {
            if (this.touchedView != null) {
                Rect rect = new Rect();
                this.touchedView.findViewById(this.independentViews.get(i).intValue()).getGlobalVisibleRect(rect);
                if (rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                    return false;
                }
            }
        }
        return true;
    }

    private int getOptionViewID(MotionEvent motionEvent) {
        for (int i = 0; i < this.optionViews.size(); i++) {
            if (this.touchedView != null) {
                Rect rect = new Rect();
                this.touchedView.findViewById(this.optionViews.get(i).intValue()).getGlobalVisibleRect(rect);
                if (rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                    return this.optionViews.get(i).intValue();
                }
            }
        }
        return -1;
    }

    private int getIndependentViewID(MotionEvent motionEvent) {
        for (int i = 0; i < this.independentViews.size(); i++) {
            if (this.touchedView != null) {
                Rect rect = new Rect();
                this.touchedView.findViewById(this.independentViews.get(i).intValue()).getGlobalVisibleRect(rect);
                if (rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                    return this.independentViews.get(i).intValue();
                }
            }
        }
        return -1;
    }

    public void invalidateSwipeOptions() {
        this.bgWidth = 1;
    }

    public void openSwipeOptions(int i) {
        if (this.swipeable && this.rView.getChildAt(i) != null && !this.unSwipeableRows.contains(Integer.valueOf(i))) {
            if (this.bgWidth < 2) {
                if (this.act.findViewById(this.bgViewID) != null) {
                    this.bgWidth = this.act.findViewById(this.bgViewID).getWidth();
                }
                this.heightOutsideRView = this.screenHeight - this.rView.getHeight();
            }
            this.touchedPosition = i;
            this.touchedView = this.rView.getChildAt(i);
            this.fgView = this.touchedView.findViewById(this.fgViewID);
            this.bgView = this.touchedView.findViewById(this.bgViewID);
            this.bgView.setMinimumHeight(this.fgView.getHeight());
            closeVisibleBG(null);
            animateFG(this.touchedView, Animation.OPEN, this.ANIMATION_STANDARD);
            this.bgVisible = true;
            this.bgVisibleView = this.fgView;
            this.bgVisiblePosition = this.touchedPosition;
        }
    }

    @Deprecated
    public void closeVisibleBG() {
        if (this.bgVisibleView == null) {
            Log.e(TAG, "No rows found for which background options are visible");
            return;
        }
        this.bgVisibleView.animate().translationX(0.0f).setDuration(this.ANIMATION_CLOSE).setListener(null);
        animateFadeViews(this.bgVisibleView, 1.0f, this.ANIMATION_CLOSE);
        this.bgVisible = false;
        this.bgVisibleView = null;
        this.bgVisiblePosition = -1;
    }

    public void closeVisibleBG(final OnSwipeListener onSwipeListener) {
        if (this.bgVisibleView == null) {
            Log.e(TAG, "No rows found for which background options are visible");
            return;
        }
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.bgVisibleView, View.TRANSLATION_X, 0.0f);
        ofFloat.setDuration(this.ANIMATION_CLOSE);
        ofFloat.addListener(new Animator.AnimatorListener() {
            /* class com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener.AnonymousClass3 */

            public void onAnimationCancel(Animator animator) {
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
            }

            public void onAnimationEnd(Animator animator) {
                if (onSwipeListener != null) {
                    onSwipeListener.onSwipeOptionsClosed();
                }
                ofFloat.removeAllListeners();
            }
        });
        ofFloat.start();
        animateFadeViews(this.bgVisibleView, 1.0f, this.ANIMATION_CLOSE);
        this.bgVisible = false;
        this.bgVisibleView = null;
        this.bgVisiblePosition = -1;
    }

    private void animateFadeViews(View view, float f, long j) {
        if (this.fadeViews != null) {
            Iterator<Integer> it2 = this.fadeViews.iterator();
            while (it2.hasNext()) {
                view.findViewById(it2.next().intValue()).animate().alpha(f).setDuration(j);
            }
        }
    }

    private void animateFG(View view, Animation animation, long j) {
        if (animation == Animation.OPEN) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.fgView, View.TRANSLATION_X, (float) (-this.bgWidth));
            ofFloat.setDuration(j);
            ofFloat.setInterpolator(new DecelerateInterpolator(1.5f));
            ofFloat.start();
            animateFadeViews(view, 0.0f, j);
        } else if (animation == Animation.CLOSE) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.fgView, View.TRANSLATION_X, 0.0f);
            ofFloat2.setDuration(j);
            ofFloat2.setInterpolator(new DecelerateInterpolator(1.5f));
            ofFloat2.start();
            animateFadeViews(view, 1.0f, j);
        }
    }

    private void animateFG(View view, final Animation animation, long j, final OnSwipeListener onSwipeListener) {
        final ObjectAnimator objectAnimator;
        if (animation == Animation.OPEN) {
            objectAnimator = ObjectAnimator.ofFloat(this.fgView, View.TRANSLATION_X, (float) (-this.bgWidth));
            objectAnimator.setDuration(j);
            objectAnimator.setInterpolator(new DecelerateInterpolator(1.5f));
            objectAnimator.start();
            animateFadeViews(view, 0.0f, j);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(this.fgView, View.TRANSLATION_X, 0.0f);
            objectAnimator.setDuration(j);
            objectAnimator.setInterpolator(new DecelerateInterpolator(1.5f));
            objectAnimator.start();
            animateFadeViews(view, 1.0f, j);
        }
        objectAnimator.addListener(new Animator.AnimatorListener() {
            /* class com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener.AnonymousClass4 */

            public void onAnimationCancel(Animator animator) {
            }

            public void onAnimationRepeat(Animator animator) {
            }

            public void onAnimationStart(Animator animator) {
            }

            public void onAnimationEnd(Animator animator) {
                if (onSwipeListener != null) {
                    if (animation == Animation.OPEN) {
                        onSwipeListener.onSwipeOptionsOpened();
                    } else if (animation == Animation.CLOSE) {
                        onSwipeListener.onSwipeOptionsClosed();
                    }
                }
                objectAnimator.removeAllListeners();
            }
        });
    }

    /* JADX WARNING: Removed duplicated region for block: B:146:0x02a1  */
    /* JADX WARNING: Removed duplicated region for block: B:272:0x048e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean handleTouchEvent(android.view.MotionEvent r14) {
        /*
        // Method dump skipped, instructions count: 1426
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener.handleTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.nikhilpanju.recyclerviewenhanced.OnActivityTouchListener
    public void getTouchCoordinates(MotionEvent motionEvent) {
        int rawY = (int) motionEvent.getRawY();
        if (this.swipeable && this.bgVisible && motionEvent.getActionMasked() == 0 && rawY < this.heightOutsideRView) {
            closeVisibleBG(null);
        }
    }
}
