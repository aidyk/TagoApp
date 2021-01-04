package retrofit2.adapter.rxjava2;

import javax.annotation.Nullable;
import retrofit2.Response;

public final class Result<T> {
    @Nullable
    private final Throwable error;
    @Nullable
    private final Response<T> response;

    public static <T> Result<T> error(Throwable th) {
        if (th != null) {
            return new Result<>(null, th);
        }
        throw new NullPointerException("error == null");
    }

    public static <T> Result<T> response(Response<T> response2) {
        if (response2 != null) {
            return new Result<>(response2, null);
        }
        throw new NullPointerException("response == null");
    }

    private Result(@Nullable Response<T> response2, @Nullable Throwable th) {
        this.response = response2;
        this.error = th;
    }

    @Nullable
    public Response<T> response() {
        return this.response;
    }

    @Nullable
    public Throwable error() {
        return this.error;
    }

    public boolean isError() {
        return this.error != null;
    }
}
