package io.fabric.sdk.android.services.common;

public abstract class Crash {
    private static final String UNKNOWN_EXCEPTION = "<unknown>";
    private final String exceptionName;
    private final String sessionId;

    public Crash(String str) {
        this(str, UNKNOWN_EXCEPTION);
    }

    public Crash(String str, String str2) {
        this.sessionId = str;
        this.exceptionName = str2;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getExceptionName() {
        return this.exceptionName;
    }

    public static class LoggedException extends Crash {
        public LoggedException(String str) {
            super(str);
        }

        public LoggedException(String str, String str2) {
            super(str, str2);
        }
    }

    public static class FatalException extends Crash {
        public FatalException(String str) {
            super(str);
        }

        public FatalException(String str, String str2) {
            super(str, str2);
        }
    }
}
