package com.crashlytics.android.answers;

import android.os.Bundle;
import com.crashlytics.android.answers.SessionEvent;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.widget.ShareDialog;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class FirebaseAnalyticsEventMapper {
    private static final Set<String> EVENT_NAMES = new HashSet(Arrays.asList("app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "screen_view", "firebase_extra_parameter"));
    private static final String FIREBASE_LEVEL_NAME = "level_name";
    private static final String FIREBASE_METHOD = "method";
    private static final String FIREBASE_RATING = "rating";
    private static final String FIREBASE_SUCCESS = "success";

    public FirebaseAnalyticsEvent mapEvent(SessionEvent sessionEvent) {
        Bundle bundle;
        String str;
        boolean z = true;
        boolean z2 = SessionEvent.Type.CUSTOM.equals(sessionEvent.type) && sessionEvent.customType != null;
        boolean z3 = SessionEvent.Type.PREDEFINED.equals(sessionEvent.type) && sessionEvent.predefinedType != null;
        if (!z2 && !z3) {
            return null;
        }
        if (z3) {
            bundle = mapPredefinedEvent(sessionEvent);
        } else {
            bundle = new Bundle();
            if (sessionEvent.customAttributes != null) {
                mapCustomEventAttributes(bundle, sessionEvent.customAttributes);
            }
        }
        if (z3) {
            String str2 = (String) sessionEvent.predefinedAttributes.get("success");
            if (str2 == null || Boolean.parseBoolean(str2)) {
                z = false;
            }
            str = mapPredefinedEventName(sessionEvent.predefinedType, z);
        } else {
            str = mapCustomEventName(sessionEvent.customType);
        }
        Fabric.getLogger().d(Answers.TAG, "Logging event into firebase...");
        return new FirebaseAnalyticsEvent(str, bundle);
    }

    private String mapCustomEventName(String str) {
        if (str == null || str.length() == 0) {
            return "fabric_unnamed_event";
        }
        if (EVENT_NAMES.contains(str)) {
            return "fabric_" + str;
        }
        String replaceAll = str.replaceAll("[^\\p{Alnum}_]+", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        if (replaceAll.startsWith("ga_") || replaceAll.startsWith("google_") || replaceAll.startsWith("firebase_") || !Character.isLetter(replaceAll.charAt(0))) {
            replaceAll = "fabric_" + replaceAll;
        }
        return replaceAll.length() > 40 ? replaceAll.substring(0, 40) : replaceAll;
    }

    private String mapAttribute(String str) {
        if (str == null || str.length() == 0) {
            return "fabric_unnamed_parameter";
        }
        String replaceAll = str.replaceAll("[^\\p{Alnum}_]+", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        if (replaceAll.startsWith("ga_") || replaceAll.startsWith("google_") || replaceAll.startsWith("firebase_") || !Character.isLetter(replaceAll.charAt(0))) {
            replaceAll = "fabric_" + replaceAll;
        }
        return replaceAll.length() > 40 ? replaceAll.substring(0, 40) : replaceAll;
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0055, code lost:
        if (r6.equals(com.google.android.gms.analytics.ecommerce.ProductAction.ACTION_PURCHASE) != false) goto L_0x00cd;
     */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003d A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0040 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0043 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String mapPredefinedEventName(java.lang.String r6, boolean r7) {
        /*
        // Method dump skipped, instructions count: 338
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapPredefinedEventName(java.lang.String, boolean):java.lang.String");
    }

    private Bundle mapPredefinedEvent(SessionEvent sessionEvent) {
        Bundle bundle = new Bundle();
        if (ProductAction.ACTION_PURCHASE.equals(sessionEvent.predefinedType)) {
            putString(bundle, "item_id", (String) sessionEvent.predefinedAttributes.get("itemId"));
            putString(bundle, "item_name", (String) sessionEvent.predefinedAttributes.get("itemName"));
            putString(bundle, "item_category", (String) sessionEvent.predefinedAttributes.get("itemType"));
            putDouble(bundle, "value", mapPriceValue(sessionEvent.predefinedAttributes.get("itemPrice")));
            putString(bundle, "currency", (String) sessionEvent.predefinedAttributes.get("currency"));
        } else if ("addToCart".equals(sessionEvent.predefinedType)) {
            putString(bundle, "item_id", (String) sessionEvent.predefinedAttributes.get("itemId"));
            putString(bundle, "item_name", (String) sessionEvent.predefinedAttributes.get("itemName"));
            putString(bundle, "item_category", (String) sessionEvent.predefinedAttributes.get("itemType"));
            putDouble(bundle, "price", mapPriceValue(sessionEvent.predefinedAttributes.get("itemPrice")));
            putDouble(bundle, "value", mapPriceValue(sessionEvent.predefinedAttributes.get("itemPrice")));
            putString(bundle, "currency", (String) sessionEvent.predefinedAttributes.get("currency"));
            bundle.putLong("quantity", 1);
        } else if ("startCheckout".equals(sessionEvent.predefinedType)) {
            putLong(bundle, "quantity", Long.valueOf((long) ((Integer) sessionEvent.predefinedAttributes.get("itemCount")).intValue()));
            putDouble(bundle, "value", mapPriceValue(sessionEvent.predefinedAttributes.get("totalPrice")));
            putString(bundle, "currency", (String) sessionEvent.predefinedAttributes.get("currency"));
        } else if ("contentView".equals(sessionEvent.predefinedType)) {
            putString(bundle, "content_type", (String) sessionEvent.predefinedAttributes.get("contentType"));
            putString(bundle, "item_id", (String) sessionEvent.predefinedAttributes.get("contentId"));
            putString(bundle, "item_name", (String) sessionEvent.predefinedAttributes.get("contentName"));
        } else if ("search".equals(sessionEvent.predefinedType)) {
            putString(bundle, "search_term", (String) sessionEvent.predefinedAttributes.get(SearchIntents.EXTRA_QUERY));
        } else if (ShareDialog.WEB_SHARE_DIALOG.equals(sessionEvent.predefinedType)) {
            putString(bundle, FIREBASE_METHOD, (String) sessionEvent.predefinedAttributes.get(FIREBASE_METHOD));
            putString(bundle, "content_type", (String) sessionEvent.predefinedAttributes.get("contentType"));
            putString(bundle, "item_id", (String) sessionEvent.predefinedAttributes.get("contentId"));
            putString(bundle, "item_name", (String) sessionEvent.predefinedAttributes.get("contentName"));
        } else if (FIREBASE_RATING.equals(sessionEvent.predefinedType)) {
            putString(bundle, FIREBASE_RATING, String.valueOf(sessionEvent.predefinedAttributes.get(FIREBASE_RATING)));
            putString(bundle, "content_type", (String) sessionEvent.predefinedAttributes.get("contentType"));
            putString(bundle, "item_id", (String) sessionEvent.predefinedAttributes.get("contentId"));
            putString(bundle, "item_name", (String) sessionEvent.predefinedAttributes.get("contentName"));
        } else if ("signUp".equals(sessionEvent.predefinedType)) {
            putString(bundle, FIREBASE_METHOD, (String) sessionEvent.predefinedAttributes.get(FIREBASE_METHOD));
        } else if ("login".equals(sessionEvent.predefinedType)) {
            putString(bundle, FIREBASE_METHOD, (String) sessionEvent.predefinedAttributes.get(FIREBASE_METHOD));
        } else if ("invite".equals(sessionEvent.predefinedType)) {
            putString(bundle, FIREBASE_METHOD, (String) sessionEvent.predefinedAttributes.get(FIREBASE_METHOD));
        } else if ("levelStart".equals(sessionEvent.predefinedType)) {
            putString(bundle, FIREBASE_LEVEL_NAME, (String) sessionEvent.predefinedAttributes.get("levelName"));
        } else if ("levelEnd".equals(sessionEvent.predefinedType)) {
            putDouble(bundle, "score", mapDouble(sessionEvent.predefinedAttributes.get("score")));
            putString(bundle, FIREBASE_LEVEL_NAME, (String) sessionEvent.predefinedAttributes.get("levelName"));
            putInt(bundle, "success", mapBooleanValue((String) sessionEvent.predefinedAttributes.get("success")));
        }
        mapCustomEventAttributes(bundle, sessionEvent.customAttributes);
        return bundle;
    }

    private void putLong(Bundle bundle, String str, Long l) {
        if (l != null) {
            bundle.putLong(str, l.longValue());
        }
    }

    private void putInt(Bundle bundle, String str, Integer num) {
        if (num != null) {
            bundle.putInt(str, num.intValue());
        }
    }

    private void putString(Bundle bundle, String str, String str2) {
        if (str2 != null) {
            bundle.putString(str, str2);
        }
    }

    private void putDouble(Bundle bundle, String str, Double d) {
        Double mapDouble = mapDouble(d);
        if (mapDouble != null) {
            bundle.putDouble(str, mapDouble.doubleValue());
        }
    }

    private Double mapDouble(Object obj) {
        String valueOf = String.valueOf(obj);
        if (valueOf == null) {
            return null;
        }
        return Double.valueOf(valueOf);
    }

    private Integer mapBooleanValue(String str) {
        if (str == null) {
            return null;
        }
        return Integer.valueOf(str.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) ? 1 : 0);
    }

    private Double mapPriceValue(Object obj) {
        Long l = (Long) obj;
        if (l == null) {
            return null;
        }
        return Double.valueOf(new BigDecimal(l.longValue()).divide(AddToCartEvent.MICRO_CONSTANT).doubleValue());
    }

    private void mapCustomEventAttributes(Bundle bundle, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            String mapAttribute = mapAttribute(entry.getKey());
            if (value instanceof String) {
                bundle.putString(mapAttribute, entry.getValue().toString());
            } else if (value instanceof Double) {
                bundle.putDouble(mapAttribute, ((Double) entry.getValue()).doubleValue());
            } else if (value instanceof Long) {
                bundle.putLong(mapAttribute, ((Long) entry.getValue()).longValue());
            } else if (value instanceof Integer) {
                bundle.putInt(mapAttribute, ((Integer) entry.getValue()).intValue());
            }
        }
    }
}
