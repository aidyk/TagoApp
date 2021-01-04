package com.crashlytics.android.answers;

import com.google.android.exoplayer2.C;
import java.math.BigDecimal;
import java.util.Currency;

public class AddToCartEvent extends PredefinedEvent<AddToCartEvent> {
    static final String CURRENCY_ATTRIBUTE = "currency";
    static final String ITEM_ID_ATTRIBUTE = "itemId";
    static final String ITEM_NAME_ATTRIBUTE = "itemName";
    static final String ITEM_PRICE_ATTRIBUTE = "itemPrice";
    static final String ITEM_TYPE_ATTRIBUTE = "itemType";
    static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf((long) C.MICROS_PER_SECOND);
    static final String TYPE = "addToCart";

    /* access modifiers changed from: package-private */
    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return TYPE;
    }

    public AddToCartEvent putItemId(String str) {
        this.predefinedAttributes.put(ITEM_ID_ATTRIBUTE, str);
        return this;
    }

    public AddToCartEvent putItemName(String str) {
        this.predefinedAttributes.put(ITEM_NAME_ATTRIBUTE, str);
        return this;
    }

    public AddToCartEvent putItemType(String str) {
        this.predefinedAttributes.put(ITEM_TYPE_ATTRIBUTE, str);
        return this;
    }

    public AddToCartEvent putItemPrice(BigDecimal bigDecimal) {
        if (!this.validator.isNull(bigDecimal, ITEM_PRICE_ATTRIBUTE)) {
            this.predefinedAttributes.put(ITEM_PRICE_ATTRIBUTE, Long.valueOf(priceToMicros(bigDecimal)));
        }
        return this;
    }

    public AddToCartEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, CURRENCY_ATTRIBUTE)) {
            this.predefinedAttributes.put(CURRENCY_ATTRIBUTE, currency.getCurrencyCode());
        }
        return this;
    }

    /* access modifiers changed from: package-private */
    public long priceToMicros(BigDecimal bigDecimal) {
        return MICRO_CONSTANT.multiply(bigDecimal).longValue();
    }
}
