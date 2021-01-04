package kotlinx.coroutines.channels;

public interface Channel<E> extends SendChannel<E>, ReceiveChannel<E> {
    public static final int CONFLATED;
    public static final Factory Factory = Factory.$$INSTANCE;
    public static final int RENDEZVOUS;
    public static final int UNLIMITED;

    public static final class DefaultImpls {
    }

    public static final class Factory {
        static final /* synthetic */ Factory $$INSTANCE = new Factory();
        public static final int CONFLATED;
        public static final int RENDEZVOUS;
        public static final int UNLIMITED;

        private Factory() {
        }
    }
}
