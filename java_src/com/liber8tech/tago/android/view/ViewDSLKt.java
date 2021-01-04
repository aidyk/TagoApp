package com.liber8tech.tago.android.view;

import android.view.View;
import android.view.ViewManager;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.internals.AnkoInternals;

public final class ViewDSLKt {
    public static /* synthetic */ StyledToolbar styledToolbar$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return styledToolbar(viewManager, i);
    }

    public static /* synthetic */ StyledToolbar styledToolbar$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), StyledToolbar.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (StyledToolbar) initiateView;
    }

    public static /* synthetic */ TagoButton tagoButton$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return tagoButton(viewManager, i);
    }

    public static /* synthetic */ TagoButton tagoButton$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoButton.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (TagoButton) initiateView;
    }

    public static /* synthetic */ SettingsRowItem settingsRowItem$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return settingsRowItem(viewManager, i);
    }

    public static /* synthetic */ SettingsRowItem settingsRowItem$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), SettingsRowItem.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (SettingsRowItem) initiateView;
    }

    public static /* synthetic */ TagoRowItem tagoRowItem$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return tagoRowItem(viewManager, i);
    }

    public static /* synthetic */ TagoRowItem tagoRowItem$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoRowItem.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (TagoRowItem) initiateView;
    }

    public static /* synthetic */ TextInputView textInput$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return textInput(viewManager, i);
    }

    public static /* synthetic */ TextInputView textInput$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TextInputView.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (TextInputView) initiateView;
    }

    public static /* synthetic */ CheckBox appcombatCheckBox$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return appcombatCheckBox(viewManager, i);
    }

    public static /* synthetic */ CheckBox appcombatCheckBox$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CheckBox.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (CheckBox) initiateView;
    }

    public static /* synthetic */ CircleProgressBar circleProgress$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return circleProgress(viewManager, i);
    }

    public static /* synthetic */ CircleProgressBar circleProgress$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CircleProgressBar.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (CircleProgressBar) initiateView;
    }

    public static /* synthetic */ TagoView tagoView$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return tagoView(viewManager, i);
    }

    public static /* synthetic */ TagoView tagoView$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoView.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (TagoView) initiateView;
    }

    public static /* synthetic */ SubsamplingScaleImageView subsamplingScaleImageView$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return subsamplingScaleImageView(viewManager, i);
    }

    public static /* synthetic */ SubsamplingScaleImageView subsamplingScaleImageView$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), SubsamplingScaleImageView.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (SubsamplingScaleImageView) initiateView;
    }

    public static /* synthetic */ CollectionSelectionItem collectionSelectionItem$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return collectionSelectionItem(viewManager, i);
    }

    public static /* synthetic */ CollectionSelectionItem collectionSelectionItem$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CollectionSelectionItem.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (CollectionSelectionItem) initiateView;
    }

    public static /* synthetic */ FormTitleView formTitle$default(ViewManager viewManager, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return formTitle(viewManager, i);
    }

    public static /* synthetic */ FormTitleView formTitle$default(ViewManager viewManager, int i, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), FormTitleView.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (FormTitleView) initiateView;
    }

    public static final StyledToolbar styledToolbar(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), StyledToolbar.class);
        StyledToolbar styledToolbar = (StyledToolbar) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return styledToolbar;
    }

    public static final StyledToolbar styledToolbar(ViewManager viewManager, int i, Function1<? super StyledToolbar, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), StyledToolbar.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (StyledToolbar) initiateView;
    }

    public static final TagoButton tagoButton(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoButton.class);
        TagoButton tagoButton = (TagoButton) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return tagoButton;
    }

    public static final TagoButton tagoButton(ViewManager viewManager, int i, Function1<? super TagoButton, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoButton.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (TagoButton) initiateView;
    }

    public static final SettingsRowItem settingsRowItem(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), SettingsRowItem.class);
        SettingsRowItem settingsRowItem = (SettingsRowItem) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return settingsRowItem;
    }

    public static final SettingsRowItem settingsRowItem(ViewManager viewManager, int i, Function1<? super SettingsRowItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), SettingsRowItem.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (SettingsRowItem) initiateView;
    }

    public static final TagoRowItem tagoRowItem(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoRowItem.class);
        TagoRowItem tagoRowItem = (TagoRowItem) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return tagoRowItem;
    }

    public static final TagoRowItem tagoRowItem(ViewManager viewManager, int i, Function1<? super TagoRowItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoRowItem.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (TagoRowItem) initiateView;
    }

    public static final TextInputView textInput(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TextInputView.class);
        TextInputView textInputView = (TextInputView) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return textInputView;
    }

    public static final TextInputView textInput(ViewManager viewManager, int i, Function1<? super TextInputView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TextInputView.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (TextInputView) initiateView;
    }

    public static final CheckBox appcombatCheckBox(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CheckBox.class);
        CheckBox checkBox = (CheckBox) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return checkBox;
    }

    public static final CheckBox appcombatCheckBox(ViewManager viewManager, int i, Function1<? super CheckBox, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CheckBox.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (CheckBox) initiateView;
    }

    public static final CircleProgressBar circleProgress(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CircleProgressBar.class);
        CircleProgressBar circleProgressBar = (CircleProgressBar) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return circleProgressBar;
    }

    public static final CircleProgressBar circleProgress(ViewManager viewManager, int i, Function1<? super CircleProgressBar, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CircleProgressBar.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (CircleProgressBar) initiateView;
    }

    public static final TagoView tagoView(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoView.class);
        TagoView tagoView = (TagoView) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return tagoView;
    }

    public static final TagoView tagoView(ViewManager viewManager, int i, Function1<? super TagoView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), TagoView.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (TagoView) initiateView;
    }

    public static final SubsamplingScaleImageView subsamplingScaleImageView(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), SubsamplingScaleImageView.class);
        SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return subsamplingScaleImageView;
    }

    public static final SubsamplingScaleImageView subsamplingScaleImageView(ViewManager viewManager, int i, Function1<? super SubsamplingScaleImageView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), SubsamplingScaleImageView.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (SubsamplingScaleImageView) initiateView;
    }

    public static final CollectionSelectionItem collectionSelectionItem(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CollectionSelectionItem.class);
        CollectionSelectionItem collectionSelectionItem = (CollectionSelectionItem) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return collectionSelectionItem;
    }

    public static final CollectionSelectionItem collectionSelectionItem(ViewManager viewManager, int i, Function1<? super CollectionSelectionItem, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), CollectionSelectionItem.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (CollectionSelectionItem) initiateView;
    }

    public static final FormTitleView formTitle(ViewManager viewManager, int i) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), FormTitleView.class);
        FormTitleView formTitleView = (FormTitleView) initiateView;
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return formTitleView;
    }

    public static final FormTitleView formTitle(ViewManager viewManager, int i, Function1<? super FormTitleView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewManager, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(viewManager), i), FormTitleView.class);
        function1.invoke(initiateView);
        AnkoInternals.INSTANCE.addView(viewManager, initiateView);
        return (FormTitleView) initiateView;
    }
}
