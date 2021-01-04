package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* access modifiers changed from: package-private */
public class UrlRedirectCache {
    private static final String REDIRECT_CONTENT_TAG = (TAG + "_Redirect");
    static final String TAG = "UrlRedirectCache";
    private static FileLruCache urlRedirectCache;

    UrlRedirectCache() {
    }

    static synchronized FileLruCache getCache() throws IOException {
        FileLruCache fileLruCache;
        synchronized (UrlRedirectCache.class) {
            if (urlRedirectCache == null) {
                urlRedirectCache = new FileLruCache(TAG, new FileLruCache.Limits());
            }
            fileLruCache = urlRedirectCache;
        }
        return fileLruCache;
    }

    static Uri getRedirectedUri(Uri uri) {
        InputStreamReader inputStreamReader;
        Throwable th;
        if (uri == null) {
            return null;
        }
        String uri2 = uri.toString();
        try {
            FileLruCache cache = getCache();
            InputStreamReader inputStreamReader2 = null;
            boolean z = false;
            while (true) {
                try {
                    InputStream inputStream = cache.get(uri2, REDIRECT_CONTENT_TAG);
                    if (inputStream == null) {
                        break;
                    }
                    z = true;
                    inputStreamReader = new InputStreamReader(inputStream);
                    try {
                        char[] cArr = new char[128];
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            int read = inputStreamReader.read(cArr, 0, cArr.length);
                            if (read <= 0) {
                                break;
                            }
                            sb.append(cArr, 0, read);
                        }
                        Utility.closeQuietly(inputStreamReader);
                        inputStreamReader2 = inputStreamReader;
                        uri2 = sb.toString();
                    } catch (IOException unused) {
                        Utility.closeQuietly(inputStreamReader);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        Utility.closeQuietly(inputStreamReader);
                        throw th;
                    }
                } catch (IOException unused2) {
                    inputStreamReader = inputStreamReader2;
                    Utility.closeQuietly(inputStreamReader);
                    return null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader = inputStreamReader2;
                    Utility.closeQuietly(inputStreamReader);
                    throw th;
                }
            }
            if (z) {
                Uri parse = Uri.parse(uri2);
                Utility.closeQuietly(inputStreamReader2);
                return parse;
            }
            Utility.closeQuietly(inputStreamReader2);
            return null;
        } catch (IOException unused3) {
            inputStreamReader = null;
            Utility.closeQuietly(inputStreamReader);
            return null;
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader = null;
            Utility.closeQuietly(inputStreamReader);
            throw th;
        }
    }

    static void cacheUriRedirect(Uri uri, Uri uri2) {
        Throwable th;
        if (uri != null && uri2 != null) {
            OutputStream outputStream = null;
            try {
                OutputStream openPutStream = getCache().openPutStream(uri.toString(), REDIRECT_CONTENT_TAG);
                try {
                    openPutStream.write(uri2.toString().getBytes());
                    Utility.closeQuietly(openPutStream);
                } catch (IOException unused) {
                    outputStream = openPutStream;
                    Utility.closeQuietly(outputStream);
                } catch (Throwable th2) {
                    th = th2;
                    outputStream = openPutStream;
                    Utility.closeQuietly(outputStream);
                    throw th;
                }
            } catch (IOException unused2) {
                Utility.closeQuietly(outputStream);
            } catch (Throwable th3) {
                th = th3;
                Utility.closeQuietly(outputStream);
                throw th;
            }
        }
    }

    static void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e) {
            LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
            String str = TAG;
            Logger.log(loggingBehavior, 5, str, "clearCache failed " + e.getMessage());
        }
    }
}
