package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class SkuDetails {
    private final String mOriginalJson;
    private final JSONObject mParsedJson = new JSONObject(this.mOriginalJson);

    public SkuDetails(String str) throws JSONException {
        this.mOriginalJson = str;
    }

    public String getSku() {
        return this.mParsedJson.optString("productId");
    }

    public String getType() {
        return this.mParsedJson.optString("type");
    }

    public String getPrice() {
        return this.mParsedJson.optString("price");
    }

    public long getPriceAmountMicros() {
        return this.mParsedJson.optLong("price_amount_micros");
    }

    public String getPriceCurrencyCode() {
        return this.mParsedJson.optString("price_currency_code");
    }

    public String getTitle() {
        return this.mParsedJson.optString("title");
    }

    public String getDescription() {
        return this.mParsedJson.optString("description");
    }

    public String getSubscriptionPeriod() {
        return this.mParsedJson.optString("subscriptionPeriod");
    }

    public String getFreeTrialPeriod() {
        return this.mParsedJson.optString("freeTrialPeriod");
    }

    public String getIntroductoryPrice() {
        return this.mParsedJson.optString("introductoryPrice");
    }

    public String getIntroductoryPriceAmountMicros() {
        return this.mParsedJson.optString("introductoryPriceAmountMicros");
    }

    public String getIntroductoryPricePeriod() {
        return this.mParsedJson.optString("introductoryPricePeriod");
    }

    public String getIntroductoryPriceCycles() {
        return this.mParsedJson.optString("introductoryPriceCycles");
    }

    public String toString() {
        return "SkuDetails: " + this.mOriginalJson;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return TextUtils.equals(this.mOriginalJson, ((SkuDetails) obj).mOriginalJson);
    }

    public int hashCode() {
        return this.mOriginalJson.hashCode();
    }

    /* access modifiers changed from: package-private */
    public static class SkuDetailsResult {
        private int mResponseCode;
        private List<SkuDetails> mSkuDetailsList;

        SkuDetailsResult(int i, List<SkuDetails> list) {
            this.mSkuDetailsList = list;
            this.mResponseCode = i;
        }

        /* access modifiers changed from: package-private */
        public List<SkuDetails> getSkuDetailsList() {
            return this.mSkuDetailsList;
        }

        /* access modifiers changed from: package-private */
        public int getResponseCode() {
            return this.mResponseCode;
        }
    }
}
