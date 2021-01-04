package com.liber8tech.tago.analytics.google;

import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;

public final class GoogleAnalyticsApiKt {
    public static final Product toGoogle(com.liber8tech.tago.analytics.Product product) {
        Product product2 = new Product();
        if (product.getBrand() != null) {
            product2.setBrand(product.getBrand());
        }
        if (product.getCategory() != null) {
            product2.setCategory(product.getCategory());
        }
        if (product.getCouponCode() != null) {
            product2.setCouponCode(product.getCouponCode());
        }
        if (product.getCustomDimension() != null) {
            product2.setCustomDimension(product.getCustomDimension().getIndex(), product.getCustomDimension().getValue());
        }
        if (product.getCustomMetric() != null) {
            product2.setCustomMetric(product.getCustomMetric().getIndex(), product.getCustomMetric().getValue());
        }
        if (product.getId() != null) {
            product2.setId(product.getId());
        }
        if (product.getName() != null) {
            product2.setName(product.getName());
        }
        if (product.getPosition() != null) {
            product2.setPosition(product.getPosition().intValue());
        }
        if (product.getQuantity() != null) {
            product2.setQuantity(product.getQuantity().intValue());
        }
        if (product.getVariant() != null) {
            product2.setVariant(product.getVariant());
        }
        return product2;
    }

    public static final ProductAction toGoogle(com.liber8tech.tago.analytics.ProductAction productAction) {
        ProductAction productAction2 = new ProductAction(productAction.getAction());
        if (productAction.getCheckoutOptions() != null) {
            productAction2.setCheckoutOptions(productAction.getCheckoutOptions());
        }
        if (productAction.getCheckoutStep() != null) {
            productAction2.setCheckoutStep(productAction.getCheckoutStep().intValue());
        }
        if (productAction.getProductActionList() != null) {
            productAction2.setProductActionList(productAction.getProductActionList());
        }
        if (productAction.getProductListSource() != null) {
            productAction2.setProductListSource(productAction.getProductListSource());
        }
        if (productAction.getTransactionAffiliation() != null) {
            productAction2.setTransactionAffiliation(productAction.getTransactionAffiliation());
        }
        if (productAction.getTransactionCouponCode() != null) {
            productAction2.setTransactionCouponCode(productAction.getTransactionCouponCode());
        }
        if (productAction.getTransactionId() != null) {
            productAction2.setTransactionId(productAction.getTransactionId());
        }
        if (productAction.getTransactionRevenue() != null) {
            productAction2.setTransactionRevenue(productAction.getTransactionRevenue().doubleValue());
        }
        if (productAction.getTransactionShipping() != null) {
            productAction2.setTransactionShipping(productAction.getTransactionShipping().doubleValue());
        }
        if (productAction.getTransactionTax() != null) {
            productAction2.setTransactionTax(productAction.getTransactionTax().doubleValue());
        }
        return productAction2;
    }
}
