package com.facebook;

import org.apache.commons.lang3.StringUtils;

public class FacebookGraphResponseException extends FacebookException {
    private final GraphResponse graphResponse;

    public FacebookGraphResponseException(GraphResponse graphResponse2, String str) {
        super(str);
        this.graphResponse = graphResponse2;
    }

    public final GraphResponse getGraphResponse() {
        return this.graphResponse;
    }

    @Override // com.facebook.FacebookException
    public final String toString() {
        FacebookRequestError error = this.graphResponse != null ? this.graphResponse.getError() : null;
        StringBuilder sb = new StringBuilder();
        sb.append("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            sb.append(message);
            sb.append(StringUtils.SPACE);
        }
        if (error != null) {
            sb.append("httpResponseCode: ");
            sb.append(error.getRequestStatusCode());
            sb.append(", facebookErrorCode: ");
            sb.append(error.getErrorCode());
            sb.append(", facebookErrorType: ");
            sb.append(error.getErrorType());
            sb.append(", message: ");
            sb.append(error.getErrorMessage());
            sb.append("}");
        }
        return sb.toString();
    }
}
