package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;

/* access modifiers changed from: package-private */
public class ResourceRequestHandler extends RequestHandler {
    private final Context context;

    ResourceRequestHandler(Context context2) {
        this.context = context2;
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        if (request.resourceId != 0) {
            return true;
        }
        return "android.resource".equals(request.uri.getScheme());
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        Resources resources = Utils.getResources(this.context, request);
        return new RequestHandler.Result(decodeResource(resources, Utils.getResourceId(resources, request), request), Picasso.LoadedFrom.DISK);
    }

    private static Bitmap decodeResource(Resources resources, int i, Request request) {
        BitmapFactory.Options createBitmapOptions = createBitmapOptions(request);
        if (requiresInSampleSize(createBitmapOptions)) {
            BitmapFactory.decodeResource(resources, i, createBitmapOptions);
            calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions, request);
        }
        return BitmapFactory.decodeResource(resources, i, createBitmapOptions);
    }
}
