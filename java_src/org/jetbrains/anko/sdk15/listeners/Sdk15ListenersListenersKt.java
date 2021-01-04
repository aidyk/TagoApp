package org.jetbrains.anko.sdk15.listeners;

import android.gesture.Gesture;
import android.gesture.GestureOverlayView;
import android.media.MediaPlayer;
import android.view.ContextMenu;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.CalendarView;
import android.widget.Chronometer;
import android.widget.CompoundButton;
import android.widget.ExpandableListView;
import android.widget.NumberPicker;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.SearchView;
import android.widget.SeekBar;
import android.widget.SlidingDrawer;
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.VideoView;
import android.widget.ZoomControls;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.analytics.ecommerce.Promotion;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000â\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a#\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001aI\u0010\u0007\u001a\u00020\u0001*\u00020\b2:\b\b\u0010\t\u001a4\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00010\nH\b\u001aI\u0010\u0007\u001a\u00020\u0001*\u00020\u00102:\b\b\u0010\t\u001a4\u0012\u0015\u0012\u0013\u0018\u00010\u0010¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00010\nH\b\u001a\u0001\u0010\u0014\u001a\u00020\u0001*\u00020\u00152{\b\b\u0010\t\u001au\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u000e0\u0016H\b\u001a4\u0010\u001d\u001a\u00020\u0001*\u00020\u001e2%\b\b\u0010\t\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u001e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001a4\u0010 \u001a\u00020\u0001*\u00020\u00022%\b\b\u0010\t\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001a\u001d\u0010!\u001a\u00020\u0001*\u00020\"2\u000e\b\b\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000e0#H\b\u001a4\u0010$\u001a\u00020\u0001*\u00020%2%\b\b\u0010\t\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010&¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b('\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001ab\u0010(\u001a\u00020\u0001*\u00020\u00022S\b\b\u0010\t\u001aM\u0012\u0015\u0012\u0013\u0018\u00010*¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(+\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0015\u0012\u0013\u0018\u00010,¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020\u00010)H\b\u001as\u0010.\u001a\u00020\u0001*\u00020/2d\b\b\u0010\t\u001a^\u0012\u0015\u0012\u0013\u0018\u00010/¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(1\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(2\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(3\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u000100H\b\u001aG\u00105\u001a\u00020\u0001*\u00020\u000228\b\b\u0010\t\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u001106¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u000e0\nH\b\u001a\u001d\u00108\u001a\u00020\u0001*\u0002092\u000e\b\b\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010#H\b\u001a\u001d\u0010:\u001a\u00020\u0001*\u0002092\u000e\b\b\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010#H\b\u001a#\u0010;\u001a\u00020\u0001*\u0002092\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001a`\u0010=\u001a\u00020\u0001*\u00020>2Q\b\b\u0010\t\u001aK\u0012\u0015\u0012\u0013\u0018\u00010>¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(?\u0012\u0015\u0012\u0013\u0018\u00010@¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u000e0)H\b\u001a^\u0010A\u001a\u00020\u0001*\u00020%2O\b\b\u0010\t\u001aI\u0012\u0015\u0012\u0013\u0018\u00010&¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b('\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(B\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(C\u0012\u0004\u0012\u00020\u000e0)H\b\u001aG\u0010D\u001a\u00020\u0001*\u00020\u000228\b\b\u0010\t\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(E\u0012\u0004\u0012\u00020\u00010\nH\b\u001aG\u0010F\u001a\u00020\u0001*\u00020\u000228\b\b\u0010\t\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110G¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u000e0\nH\b\u001a#\u0010H\u001a\u00020\u0001*\u00020I2\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001aK\u0010K\u001a\u00020\u0001*\u00020I2<\b\b\u0010\t\u001a6\u0012\u0015\u0012\u0013\u0018\u00010I¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(L\u0012\u0015\u0012\u0013\u0018\u00010M¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(N\u0012\u0004\u0012\u00020\u00010\nH\b\u001a#\u0010O\u001a\u00020\u0001*\u00020I2\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001au\u0010Q\u001a\u00020\u0001*\u00020\u00152f\b\b\u0010\t\u001a`\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u000e00H\b\u001a2\u0010R\u001a\u00020\u0001*\u00020\u00152#\b\b\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001a2\u0010S\u001a\u00020\u0001*\u00020\u00152#\b\b\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001a#\u0010T\u001a\u00020\u0001*\u00020U2\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020V\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001aG\u0010W\u001a\u00020\u0001*\u00020\u000228\b\b\u0010\t\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110G¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u000e0\nH\b\u001aK\u0010X\u001a\u00020\u0001*\u00020Y2<\b\b\u0010\t\u001a6\u0012\u0015\u0012\u0013\u0018\u00010Y¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(Z\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b([\u0012\u0004\u0012\u00020\u00010\nH\b\u001a\u0001\u0010\\\u001a\u00020\u0001*\n\u0012\u0006\b\u0001\u0012\u00020^0]2j\b\b\u0010\t\u001ad\u0012\u0019\u0012\u0017\u0012\u0002\b\u0003\u0018\u00010]¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(_\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(`\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(b\u0012\u0004\u0012\u00020\u000100H\b\u001a\u0001\u0010c\u001a\u00020\u0001*\n\u0012\u0006\b\u0001\u0012\u00020^0]2j\b\b\u0010\t\u001ad\u0012\u0019\u0012\u0017\u0012\u0002\b\u0003\u0018\u00010]¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(_\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(`\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(b\u0012\u0004\u0012\u00020\u000e00H\b\u001a+\u0010d\u001a\u00020\u0001*\n\u0012\u0006\b\u0001\u0012\u00020^0]2\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020e\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001a^\u0010f\u001a\u00020\u0001*\u00020\u00022O\b\b\u0010\t\u001aI\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(g\u0012\u0015\u0012\u0013\u0018\u00010@¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u000e0)H\b\u001aÞ\u0001\u0010h\u001a\u00020\u0001*\u00020\u00022Î\u0001\b\b\u0010\t\u001aÇ\u0001\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(j\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(k\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(l\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(m\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(n\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(o\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(p\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(q\u0012\u0004\u0012\u00020\u00010iH\b\u001a4\u0010r\u001a\u00020\u0001*\u00020\u00022%\b\b\u0010\t\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u000e0\u0004H\b\u001a4\u0010s\u001a\u00020\u0001*\u00020%2%\b\b\u0010\t\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010&¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b('\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001aG\u0010t\u001a\u00020\u0001*\u00020\"28\b\b\u0010\t\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(E\u0012\u0004\u0012\u00020\u00010\nH\b\u001a#\u0010u\u001a\u00020\u0001*\u00020\"2\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020v\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001a^\u0010w\u001a\u00020\u0001*\u00020x2O\b\b\u0010\t\u001aI\u0012\u0015\u0012\u0013\u0018\u00010x¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(y\u0012\u0013\u0012\u00110z¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b({\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(|\u0012\u0004\u0012\u00020\u00010)H\b\u001aI\u0010}\u001a\u00020\u0001*\u00020~2:\b\b\u0010\t\u001a4\u0012\u0015\u0012\u0013\u0018\u00010~¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(1\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0012\u0004\u0012\u00020\u00010\nH\b\u001a&\u0010\u0001\u001a\u00020\u0001*\u00030\u00012\u0018\u0010\u0003\u001a\u0014\u0012\u0005\u0012\u00030\u0001\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001a5\u0010\u0001\u001a\u00020\u0001*\u00020\"2%\b\b\u0010\t\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001a&\u0010\u0001\u001a\u00020\u0001*\u00030\u00012\u0018\u0010\u0003\u001a\u0014\u0012\u0005\u0012\u00030\u0001\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001a%\u0010\u0001\u001a\u00020\u0001*\u00020\"2\u0018\u0010\u0003\u001a\u0014\u0012\u0005\u0012\u00030\u0001\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001a4\u0010\u0001\u001a\u00020\u0001*\u00020\u00022$\b\b\u0010\t\u001a\u001e\u0012\u0014\u0012\u00120\u0012¢\u0006\r\b\u000b\u0012\t\b\f\u0012\u0005\b\b(\u0001\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001a8\u0010\u0001\u001a\u00020\u0001*\u00030\u00012'\b\b\u0010\t\u001a!\u0012\u0017\u0012\u0015\u0018\u00010\u0001¢\u0006\r\b\u000b\u0012\t\b\f\u0012\u0005\b\b(\u0001\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001ac\u0010\u0001\u001a\u00020\u0001*\u00030\u00012R\b\b\u0010\t\u001aL\u0012\u0016\u0012\u0014\u0018\u00010\u0001¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(1\u0012\u0014\u0012\u00120\u0012¢\u0006\r\b\u000b\u0012\t\b\f\u0012\u0005\b\b(\u0001\u0012\u0014\u0012\u00120\u0012¢\u0006\r\b\u000b\u0012\t\b\f\u0012\u0005\b\b(\u0001\u0012\u0004\u0012\u00020\u00010)H\b\u001aH\u0010\u0001\u001a\u00020\u0001*\u00020\u000228\b\b\u0010\t\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110G¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u000e0\nH\b\u001ab\u0010\u0001\u001a\u00020\u0001*\u00020~2R\b\b\u0010\t\u001aL\u0012\u0016\u0012\u0014\u0018\u00010~¢\u0006\r\b\u000b\u0012\t\b\f\u0012\u0005\b\b(\u0001\u0012\u0014\u0012\u00120\u0012¢\u0006\r\b\u000b\u0012\t\b\f\u0012\u0005\b\b(\u0001\u0012\u0014\u0012\u00120\u0012¢\u0006\r\b\u000b\u0012\t\b\f\u0012\u0005\b\b(\u0001\u0012\u0004\u0012\u00020\u00010)H\b\u001a6\u0010\u0001\u001a\u00020\u0001*\u00030\u00012%\b\b\u0010\t\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001a6\u0010\u0001\u001a\u00020\u0001*\u00030\u00012%\b\b\u0010\t\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u00010\u0004H\b\u001a%\u0010\u0001\u001a\u00020\u0001*\u00020>2\u0018\u0010\u0003\u001a\u0014\u0012\u0005\u0012\u00030\u0001\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006¨\u0006\u0001"}, d2 = {"onAttachStateChangeListener", "", "Landroid/view/View;", "init", "Lkotlin/Function1;", "Lorg/jetbrains/anko/sdk15/listeners/__View_OnAttachStateChangeListener;", "Lkotlin/ExtensionFunctionType;", "onCheckedChange", "Landroid/widget/CompoundButton;", "l", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "buttonView", "", "isChecked", "Landroid/widget/RadioGroup;", "group", "", "checkedId", "onChildClick", "Landroid/widget/ExpandableListView;", "Lkotlin/Function5;", "parent", "v", "groupPosition", "childPosition", "", "id", "onChronometerTick", "Landroid/widget/Chronometer;", "chronometer", "onClick", "onClose", "Landroid/widget/SearchView;", "Lkotlin/Function0;", "onCompletion", "Landroid/widget/VideoView;", "Landroid/media/MediaPlayer;", "mp", "onCreateContextMenu", "Lkotlin/Function3;", "Landroid/view/ContextMenu;", "menu", "Landroid/view/ContextMenu$ContextMenuInfo;", "menuInfo", "onDateChange", "Landroid/widget/CalendarView;", "Lkotlin/Function4;", Promotion.ACTION_VIEW, "year", "month", "dayOfMonth", "onDrag", "Landroid/view/DragEvent;", "event", "onDrawerClose", "Landroid/widget/SlidingDrawer;", "onDrawerOpen", "onDrawerScrollListener", "Lorg/jetbrains/anko/sdk15/listeners/__SlidingDrawer_OnDrawerScrollListener;", "onEditorAction", "Landroid/widget/TextView;", "actionId", "Landroid/view/KeyEvent;", "onError", "what", "extra", "onFocusChange", "hasFocus", "onGenericMotion", "Landroid/view/MotionEvent;", "onGestureListener", "Landroid/gesture/GestureOverlayView;", "Lorg/jetbrains/anko/sdk15/listeners/__GestureOverlayView_OnGestureListener;", "onGesturePerformed", "overlay", "Landroid/gesture/Gesture;", "gesture", "onGesturingListener", "Lorg/jetbrains/anko/sdk15/listeners/__GestureOverlayView_OnGesturingListener;", "onGroupClick", "onGroupCollapse", "onGroupExpand", "onHierarchyChangeListener", "Landroid/view/ViewGroup;", "Lorg/jetbrains/anko/sdk15/listeners/__ViewGroup_OnHierarchyChangeListener;", "onHover", "onInflate", "Landroid/view/ViewStub;", "stub", "inflated", "onItemClick", "Landroid/widget/AdapterView;", "Landroid/widget/Adapter;", "p0", "p1", "p2", "p3", "onItemLongClick", "onItemSelectedListener", "Lorg/jetbrains/anko/sdk15/listeners/__AdapterView_OnItemSelectedListener;", "onKey", "keyCode", "onLayoutChange", "Lkotlin/Function9;", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "onLongClick", "onPrepared", "onQueryTextFocusChange", "onQueryTextListener", "Lorg/jetbrains/anko/sdk15/listeners/__SearchView_OnQueryTextListener;", "onRatingBarChange", "Landroid/widget/RatingBar;", "ratingBar", "", "rating", "fromUser", "onScroll", "Landroid/widget/NumberPicker;", "scrollState", "onScrollListener", "Landroid/widget/AbsListView;", "Lorg/jetbrains/anko/sdk15/listeners/__AbsListView_OnScrollListener;", "onSearchClick", "onSeekBarChangeListener", "Landroid/widget/SeekBar;", "Lorg/jetbrains/anko/sdk15/listeners/__SeekBar_OnSeekBarChangeListener;", "onSuggestionListener", "Lorg/jetbrains/anko/sdk15/listeners/__SearchView_OnSuggestionListener;", "onSystemUiVisibilityChange", "visibility", "onTabChanged", "Landroid/widget/TabHost;", "", "tabId", "onTimeChanged", "Landroid/widget/TimePicker;", "hourOfDay", "minute", "onTouch", "onValueChanged", "picker", "oldVal", "newVal", "onZoomInClick", "Landroid/widget/ZoomControls;", "onZoomOutClick", "textChangedListener", "Lorg/jetbrains/anko/sdk15/listeners/__TextWatcher;", "anko-sdk15-listeners_release"}, k = 2, mv = {1, 1, 13})
@JvmName(name = "Sdk15ListenersListenersKt")
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt {
    public static final void onLayoutChange(@NotNull View view, @NotNull Function9<? super View, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, Unit> function9) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function9, "l");
        view.addOnLayoutChangeListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnLayoutChangeListener$0(function9));
    }

    public static final void onAttachStateChangeListener(@NotNull View view, @NotNull Function1<? super __View_OnAttachStateChangeListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __View_OnAttachStateChangeListener __view_onattachstatechangelistener = new __View_OnAttachStateChangeListener();
        function1.invoke(__view_onattachstatechangelistener);
        view.addOnAttachStateChangeListener(__view_onattachstatechangelistener);
    }

    public static final void textChangedListener(@NotNull TextView textView, @NotNull Function1<? super __TextWatcher, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __TextWatcher __textwatcher = new __TextWatcher();
        function1.invoke(__textwatcher);
        textView.addTextChangedListener(__textwatcher);
    }

    public static final void onGestureListener(@NotNull GestureOverlayView gestureOverlayView, @NotNull Function1<? super __GestureOverlayView_OnGestureListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(gestureOverlayView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __GestureOverlayView_OnGestureListener __gestureoverlayview_ongesturelistener = new __GestureOverlayView_OnGestureListener();
        function1.invoke(__gestureoverlayview_ongesturelistener);
        gestureOverlayView.addOnGestureListener(__gestureoverlayview_ongesturelistener);
    }

    public static final void onGesturePerformed(@NotNull GestureOverlayView gestureOverlayView, @NotNull Function2<? super GestureOverlayView, ? super Gesture, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(gestureOverlayView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        gestureOverlayView.addOnGesturePerformedListener(new Sdk15ListenersListenersKt$sam$i$android_gesture_GestureOverlayView_OnGesturePerformedListener$0(function2));
    }

    public static final void onGesturingListener(@NotNull GestureOverlayView gestureOverlayView, @NotNull Function1<? super __GestureOverlayView_OnGesturingListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(gestureOverlayView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __GestureOverlayView_OnGesturingListener __gestureoverlayview_ongesturinglistener = new __GestureOverlayView_OnGesturingListener();
        function1.invoke(__gestureoverlayview_ongesturinglistener);
        gestureOverlayView.addOnGesturingListener(__gestureoverlayview_ongesturinglistener);
    }

    public static final void onClick(@NotNull View view, @NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        view.setOnClickListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnClickListener$0(function1));
    }

    public static final void onCreateContextMenu(@NotNull View view, @NotNull Function3<? super ContextMenu, ? super View, ? super ContextMenu.ContextMenuInfo, Unit> function3) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "l");
        view.setOnCreateContextMenuListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnCreateContextMenuListener$0(function3));
    }

    public static final void onDrag(@NotNull View view, @NotNull Function2<? super View, ? super DragEvent, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        view.setOnDragListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnDragListener$0(function2));
    }

    public static final void onFocusChange(@NotNull View view, @NotNull Function2<? super View, ? super Boolean, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        view.setOnFocusChangeListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnFocusChangeListener$0(function2));
    }

    public static final void onGenericMotion(@NotNull View view, @NotNull Function2<? super View, ? super MotionEvent, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        view.setOnGenericMotionListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnGenericMotionListener$0(function2));
    }

    public static final void onHover(@NotNull View view, @NotNull Function2<? super View, ? super MotionEvent, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        view.setOnHoverListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnHoverListener$0(function2));
    }

    public static final void onKey(@NotNull View view, @NotNull Function3<? super View, ? super Integer, ? super KeyEvent, Boolean> function3) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "l");
        view.setOnKeyListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnKeyListener$0(function3));
    }

    public static final void onLongClick(@NotNull View view, @NotNull Function1<? super View, Boolean> function1) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        view.setOnLongClickListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnLongClickListener$0(function1));
    }

    public static final void onSystemUiVisibilityChange(@NotNull View view, @NotNull Function1<? super Integer, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        view.setOnSystemUiVisibilityChangeListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnSystemUiVisibilityChangeListener$0(function1));
    }

    public static final void onTouch(@NotNull View view, @NotNull Function2<? super View, ? super MotionEvent, Boolean> function2) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        view.setOnTouchListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnTouchListener$0(function2));
    }

    public static final void onHierarchyChangeListener(@NotNull ViewGroup viewGroup, @NotNull Function1<? super __ViewGroup_OnHierarchyChangeListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __ViewGroup_OnHierarchyChangeListener __viewgroup_onhierarchychangelistener = new __ViewGroup_OnHierarchyChangeListener();
        function1.invoke(__viewgroup_onhierarchychangelistener);
        viewGroup.setOnHierarchyChangeListener(__viewgroup_onhierarchychangelistener);
    }

    public static final void onInflate(@NotNull ViewStub viewStub, @NotNull Function2<? super ViewStub, ? super View, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(viewStub, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        viewStub.setOnInflateListener(new Sdk15ListenersListenersKt$sam$i$android_view_ViewStub_OnInflateListener$0(function2));
    }

    public static final void onScrollListener(@NotNull AbsListView absListView, @NotNull Function1<? super __AbsListView_OnScrollListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(absListView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __AbsListView_OnScrollListener __abslistview_onscrolllistener = new __AbsListView_OnScrollListener();
        function1.invoke(__abslistview_onscrolllistener);
        absListView.setOnScrollListener(__abslistview_onscrolllistener);
    }

    public static final void onItemClick(@NotNull AdapterView<? extends Adapter> adapterView, @NotNull Function4<? super AdapterView<?>, ? super View, ? super Integer, ? super Long, Unit> function4) {
        Intrinsics.checkParameterIsNotNull(adapterView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function4, "l");
        adapterView.setOnItemClickListener(new Sdk15ListenersListenersKt$sam$i$android_widget_AdapterView_OnItemClickListener$0(function4));
    }

    public static final void onItemLongClick(@NotNull AdapterView<? extends Adapter> adapterView, @NotNull Function4<? super AdapterView<?>, ? super View, ? super Integer, ? super Long, Boolean> function4) {
        Intrinsics.checkParameterIsNotNull(adapterView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function4, "l");
        adapterView.setOnItemLongClickListener(new Sdk15ListenersListenersKt$sam$i$android_widget_AdapterView_OnItemLongClickListener$0(function4));
    }

    public static final void onItemSelectedListener(@NotNull AdapterView<? extends Adapter> adapterView, @NotNull Function1<? super __AdapterView_OnItemSelectedListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(adapterView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __AdapterView_OnItemSelectedListener __adapterview_onitemselectedlistener = new __AdapterView_OnItemSelectedListener();
        function1.invoke(__adapterview_onitemselectedlistener);
        adapterView.setOnItemSelectedListener(__adapterview_onitemselectedlistener);
    }

    public static final void onDateChange(@NotNull CalendarView calendarView, @NotNull Function4<? super CalendarView, ? super Integer, ? super Integer, ? super Integer, Unit> function4) {
        Intrinsics.checkParameterIsNotNull(calendarView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function4, "l");
        calendarView.setOnDateChangeListener(new Sdk15ListenersListenersKt$sam$i$android_widget_CalendarView_OnDateChangeListener$0(function4));
    }

    public static final void onChronometerTick(@NotNull Chronometer chronometer, @NotNull Function1<? super Chronometer, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(chronometer, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        chronometer.setOnChronometerTickListener(new Sdk15ListenersListenersKt$sam$i$android_widget_Chronometer_OnChronometerTickListener$0(function1));
    }

    public static final void onCheckedChange(@NotNull CompoundButton compoundButton, @NotNull Function2<? super CompoundButton, ? super Boolean, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(compoundButton, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        compoundButton.setOnCheckedChangeListener(new Sdk15ListenersListenersKt$sam$i$android_widget_CompoundButton_OnCheckedChangeListener$0(function2));
    }

    public static final void onChildClick(@NotNull ExpandableListView expandableListView, @NotNull Function5<? super ExpandableListView, ? super View, ? super Integer, ? super Integer, ? super Long, Boolean> function5) {
        Intrinsics.checkParameterIsNotNull(expandableListView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function5, "l");
        expandableListView.setOnChildClickListener(new Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnChildClickListener$0(function5));
    }

    public static final void onGroupClick(@NotNull ExpandableListView expandableListView, @NotNull Function4<? super ExpandableListView, ? super View, ? super Integer, ? super Long, Boolean> function4) {
        Intrinsics.checkParameterIsNotNull(expandableListView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function4, "l");
        expandableListView.setOnGroupClickListener(new Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnGroupClickListener$0(function4));
    }

    public static final void onGroupCollapse(@NotNull ExpandableListView expandableListView, @NotNull Function1<? super Integer, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(expandableListView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        expandableListView.setOnGroupCollapseListener(new Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnGroupCollapseListener$0(function1));
    }

    public static final void onGroupExpand(@NotNull ExpandableListView expandableListView, @NotNull Function1<? super Integer, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(expandableListView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        expandableListView.setOnGroupExpandListener(new Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnGroupExpandListener$0(function1));
    }

    public static final void onScroll(@NotNull NumberPicker numberPicker, @NotNull Function2<? super NumberPicker, ? super Integer, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(numberPicker, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        numberPicker.setOnScrollListener(new Sdk15ListenersListenersKt$sam$i$android_widget_NumberPicker_OnScrollListener$0(function2));
    }

    public static final void onValueChanged(@NotNull NumberPicker numberPicker, @NotNull Function3<? super NumberPicker, ? super Integer, ? super Integer, Unit> function3) {
        Intrinsics.checkParameterIsNotNull(numberPicker, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "l");
        numberPicker.setOnValueChangedListener(new Sdk15ListenersListenersKt$sam$i$android_widget_NumberPicker_OnValueChangeListener$0(function3));
    }

    public static final void onCheckedChange(@NotNull RadioGroup radioGroup, @NotNull Function2<? super RadioGroup, ? super Integer, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(radioGroup, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        radioGroup.setOnCheckedChangeListener(new Sdk15ListenersListenersKt$sam$i$android_widget_RadioGroup_OnCheckedChangeListener$0(function2));
    }

    public static final void onRatingBarChange(@NotNull RatingBar ratingBar, @NotNull Function3<? super RatingBar, ? super Float, ? super Boolean, Unit> function3) {
        Intrinsics.checkParameterIsNotNull(ratingBar, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "l");
        ratingBar.setOnRatingBarChangeListener(new Sdk15ListenersListenersKt$sam$i$android_widget_RatingBar_OnRatingBarChangeListener$0(function3));
    }

    public static final void onClose(@NotNull SearchView searchView, @NotNull Function0<Boolean> function0) {
        Intrinsics.checkParameterIsNotNull(searchView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function0, "l");
        searchView.setOnCloseListener(new Sdk15ListenersListenersKt$sam$i$android_widget_SearchView_OnCloseListener$0(function0));
    }

    public static final void onQueryTextFocusChange(@NotNull SearchView searchView, @NotNull Function2<? super View, ? super Boolean, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(searchView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function2, "l");
        searchView.setOnQueryTextFocusChangeListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnFocusChangeListener$0(function2));
    }

    public static final void onQueryTextListener(@NotNull SearchView searchView, @NotNull Function1<? super __SearchView_OnQueryTextListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(searchView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __SearchView_OnQueryTextListener __searchview_onquerytextlistener = new __SearchView_OnQueryTextListener();
        function1.invoke(__searchview_onquerytextlistener);
        searchView.setOnQueryTextListener(__searchview_onquerytextlistener);
    }

    public static final void onSearchClick(@NotNull SearchView searchView, @NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(searchView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        searchView.setOnSearchClickListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnClickListener$0(function1));
    }

    public static final void onSuggestionListener(@NotNull SearchView searchView, @NotNull Function1<? super __SearchView_OnSuggestionListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(searchView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __SearchView_OnSuggestionListener __searchview_onsuggestionlistener = new __SearchView_OnSuggestionListener();
        function1.invoke(__searchview_onsuggestionlistener);
        searchView.setOnSuggestionListener(__searchview_onsuggestionlistener);
    }

    public static final void onSeekBarChangeListener(@NotNull SeekBar seekBar, @NotNull Function1<? super __SeekBar_OnSeekBarChangeListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(seekBar, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __SeekBar_OnSeekBarChangeListener __seekbar_onseekbarchangelistener = new __SeekBar_OnSeekBarChangeListener();
        function1.invoke(__seekbar_onseekbarchangelistener);
        seekBar.setOnSeekBarChangeListener(__seekbar_onseekbarchangelistener);
    }

    public static final void onDrawerClose(@NotNull SlidingDrawer slidingDrawer, @NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(slidingDrawer, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function0, "l");
        slidingDrawer.setOnDrawerCloseListener(new Sdk15ListenersListenersKt$sam$i$android_widget_SlidingDrawer_OnDrawerCloseListener$0(function0));
    }

    public static final void onDrawerOpen(@NotNull SlidingDrawer slidingDrawer, @NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(slidingDrawer, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function0, "l");
        slidingDrawer.setOnDrawerOpenListener(new Sdk15ListenersListenersKt$sam$i$android_widget_SlidingDrawer_OnDrawerOpenListener$0(function0));
    }

    public static final void onDrawerScrollListener(@NotNull SlidingDrawer slidingDrawer, @NotNull Function1<? super __SlidingDrawer_OnDrawerScrollListener, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(slidingDrawer, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        __SlidingDrawer_OnDrawerScrollListener __slidingdrawer_ondrawerscrolllistener = new __SlidingDrawer_OnDrawerScrollListener();
        function1.invoke(__slidingdrawer_ondrawerscrolllistener);
        slidingDrawer.setOnDrawerScrollListener(__slidingdrawer_ondrawerscrolllistener);
    }

    public static final void onTabChanged(@NotNull TabHost tabHost, @NotNull Function1<? super String, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(tabHost, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        tabHost.setOnTabChangedListener(new Sdk15ListenersListenersKt$sam$i$android_widget_TabHost_OnTabChangeListener$0(function1));
    }

    public static final void onEditorAction(@NotNull TextView textView, @NotNull Function3<? super TextView, ? super Integer, ? super KeyEvent, Boolean> function3) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "l");
        textView.setOnEditorActionListener(new Sdk15ListenersListenersKt$sam$i$android_widget_TextView_OnEditorActionListener$0(function3));
    }

    public static final void onTimeChanged(@NotNull TimePicker timePicker, @NotNull Function3<? super TimePicker, ? super Integer, ? super Integer, Unit> function3) {
        Intrinsics.checkParameterIsNotNull(timePicker, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "l");
        timePicker.setOnTimeChangedListener(new Sdk15ListenersListenersKt$sam$i$android_widget_TimePicker_OnTimeChangedListener$0(function3));
    }

    public static final void onCompletion(@NotNull VideoView videoView, @NotNull Function1<? super MediaPlayer, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(videoView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        videoView.setOnCompletionListener(new Sdk15ListenersListenersKt$sam$i$android_media_MediaPlayer_OnCompletionListener$0(function1));
    }

    public static final void onError(@NotNull VideoView videoView, @NotNull Function3<? super MediaPlayer, ? super Integer, ? super Integer, Boolean> function3) {
        Intrinsics.checkParameterIsNotNull(videoView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function3, "l");
        videoView.setOnErrorListener(new Sdk15ListenersListenersKt$sam$i$android_media_MediaPlayer_OnErrorListener$0(function3));
    }

    public static final void onPrepared(@NotNull VideoView videoView, @NotNull Function1<? super MediaPlayer, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(videoView, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        videoView.setOnPreparedListener(new Sdk15ListenersListenersKt$sam$i$android_media_MediaPlayer_OnPreparedListener$0(function1));
    }

    public static final void onZoomInClick(@NotNull ZoomControls zoomControls, @NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(zoomControls, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        zoomControls.setOnZoomInClickListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnClickListener$0(function1));
    }

    public static final void onZoomOutClick(@NotNull ZoomControls zoomControls, @NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(zoomControls, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "l");
        zoomControls.setOnZoomOutClickListener(new Sdk15ListenersListenersKt$sam$i$android_view_View_OnClickListener$0(function1));
    }
}
