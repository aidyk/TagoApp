package com.facebook.appevents.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.FacebookSdk;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class InAppPurchaseEventManager {
    private static final String AS_INTERFACE = "asInterface";
    private static final int CACHE_CLEAR_TIME_LIMIT_SEC = 604800;
    private static final String DETAILS_LIST = "DETAILS_LIST";
    private static final String GET_PURCHASES = "getPurchases";
    private static final String GET_PURCHASE_HISTORY = "getPurchaseHistory";
    private static final String GET_SKU_DETAILS = "getSkuDetails";
    private static final String INAPP = "inapp";
    private static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    private static final String INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    private static final String IN_APP_BILLING_SERVICE = "com.android.vending.billing.IInAppBillingService";
    private static final String IN_APP_BILLING_SERVICE_STUB = "com.android.vending.billing.IInAppBillingService$Stub";
    private static final String IS_BILLING_SUPPORTED = "isBillingSupported";
    private static final String ITEM_ID_LIST = "ITEM_ID_LIST";
    private static final String LAST_CLEARED_TIME = "LAST_CLEARED_TIME";
    private static final String LAST_LOGGED_TIME_SEC = "LAST_LOGGED_TIME_SEC";
    private static final int MAX_QUERY_PURCHASE_NUM = 30;
    private static final String PACKAGE_NAME = FacebookSdk.getApplicationContext().getPackageName();
    private static final int PURCHASE_EXPIRE_TIME_SEC = 43200;
    private static final String PURCHASE_INAPP_STORE = "com.facebook.internal.PURCHASE";
    private static final int PURCHASE_STOP_QUERY_TIME_SEC = 1200;
    private static final String PURCHASE_SUBS_STORE = "com.facebook.internal.PURCHASE_SUBS";
    private static final String RESPONSE_CODE = "RESPONSE_CODE";
    private static final String SKU_DETAILS_STORE = "com.facebook.internal.SKU_DETAILS";
    private static final int SKU_DETAIL_EXPIRE_TIME_SEC = 43200;
    private static final String SUBSCRIPTION = "subs";
    private static final long SUBSCRIPTION_HARTBEAT_INTERVAL = 86400;
    private static final String TAG = InAppPurchaseEventManager.class.getCanonicalName();
    private static final HashMap<String, Class<?>> classMap = new HashMap<>();
    private static final HashMap<String, Method> methodMap = new HashMap<>();
    private static final SharedPreferences purchaseInappSharedPrefs = FacebookSdk.getApplicationContext().getSharedPreferences(PURCHASE_INAPP_STORE, 0);
    private static final SharedPreferences purchaseSubsSharedPrefs = FacebookSdk.getApplicationContext().getSharedPreferences(PURCHASE_SUBS_STORE, 0);
    private static final SharedPreferences skuDetailSharedPrefs = FacebookSdk.getApplicationContext().getSharedPreferences(SKU_DETAILS_STORE, 0);

    InAppPurchaseEventManager() {
    }

    @Nullable
    public static Object asInterface(Context context, IBinder iBinder) {
        return invokeMethod(context, IN_APP_BILLING_SERVICE_STUB, AS_INTERFACE, null, new Object[]{iBinder});
    }

    public static Map<String, String> getSkuDetails(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        Map<String, String> readSkuDetailsFromCache = readSkuDetailsFromCache(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            if (!readSkuDetailsFromCache.containsKey(next)) {
                arrayList2.add(next);
            }
        }
        readSkuDetailsFromCache.putAll(getSkuDetailsFromGoogle(context, arrayList2, obj, z));
        return readSkuDetailsFromCache;
    }

    private static Map<String, String> getSkuDetailsFromGoogle(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        HashMap hashMap = new HashMap();
        if (obj == null || arrayList.isEmpty()) {
            return hashMap;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(ITEM_ID_LIST, arrayList);
        Object[] objArr = new Object[4];
        objArr[0] = 3;
        objArr[1] = PACKAGE_NAME;
        objArr[2] = z ? "subs" : "inapp";
        objArr[3] = bundle;
        Object invokeMethod = invokeMethod(context, IN_APP_BILLING_SERVICE, GET_SKU_DETAILS, obj, objArr);
        if (invokeMethod != null) {
            Bundle bundle2 = (Bundle) invokeMethod;
            if (bundle2.getInt("RESPONSE_CODE") == 0) {
                ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                    for (int i = 0; i < arrayList.size(); i++) {
                        hashMap.put(arrayList.get(i), stringArrayList.get(i));
                    }
                }
                writeSkuDetailsToCache(hashMap);
            }
        }
        return hashMap;
    }

    private static Map<String, String> readSkuDetailsFromCache(ArrayList<String> arrayList) {
        HashMap hashMap = new HashMap();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            String string = skuDetailSharedPrefs.getString(next, null);
            if (string != null) {
                String[] split = string.split(";", 2);
                if (currentTimeMillis - Long.parseLong(split[0]) < 43200) {
                    hashMap.put(next, split[1]);
                }
            }
        }
        return hashMap;
    }

    private static void writeSkuDetailsToCache(Map<String, String> map) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        SharedPreferences.Editor edit = skuDetailSharedPrefs.edit();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            edit.putString(entry.getKey(), currentTimeMillis + ";" + entry.getValue());
        }
        edit.apply();
    }

    private static Boolean isBillingSupported(Context context, Object obj, String str) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        Object invokeMethod = invokeMethod(context, IN_APP_BILLING_SERVICE, IS_BILLING_SUPPORTED, obj, new Object[]{3, PACKAGE_NAME, str});
        if (invokeMethod != null && ((Integer) invokeMethod).intValue() == 0) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public static ArrayList<String> getPurchasesInapp(Context context, Object obj) {
        return filterPurchasesInapp(getPurchases(context, obj, "inapp"));
    }

    public static ArrayList<String> getPurchasesSubsExpire(Context context, Object obj) {
        ArrayList<String> arrayList = new ArrayList<>();
        Map<String, ?> all = purchaseSubsSharedPrefs.getAll();
        if (all.isEmpty()) {
            return arrayList;
        }
        ArrayList<String> purchases = getPurchases(context, obj, "subs");
        HashSet hashSet = new HashSet();
        Iterator<String> it2 = purchases.iterator();
        while (it2.hasNext()) {
            try {
                hashSet.add(new JSONObject(it2.next()).getString("productId"));
            } catch (JSONException e) {
                Log.e(TAG, "Error parsing purchase json", e);
            }
        }
        HashSet<String> hashSet2 = new HashSet();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            if (!hashSet.contains(key)) {
                hashSet2.add(key);
            }
        }
        SharedPreferences.Editor edit = purchaseSubsSharedPrefs.edit();
        for (String str : hashSet2) {
            String string = purchaseSubsSharedPrefs.getString(str, "");
            edit.remove(str);
            if (!string.isEmpty()) {
                arrayList.add(purchaseSubsSharedPrefs.getString(str, ""));
            }
        }
        edit.apply();
        return arrayList;
    }

    public static Map<String, SubscriptionType> getPurchasesSubs(Context context, Object obj) {
        HashMap hashMap = new HashMap();
        Iterator<String> it2 = getPurchases(context, obj, "subs").iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            SubscriptionType subsType = getSubsType(next);
            if (!(subsType == SubscriptionType.DUPLICATED || subsType == SubscriptionType.UNKNOWN)) {
                hashMap.put(next, subsType);
            }
        }
        return hashMap;
    }

    private static SubscriptionType getSubsType(String str) {
        SubscriptionType subscriptionType = null;
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("productId");
            String string2 = purchaseSubsSharedPrefs.getString(string, "");
            JSONObject jSONObject2 = string2.isEmpty() ? new JSONObject() : new JSONObject(string2);
            if (!jSONObject2.optString("purchaseToken").equals(jSONObject.get("purchaseToken"))) {
                subscriptionType = currentTimeMillis - (jSONObject.getLong("purchaseTime") / 1000) < 43200 ? SubscriptionType.NEW : SubscriptionType.HEARTBEAT;
            }
            if (subscriptionType == null && !string2.isEmpty()) {
                boolean z = jSONObject2.getBoolean("autoRenewing");
                boolean z2 = jSONObject.getBoolean("autoRenewing");
                if (!z2 && z) {
                    subscriptionType = SubscriptionType.CANCEL;
                } else if (!z && z2) {
                    subscriptionType = SubscriptionType.RESTORE;
                }
            }
            if (subscriptionType == null && !string2.isEmpty()) {
                if (currentTimeMillis - jSONObject2.getLong(LAST_LOGGED_TIME_SEC) > SUBSCRIPTION_HARTBEAT_INTERVAL) {
                    subscriptionType = SubscriptionType.HEARTBEAT;
                } else {
                    subscriptionType = SubscriptionType.DUPLICATED;
                }
            }
            if (subscriptionType != SubscriptionType.DUPLICATED) {
                jSONObject.put(LAST_LOGGED_TIME_SEC, currentTimeMillis);
                purchaseSubsSharedPrefs.edit().putString(string, jSONObject.toString()).apply();
            }
            return subscriptionType;
        } catch (JSONException e) {
            Log.e(TAG, "parsing purchase failure: ", e);
            return SubscriptionType.UNKNOWN;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x005c A[EDGE_INSN: B:19:0x005c->B:17:0x005c ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.util.ArrayList<java.lang.String> getPurchases(android.content.Context r9, java.lang.Object r10, java.lang.String r11) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r10 != 0) goto L_0x0008
            return r0
        L_0x0008:
            java.lang.Boolean r1 = isBillingSupported(r9, r10, r11)
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x005c
            r1 = 0
            r2 = 0
            r3 = r2
            r4 = 0
        L_0x0016:
            r5 = 4
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r6 = 3
            java.lang.Integer r7 = java.lang.Integer.valueOf(r6)
            r5[r1] = r7
            r7 = 1
            java.lang.String r8 = com.facebook.appevents.internal.InAppPurchaseEventManager.PACKAGE_NAME
            r5[r7] = r8
            r7 = 2
            r5[r7] = r11
            r5[r6] = r3
            java.lang.String r3 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r6 = "getPurchases"
            java.lang.Object r3 = invokeMethod(r9, r3, r6, r10, r5)
            if (r3 == 0) goto L_0x0055
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.lang.String r5 = "RESPONSE_CODE"
            int r5 = r3.getInt(r5)
            if (r5 != 0) goto L_0x0055
            java.lang.String r5 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r5 = r3.getStringArrayList(r5)
            if (r5 == 0) goto L_0x005c
            int r6 = r5.size()
            int r4 = r4 + r6
            r0.addAll(r5)
            java.lang.String r5 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r3 = r3.getString(r5)
            goto L_0x0056
        L_0x0055:
            r3 = r2
        L_0x0056:
            r5 = 30
            if (r4 >= r5) goto L_0x005c
            if (r3 != 0) goto L_0x0016
        L_0x005c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.internal.InAppPurchaseEventManager.getPurchases(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    public static ArrayList<String> getPurchaseHistoryInapp(Context context, Object obj) {
        Class<?> cls;
        ArrayList<String> arrayList = new ArrayList<>();
        if (obj == null || (cls = getClass(context, IN_APP_BILLING_SERVICE)) == null || getMethod(cls, GET_PURCHASE_HISTORY) == null) {
            return arrayList;
        }
        return filterPurchasesInapp(getPurchaseHistory(context, obj, "inapp"));
    }

    private static ArrayList<String> getPurchaseHistory(Context context, Object obj, String str) {
        boolean z;
        ArrayList<String> arrayList = new ArrayList<>();
        if (isBillingSupported(context, obj, str).booleanValue()) {
            char c = 0;
            Boolean bool = false;
            String str2 = null;
            int i = 0;
            while (true) {
                Object[] objArr = new Object[5];
                objArr[c] = 6;
                objArr[1] = PACKAGE_NAME;
                objArr[2] = str;
                objArr[3] = str2;
                objArr[4] = new Bundle();
                Object invokeMethod = invokeMethod(context, IN_APP_BILLING_SERVICE, GET_PURCHASE_HISTORY, obj, objArr);
                if (invokeMethod != null) {
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    Bundle bundle = (Bundle) invokeMethod;
                    if (bundle.getInt("RESPONSE_CODE") == 0) {
                        Iterator<String> it2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST").iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z = bool;
                                break;
                            }
                            String next = it2.next();
                            try {
                                if (currentTimeMillis - (new JSONObject(next).getLong("purchaseTime") / 1000) > 1200) {
                                    z = true;
                                    break;
                                }
                                arrayList.add(next);
                                i++;
                            } catch (JSONException e) {
                                Log.e(TAG, "parsing purchase failure: ", e);
                            }
                        }
                        bool = z;
                        str2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                        if (i >= 30 || str2 == null || bool.booleanValue()) {
                            break;
                        }
                        c = 0;
                    }
                }
                str2 = null;
                c = 0;
            }
        }
        return arrayList;
    }

    private static ArrayList<String> filterPurchasesInapp(ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        SharedPreferences.Editor edit = purchaseInappSharedPrefs.edit();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            try {
                JSONObject jSONObject = new JSONObject(next);
                String string = jSONObject.getString("productId");
                long j = jSONObject.getLong("purchaseTime");
                String string2 = jSONObject.getString("purchaseToken");
                if (currentTimeMillis - (j / 1000) <= 43200) {
                    if (!purchaseInappSharedPrefs.getString(string, "").equals(string2)) {
                        edit.putString(string, string2);
                        arrayList2.add(next);
                    }
                }
            } catch (JSONException e) {
                Log.e(TAG, "parsing purchase failure: ", e);
            }
        }
        edit.apply();
        return arrayList2;
    }

    @Nullable
    private static Method getMethod(Class<?> cls, String str) {
        NoSuchMethodException e;
        Method method = methodMap.get(str);
        if (method != null) {
            return method;
        }
        Class<?>[] clsArr = null;
        char c = 65535;
        try {
            switch (str.hashCode()) {
                case -1801122596:
                    if (str.equals(GET_PURCHASES)) {
                        c = 3;
                        break;
                    }
                    break;
                case -1450694211:
                    if (str.equals(IS_BILLING_SUPPORTED)) {
                        c = 2;
                        break;
                    }
                    break;
                case -1123215065:
                    if (str.equals(AS_INTERFACE)) {
                        c = 0;
                        break;
                    }
                    break;
                case -594356707:
                    if (str.equals(GET_PURCHASE_HISTORY)) {
                        c = 4;
                        break;
                    }
                    break;
                case -573310373:
                    if (str.equals(GET_SKU_DETAILS)) {
                        c = 1;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    clsArr = new Class[]{IBinder.class};
                    break;
                case 1:
                    clsArr = new Class[]{Integer.TYPE, String.class, String.class, Bundle.class};
                    break;
                case 2:
                    clsArr = new Class[]{Integer.TYPE, String.class, String.class};
                    break;
                case 3:
                    clsArr = new Class[]{Integer.TYPE, String.class, String.class, String.class};
                    break;
                case 4:
                    clsArr = new Class[]{Integer.TYPE, String.class, String.class, String.class, Bundle.class};
                    break;
            }
            Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
            try {
                methodMap.put(str, declaredMethod);
                return declaredMethod;
            } catch (NoSuchMethodException e2) {
                e = e2;
                method = declaredMethod;
                String str2 = TAG;
                Log.e(str2, cls.getName() + "." + str + " method not found", e);
                return method;
            }
        } catch (NoSuchMethodException e3) {
            e = e3;
            String str22 = TAG;
            Log.e(str22, cls.getName() + "." + str + " method not found", e);
            return method;
        }
    }

    @Nullable
    private static Class<?> getClass(Context context, String str) {
        ClassNotFoundException e;
        Class<?> cls = classMap.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            Class<?> loadClass = context.getClassLoader().loadClass(str);
            try {
                classMap.put(str, loadClass);
                return loadClass;
            } catch (ClassNotFoundException e2) {
                cls = loadClass;
                e = e2;
            }
        } catch (ClassNotFoundException e3) {
            e = e3;
            String str2 = TAG;
            Log.e(str2, str + " is not available, please add " + str + " to the project.", e);
            return cls;
        }
    }

    @Nullable
    private static Object invokeMethod(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method method;
        Class<?> cls = getClass(context, str);
        if (cls == null || (method = getMethod(cls, str2)) == null) {
            return null;
        }
        if (obj != null) {
            obj = cls.cast(obj);
        }
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            String str3 = TAG;
            Log.e(str3, "Illegal access to method " + cls.getName() + "." + method.getName(), e);
            return null;
        } catch (InvocationTargetException e2) {
            String str4 = TAG;
            Log.e(str4, "Invocation target exception in " + cls.getName() + "." + method.getName(), e2);
            return null;
        }
    }

    public static void clearSkuDetailsCache() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long j = skuDetailSharedPrefs.getLong(LAST_CLEARED_TIME, 0);
        if (j == 0) {
            skuDetailSharedPrefs.edit().putLong(LAST_CLEARED_TIME, currentTimeMillis).apply();
        } else if (currentTimeMillis - j > 604800) {
            skuDetailSharedPrefs.edit().clear().putLong(LAST_CLEARED_TIME, currentTimeMillis).apply();
        }
    }
}
