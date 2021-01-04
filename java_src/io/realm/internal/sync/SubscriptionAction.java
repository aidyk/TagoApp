package io.realm.internal.sync;

public class SubscriptionAction {
    public static final SubscriptionAction ANONYMOUS_SUBSCRIPTION = new SubscriptionAction("");
    public static final SubscriptionAction NO_SUBSCRIPTION = new SubscriptionAction(null);
    private final String subscriptionName;

    public static SubscriptionAction create(String str) {
        return new SubscriptionAction(str);
    }

    private SubscriptionAction(String str) {
        this.subscriptionName = str;
    }

    public boolean shouldCreateSubscriptions() {
        return this.subscriptionName != null;
    }

    public String getName() {
        return this.subscriptionName;
    }
}
