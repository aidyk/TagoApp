package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import com.facebook.internal.NativeProtocol;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000:\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010)\n\u0000\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a0\u0010\t\u001a\u00020\n*\u00020\u00022!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\n0\fH\b\u001aE\u0010\u000f\u001a\u00020\n*\u00020\u000226\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\b¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\n0\u0010H\b\u001a\u0015\u0010\u0012\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0001H\n\u001a\r\u0010\u0013\u001a\u00020\u0006*\u00020\u0002H\b\u001a\r\u0010\u0014\u001a\u00020\u0006*\u00020\u0002H\b\u001a\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0016*\u00020\u0002H\u0002\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0017"}, d2 = {"size", "", "Landroid/view/Menu;", "getSize", "(Landroid/view/Menu;)I", "contains", "", "item", "Landroid/view/MenuItem;", "forEach", "", NativeProtocol.WEB_DIALOG_ACTION, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "forEachIndexed", "Lkotlin/Function2;", "index", "get", "isEmpty", "isNotEmpty", "iterator", "", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Menu.kt */
public final class MenuKt {
    @NotNull
    public static final MenuItem get(@NotNull Menu menu, int i) {
        MenuItem item = menu.getItem(i);
        Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
        return item;
    }

    public static final int getSize(@NotNull Menu menu) {
        return menu.size();
    }

    public static final boolean isEmpty(@NotNull Menu menu) {
        return menu.size() == 0;
    }

    public static final boolean isNotEmpty(@NotNull Menu menu) {
        return menu.size() != 0;
    }

    public static final void forEach(@NotNull Menu menu, @NotNull Function1<? super MenuItem, Unit> function1) {
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menu.getItem(i);
            Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
            function1.invoke(item);
        }
    }

    public static final void forEachIndexed(@NotNull Menu menu, @NotNull Function2<? super Integer, ? super MenuItem, Unit> function2) {
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            Integer valueOf = Integer.valueOf(i);
            MenuItem item = menu.getItem(i);
            Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
            function2.invoke(valueOf, item);
        }
    }

    @NotNull
    public static final Iterator<MenuItem> iterator(@NotNull Menu menu) {
        return new MenuKt$iterator$1(menu);
    }

    public static final boolean contains(@NotNull Menu menu, @NotNull MenuItem menuItem) {
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            if (Intrinsics.areEqual(menu.getItem(i), menuItem)) {
                return true;
            }
        }
        return false;
    }
}
