package com.facebook.appevents.codeless;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.appevents.codeless.CodelessLoggingEventListener;
import com.facebook.appevents.codeless.RCTCodelessLoggingEventListener;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ParameterComponent;
import com.facebook.appevents.codeless.internal.PathComponent;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.InternalSettings;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class CodelessMatcher {
    private static final String CURRENT_CLASS_NAME = ".";
    private static final String PARENT_CLASS_NAME = "..";
    private static final String TAG = CodelessMatcher.class.getCanonicalName();
    private Set<Activity> activitiesSet = new HashSet();
    private HashMap<String, String> delegateMap = new HashMap<>();
    private final Handler uiThreadHandler = new Handler(Looper.getMainLooper());
    private Set<ViewMatcher> viewMatchers = new HashSet();

    public void add(Activity activity) {
        if (!InternalSettings.isUnityApp()) {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                this.activitiesSet.add(activity);
                this.delegateMap.clear();
                startTracking();
                return;
            }
            throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
        }
    }

    public void remove(Activity activity) {
        if (!InternalSettings.isUnityApp()) {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                this.activitiesSet.remove(activity);
                this.viewMatchers.clear();
                this.delegateMap.clear();
                return;
            }
            throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
        }
    }

    public static Bundle getParameters(EventBinding eventBinding, View view, View view2) {
        List<ParameterComponent> viewParameters;
        List<MatchedView> list;
        Bundle bundle = new Bundle();
        if (!(eventBinding == null || (viewParameters = eventBinding.getViewParameters()) == null)) {
            for (ParameterComponent parameterComponent : viewParameters) {
                if (parameterComponent.value != null && parameterComponent.value.length() > 0) {
                    bundle.putString(parameterComponent.name, parameterComponent.value);
                } else if (parameterComponent.path.size() > 0) {
                    if (parameterComponent.pathType.equals(Constants.PATH_TYPE_RELATIVE)) {
                        list = ViewMatcher.findViewByPath(eventBinding, view2, parameterComponent.path, 0, -1, view2.getClass().getSimpleName());
                    } else {
                        list = ViewMatcher.findViewByPath(eventBinding, view, parameterComponent.path, 0, -1, view.getClass().getSimpleName());
                    }
                    Iterator<MatchedView> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        MatchedView next = it2.next();
                        if (next.getView() != null) {
                            String textOfView = ViewHierarchy.getTextOfView(next.getView());
                            if (textOfView.length() > 0) {
                                bundle.putString(parameterComponent.name, textOfView);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return bundle;
    }

    private void startTracking() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            matchViews();
        } else {
            this.uiThreadHandler.post(new Runnable() {
                /* class com.facebook.appevents.codeless.CodelessMatcher.AnonymousClass1 */

                public void run() {
                    CodelessMatcher.this.matchViews();
                }
            });
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void matchViews() {
        for (Activity activity : this.activitiesSet) {
            this.viewMatchers.add(new ViewMatcher(activity.getWindow().getDecorView().getRootView(), this.uiThreadHandler, this.delegateMap, activity.getClass().getSimpleName()));
        }
    }

    public static class MatchedView {
        private WeakReference<View> view;
        private String viewMapKey;

        public MatchedView(View view2, String str) {
            this.view = new WeakReference<>(view2);
            this.viewMapKey = str;
        }

        @Nullable
        public View getView() {
            if (this.view == null) {
                return null;
            }
            return this.view.get();
        }

        public String getViewMapKey() {
            return this.viewMapKey;
        }
    }

    /* access modifiers changed from: protected */
    public static class ViewMatcher implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {
        private final String activityName;
        private HashMap<String, String> delegateMap;
        @Nullable
        private List<EventBinding> eventBindings;
        private final Handler handler;
        private WeakReference<View> rootView;

        public ViewMatcher(View view, Handler handler2, HashMap<String, String> hashMap, String str) {
            this.rootView = new WeakReference<>(view);
            this.handler = handler2;
            this.delegateMap = hashMap;
            this.activityName = str;
            this.handler.postDelayed(this, 200);
        }

        public void run() {
            View view;
            FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
            if (appSettingsWithoutQuery != null && appSettingsWithoutQuery.getCodelessEventsEnabled()) {
                this.eventBindings = EventBinding.parseArray(appSettingsWithoutQuery.getEventBindings());
                if (this.eventBindings != null && (view = this.rootView.get()) != null) {
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalLayoutListener(this);
                        viewTreeObserver.addOnScrollChangedListener(this);
                    }
                    startMatch();
                }
            }
        }

        public void onGlobalLayout() {
            startMatch();
        }

        public void onScrollChanged() {
            startMatch();
        }

        private void startMatch() {
            if (!(this.eventBindings == null || this.rootView.get() == null)) {
                for (int i = 0; i < this.eventBindings.size(); i++) {
                    findView(this.eventBindings.get(i), this.rootView.get());
                }
            }
        }

        public void findView(EventBinding eventBinding, View view) {
            if (!(eventBinding == null || view == null)) {
                if (TextUtils.isEmpty(eventBinding.getActivityName()) || eventBinding.getActivityName().equals(this.activityName)) {
                    List<PathComponent> viewPath = eventBinding.getViewPath();
                    if (viewPath.size() <= 25) {
                        for (MatchedView matchedView : findViewByPath(eventBinding, view, viewPath, 0, -1, this.activityName)) {
                            attachListener(matchedView, view, eventBinding);
                        }
                    }
                }
            }
        }

        public static List<MatchedView> findViewByPath(EventBinding eventBinding, View view, List<PathComponent> list, int i, int i2, String str) {
            String str2 = str + CodelessMatcher.CURRENT_CLASS_NAME + String.valueOf(i2);
            ArrayList arrayList = new ArrayList();
            if (view == null) {
                return arrayList;
            }
            if (i >= list.size()) {
                arrayList.add(new MatchedView(view, str2));
            } else {
                PathComponent pathComponent = list.get(i);
                if (pathComponent.className.equals(CodelessMatcher.PARENT_CLASS_NAME)) {
                    ViewParent parent = view.getParent();
                    if (parent instanceof ViewGroup) {
                        List<View> findVisibleChildren = findVisibleChildren((ViewGroup) parent);
                        int size = findVisibleChildren.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            arrayList.addAll(findViewByPath(eventBinding, findVisibleChildren.get(i3), list, i + 1, i3, str2));
                        }
                    }
                    return arrayList;
                } else if (pathComponent.className.equals(CodelessMatcher.CURRENT_CLASS_NAME)) {
                    arrayList.add(new MatchedView(view, str2));
                    return arrayList;
                } else if (!isTheSameView(view, pathComponent, i2)) {
                    return arrayList;
                } else {
                    if (i == list.size() - 1) {
                        arrayList.add(new MatchedView(view, str2));
                    }
                }
            }
            if (view instanceof ViewGroup) {
                List<View> findVisibleChildren2 = findVisibleChildren((ViewGroup) view);
                int size2 = findVisibleChildren2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    arrayList.addAll(findViewByPath(eventBinding, findVisibleChildren2.get(i4), list, i + 1, i4, str2));
                }
            }
            return arrayList;
        }

        private static boolean isTheSameView(View view, PathComponent pathComponent, int i) {
            String str;
            String str2;
            if (pathComponent.index != -1 && i != pathComponent.index) {
                return false;
            }
            if (!view.getClass().getCanonicalName().equals(pathComponent.className)) {
                if (!pathComponent.className.matches(".*android\\..*")) {
                    return false;
                }
                String[] split = pathComponent.className.split("\\.");
                if (split.length <= 0) {
                    return false;
                }
                if (!view.getClass().getSimpleName().equals(split[split.length - 1])) {
                    return false;
                }
            }
            if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.ID.getValue()) > 0 && pathComponent.id != view.getId()) {
                return false;
            }
            if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.TEXT.getValue()) > 0 && !pathComponent.text.equals(ViewHierarchy.getTextOfView(view))) {
                return false;
            }
            if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.DESCRIPTION.getValue()) > 0) {
                String str3 = pathComponent.description;
                if (view.getContentDescription() == null) {
                    str2 = "";
                } else {
                    str2 = String.valueOf(view.getContentDescription());
                }
                if (!str3.equals(str2)) {
                    return false;
                }
            }
            if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.HINT.getValue()) > 0 && !pathComponent.hint.equals(ViewHierarchy.getHintOfView(view))) {
                return false;
            }
            if ((pathComponent.matchBitmask & PathComponent.MatchBitmaskType.TAG.getValue()) > 0) {
                String str4 = pathComponent.tag;
                if (view.getTag() == null) {
                    str = "";
                } else {
                    str = String.valueOf(view.getTag());
                }
                if (!str4.equals(str)) {
                    return false;
                }
            }
            return true;
        }

        private static List<View> findVisibleChildren(ViewGroup viewGroup) {
            ArrayList arrayList = new ArrayList();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    arrayList.add(childAt);
                }
            }
            return arrayList;
        }

        private void attachListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            if (eventBinding != null) {
                try {
                    View view2 = matchedView.getView();
                    if (view2 != null) {
                        View findRCTRootView = ViewHierarchy.findRCTRootView(view2);
                        if (findRCTRootView != null && ViewHierarchy.isRCTButton(view2, findRCTRootView)) {
                            attachRCTListener(matchedView, view, findRCTRootView, eventBinding);
                        } else if (!view2.getClass().getName().startsWith("com.facebook.react")) {
                            String viewMapKey = matchedView.getViewMapKey();
                            View.AccessibilityDelegate existingDelegate = ViewHierarchy.getExistingDelegate(view2);
                            boolean z = false;
                            boolean z2 = existingDelegate != null;
                            boolean z3 = z2 && (existingDelegate instanceof CodelessLoggingEventListener.AutoLoggingAccessibilityDelegate);
                            if (z3 && ((CodelessLoggingEventListener.AutoLoggingAccessibilityDelegate) existingDelegate).getSupportCodelessLogging()) {
                                z = true;
                            }
                            if (this.delegateMap.containsKey(viewMapKey)) {
                                return;
                            }
                            if (!z2 || !z3 || !z) {
                                view2.setAccessibilityDelegate(CodelessLoggingEventListener.getAccessibilityDelegate(eventBinding, view, view2));
                                this.delegateMap.put(viewMapKey, eventBinding.getEventName());
                            }
                        }
                    }
                } catch (FacebookException e) {
                    Log.e(CodelessMatcher.TAG, "Failed to attach auto logging event listener.", e);
                }
            }
        }

        private void attachRCTListener(MatchedView matchedView, View view, View view2, EventBinding eventBinding) {
            View view3;
            if (eventBinding != null && (view3 = matchedView.getView()) != null && ViewHierarchy.isRCTButton(view3, view2)) {
                String viewMapKey = matchedView.getViewMapKey();
                View.OnTouchListener existingOnTouchListener = ViewHierarchy.getExistingOnTouchListener(view3);
                boolean z = false;
                boolean z2 = existingOnTouchListener != null;
                boolean z3 = z2 && (existingOnTouchListener instanceof RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener);
                if (z3 && ((RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) existingOnTouchListener).getSupportCodelessLogging()) {
                    z = true;
                }
                if (this.delegateMap.containsKey(viewMapKey)) {
                    return;
                }
                if (!z2 || !z3 || !z) {
                    view3.setOnTouchListener(RCTCodelessLoggingEventListener.getOnTouchListener(eventBinding, view, view3));
                    this.delegateMap.put(viewMapKey, eventBinding.getEventName());
                }
            }
        }
    }
}
