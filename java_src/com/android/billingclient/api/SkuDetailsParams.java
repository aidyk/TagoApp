package com.android.billingclient.api;

import java.util.List;

public class SkuDetailsParams {
    private String mSkuType;
    private List<String> mSkusList;

    public String getSkuType() {
        return this.mSkuType;
    }

    public List<String> getSkusList() {
        return this.mSkusList;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public static class Builder {
        private SkuDetailsParams mParams;

        private Builder() {
            this.mParams = new SkuDetailsParams();
        }

        public Builder setSkusList(List<String> list) {
            this.mParams.mSkusList = list;
            return this;
        }

        public Builder setType(String str) {
            this.mParams.mSkuType = str;
            return this;
        }

        public SkuDetailsParams build() {
            return this.mParams;
        }
    }
}
