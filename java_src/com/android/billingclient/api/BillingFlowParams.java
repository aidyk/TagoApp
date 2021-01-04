package com.android.billingclient.api;

import java.util.ArrayList;

public class BillingFlowParams {
    private String mAccountId;
    private boolean mNotReplaceSkusProration;
    private ArrayList<String> mOldSkus;
    private String mSku;
    private String mSkuType;
    private boolean mVrPurchaseFlow;

    public String getSku() {
        return this.mSku;
    }

    public String getSkuType() {
        return this.mSkuType;
    }

    public ArrayList<String> getOldSkus() {
        return this.mOldSkus;
    }

    public boolean getReplaceSkusProration() {
        return !this.mNotReplaceSkusProration;
    }

    public String getAccountId() {
        return this.mAccountId;
    }

    public boolean getVrPurchaseFlow() {
        return this.mVrPurchaseFlow;
    }

    public boolean hasExtraParams() {
        return this.mNotReplaceSkusProration || this.mAccountId != null || this.mVrPurchaseFlow;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public static class Builder {
        private BillingFlowParams mParams;

        private Builder() {
            this.mParams = new BillingFlowParams();
        }

        public Builder setSku(String str) {
            this.mParams.mSku = str;
            return this;
        }

        public Builder setType(String str) {
            this.mParams.mSkuType = str;
            return this;
        }

        public Builder setOldSkus(ArrayList<String> arrayList) {
            this.mParams.mOldSkus = arrayList;
            return this;
        }

        public Builder addOldSku(String str) {
            if (this.mParams.mOldSkus == null) {
                this.mParams.mOldSkus = new ArrayList();
            }
            this.mParams.mOldSkus.add(str);
            return this;
        }

        public Builder setReplaceSkusProration(boolean z) {
            this.mParams.mNotReplaceSkusProration = !z;
            return this;
        }

        public Builder setAccountId(String str) {
            this.mParams.mAccountId = str;
            return this;
        }

        public Builder setVrPurchaseFlow(boolean z) {
            this.mParams.mVrPurchaseFlow = z;
            return this;
        }

        public BillingFlowParams build() {
            return this.mParams;
        }
    }
}
