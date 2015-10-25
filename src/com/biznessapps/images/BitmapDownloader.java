// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.HttpUtils;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageCache;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.biznessapps.images:
//            BitmapWrapper

public class BitmapDownloader
{
    private class BitmapDownloaderTask extends AsyncTask
    {

        private BitmapLoadCallback callback;
        private int sampleSize;
        final BitmapDownloader this$0;
        private String url;
        private boolean useImageReflection;
        private UsingParams usingParams;
        private final WeakReference viewReference;

        protected transient Bitmap doInBackground(String as[])
        {
            activeTasks.add(this);
            if (usingParams.getReqHeight() > 0 && usingParams.getReqWidth() > 0)
            {
                as = BitmapDownloader.decodeSampledBitmap(usingParams.getUrl(), usingParams.getReqWidth(), usingParams.getReqHeight());
            } else
            {
                as = downloadBitmap(url, sampleSize);
            }
            if (useImageReflection && as != null)
            {
                as = createReflectedImages(as);
            }
            activeTasks.remove(this);
            return as;
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        public String getUrl()
        {
            return url;
        }

        protected void onPostExecute(Bitmap bitmap)
        {
            if (isCancelled())
            {
                bitmap = null;
            }
            if (bitmap != null)
            {
                BitmapWrapper bitmapwrapper = new BitmapWrapper(bitmap, url);
                BitmapDownloader.getBitmapCacher().addBitmapToCache(url, bitmap);
                if (viewReference != null)
                {
                    bitmap = (View)viewReference.get();
                    BitmapDownloaderTask bitmapdownloadertask = getBitmapDownloaderTask(bitmap);
                    if (bitmap != null)
                    {
                        bitmap.setTag(null);
                    }
                    if (this == bitmapdownloadertask && callback != null)
                    {
                        callback.onPostImageLoading(bitmapwrapper, bitmap);
                    }
                }
            }
            launchNewTaskIfAllowed();
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Bitmap)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
            if (callback != null)
            {
                callback.onPreImageLoading();
            }
        }

        public BitmapDownloaderTask(UsingParams usingparams)
        {
            this$0 = BitmapDownloader.this;
            super();
            usingParams = usingparams;
            viewReference = new WeakReference(usingparams.getView());
            useImageReflection = usingparams.isUseReflection();
            callback = usingparams.getCallback();
            url = usingparams.getUrl();
            sampleSize = usingparams.getSampleSize();
        }
    }

    public static abstract class BitmapLoadCallback
    {

        public void onPostImageLoading(BitmapWrapper bitmapwrapper, View view)
        {
            if (view != null)
            {
                view.setBackgroundDrawable(new BitmapDrawable(bitmapwrapper.getBitmap()));
            }
        }

        public void onPreImageLoading()
        {
        }

        public BitmapLoadCallback()
        {
        }
    }

    private static class FlushedInputStream extends FilterInputStream
    {

        public long skip(long l)
            throws IOException
        {
            long l1 = 0L;
            do
            {
                long l2;
label0:
                {
label1:
                    {
                        if (l1 < l)
                        {
                            long l3 = in.skip(l - l1);
                            l2 = l3;
                            if (l3 != 0L)
                            {
                                break label0;
                            }
                            if (read() >= 0)
                            {
                                break label1;
                            }
                        }
                        return l1;
                    }
                    l2 = 1L;
                }
                l1 += l2;
            } while (true);
        }

        public FlushedInputStream(InputStream inputstream)
        {
            super(inputstream);
        }
    }

    public static class TintContainer
    {

        private String tintColor;
        private float tintOpacity;

        public String getTintColor()
        {
            return tintColor;
        }

        public float getTintOpacity()
        {
            return tintOpacity;
        }

        public void setTintColor(String s)
        {
            tintColor = s;
        }

        public void setTintOpacity(float f)
        {
            tintOpacity = f;
        }

        public TintContainer()
        {
        }
    }

    public static class UsingParams
    {

        private static final int DEFAULT_BITMAP_SAMPLE_SIZE = 1;
        private BitmapLoadCallback callback;
        private int reqHeight;
        private int reqWidth;
        private int sampleSize;
        private String url;
        private boolean useReflection;
        private View view;

        public BitmapLoadCallback getCallback()
        {
            return callback;
        }

        public int getReqHeight()
        {
            return reqHeight;
        }

        public int getReqWidth()
        {
            return reqWidth;
        }

        public int getSampleSize()
        {
            return sampleSize;
        }

        public String getUrl()
        {
            return url;
        }

        public View getView()
        {
            return view;
        }

        public boolean isUseReflection()
        {
            return useReflection;
        }

        public void setCallback(BitmapLoadCallback bitmaploadcallback)
        {
            callback = bitmaploadcallback;
        }

        public void setReqHeight(int i)
        {
            reqHeight = i;
        }

        public void setReqWidth(int i)
        {
            reqWidth = i;
        }

        public void setSampleSize(int i)
        {
            sampleSize = i;
        }

        public UsingParams(View view1, String s)
        {
            this(view1, s, null);
        }

        public UsingParams(View view1, String s, BitmapLoadCallback bitmaploadcallback)
        {
            this(view1, s, bitmaploadcallback, false, false);
        }

        public UsingParams(View view1, String s, BitmapLoadCallback bitmaploadcallback, boolean flag)
        {
            this(view1, s, bitmaploadcallback, flag, false);
        }

        public UsingParams(View view1, String s, BitmapLoadCallback bitmaploadcallback, boolean flag, boolean flag1)
        {
            sampleSize = 1;
            url = s;
            view = view1;
            useReflection = flag1;
            callback = bitmaploadcallback;
        }

        public UsingParams(String s)
        {
            this(null, s);
        }
    }


    private static final int FIRST_INDEX = 0;
    private static final String LOG_TAG = "Downloader";
    private static final int MAX_ASYNC_TASKS_COUNT = 8;
    private static final String SPACE = " ";
    private static final String SPACE_CODE = "%20";
    private List activeTasks;
    private List waitingTasks;
    private List waitingTasksUrls;

    public BitmapDownloader()
    {
        activeTasks = Collections.synchronizedList(new LinkedList());
        waitingTasks = Collections.synchronizedList(new LinkedList());
        waitingTasksUrls = Collections.synchronizedList(new LinkedList());
    }

    private static int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int i1;
label0:
        {
            int l = options.outHeight;
            i1 = options.outWidth;
            int k = 1;
            if (l > j || i1 > i)
            {
                if (i1 <= l)
                {
                    break label0;
                }
                k = Math.round((float)l / (float)j);
            }
            return k;
        }
        return Math.round((float)i1 / (float)i);
    }

    public static int calculateInSampleSize2(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int i1 = options.outHeight;
        int j1 = options.outWidth;
        int l = 1;
        if (i1 > j || j1 > i)
        {
            int k = Math.round((float)i1 / (float)j);
            l = Math.round((float)j1 / (float)i);
            float f;
            float f1;
            if (k >= l)
            {
                k = l;
            }
            f = j1 * i1;
            f1 = i * j * 2;
            do
            {
                l = k;
                if (f / (float)(k * k) <= f1)
                {
                    break;
                }
                k++;
            } while (true);
        }
        return l;
    }

    private boolean cancelPotentialDownload(String s, View view)
    {
label0:
        {
            view = getBitmapDownloaderTask(view);
            if (view != null)
            {
                String s1 = view.getUrl();
                if (s1 != null && s1.equals(s))
                {
                    break label0;
                }
                waitingTasks.remove(view);
                waitingTasksUrls.remove(s1);
                view.cancel(true);
                activeTasks.remove(view);
                launchNewTaskIfAllowed();
            }
            return true;
        }
        return false;
    }

    private static String checkAndCorrectUrl(String s)
    {
        String s1 = s;
        if (s.contains(" "))
        {
            s1 = s.replace(" ", "%20");
        }
        return s1;
    }

    private Bitmap createReflectedImages(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            return null;
        } else
        {
            int i = bitmap.getWidth();
            int j = bitmap.getHeight();
            int k = (int)((double)j * 0.25D);
            Object obj = new Matrix();
            ((Matrix) (obj)).preScale(1.0F, -1F);
            obj = Bitmap.createBitmap(bitmap, 0, k, i, k, ((Matrix) (obj)), false);
            Bitmap bitmap1 = Bitmap.createBitmap(i, j + k, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap1);
            canvas.drawBitmap(bitmap, 0.0F, 0.0F, null);
            (new Paint()).setColor(0x106000d);
            canvas.drawBitmap(((Bitmap) (obj)), 0.0F, j + 4, null);
            Paint paint = new Paint();
            paint.setShader(new LinearGradient(0.0F, bitmap.getHeight(), 0.0F, bitmap1.getHeight() + 4, 0x70ffffff, 0xffffff, android.graphics.Shader.TileMode.MIRROR));
            paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.DST_IN));
            canvas.drawRect(0.0F, j, i, bitmap1.getHeight() + 4, paint);
            bitmap.recycle();
            ((Bitmap) (obj)).recycle();
            return bitmap1;
        }
    }

    private static Bitmap decodeSampledBitmap(String s, int i, int j)
    {
        Object obj1;
        Object obj2;
        byte abyte0[];
        android.graphics.BitmapFactory.Options options;
        AndroidHttpClient androidhttpclient;
        androidhttpclient = HttpUtils.getNewHttpClient();
        obj2 = null;
        abyte0 = null;
        options = null;
        obj1 = null;
        Object obj = new HttpGet(s);
        int k;
        obj1 = androidhttpclient.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        k = ((HttpResponse) (obj1)).getStatusLine().getStatusCode();
        if (k != 200)
        {
            androidhttpclient.close();
            return null;
        }
        obj1 = ((HttpResponse) (obj1)).getEntity();
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        obj1 = ((HttpEntity) (obj1)).getContent();
        obj2 = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
_L5:
        k = ((InputStream) (obj1)).read(abyte0);
        if (k <= -1) goto _L4; else goto _L3
_L3:
        ((ByteArrayOutputStream) (obj2)).write(abyte0, 0, k);
          goto _L5
        obj2;
        obj1 = obj;
        obj = obj2;
_L13:
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        ((HttpGet) (obj1)).abort();
        Log.w("Downloader", (new StringBuilder()).append("Incorrect passed url ").append(s).toString(), ((Throwable) (obj)));
        androidhttpclient.close();
_L6:
        return null;
_L4:
        ((ByteArrayOutputStream) (obj2)).flush();
        abyte0 = new ByteArrayInputStream(((ByteArrayOutputStream) (obj2)).toByteArray());
        obj2 = new ByteArrayInputStream(((ByteArrayOutputStream) (obj2)).toByteArray());
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(new FlushedInputStream(abyte0), null, options);
        abyte0.close();
        abyte0 = new android.graphics.BitmapFactory.Options();
        abyte0.inSampleSize = calculateInSampleSize(options, i, j);
        abyte0 = BitmapFactory.decodeStream(new FlushedInputStream(((InputStream) (obj2))), null, abyte0);
        ((InputStream) (obj2)).close();
        ((InputStream) (obj1)).close();
        androidhttpclient.close();
        return abyte0;
_L2:
        androidhttpclient.close();
          goto _L6
        obj;
        obj1 = obj2;
_L11:
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_330;
        }
        ((HttpGet) (obj1)).abort();
        Log.w("Downloader", (new StringBuilder()).append("I/O error while retrieving bitmap from ").append(s).toString(), ((Throwable) (obj)));
        androidhttpclient.close();
          goto _L6
        obj;
        obj = abyte0;
_L10:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_377;
        }
        ((HttpGet) (obj)).abort();
        Log.w("Downloader", (new StringBuilder()).append("Incorrect URL: ").append(s).toString());
        androidhttpclient.close();
          goto _L6
        obj;
        obj1 = options;
_L9:
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_426;
        }
        ((HttpGet) (obj1)).abort();
        Log.w("Downloader", (new StringBuilder()).append("Error while retrieving bitmap from ").append(s).toString(), ((Throwable) (obj)));
        androidhttpclient.close();
          goto _L6
        s;
_L8:
        androidhttpclient.close();
        throw s;
        s;
        if (true) goto _L8; else goto _L7
_L7:
        Object obj3;
        obj3;
        obj1 = obj;
        obj = obj3;
          goto _L9
        obj1;
          goto _L10
        obj3;
        obj1 = obj;
        obj = obj3;
          goto _L11
        obj;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public static Bitmap downloadBitmap(String s)
    {
        Object obj;
        obj = getBitmap(s);
        if (obj != null && !((Bitmap) (obj)).isRecycled())
        {
            return ((Bitmap) (obj));
        }
        obj = HttpUtils.getNewHttpClient();
        HttpGet httpget;
        s = checkAndCorrectUrl(s);
        httpget = new HttpGet(s);
        Object obj1;
        int i;
        obj1 = ((AndroidHttpClient) (obj)).execute(httpget);
        i = ((HttpResponse) (obj1)).getStatusLine().getStatusCode();
        if (i == 200)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        obj1 = ((HttpResponse) (obj1)).getHeaders("Location");
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        if (obj1.length == 0)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        obj1 = downloadBitmap(obj1[obj1.length - 1].getValue());
        ((AndroidHttpClient) (obj)).close();
        return ((Bitmap) (obj1));
        Log.w("ImageDownloader", (new StringBuilder()).append("Error ").append(i).append(" while retrieving bitmap from ").append(s).toString());
        ((AndroidHttpClient) (obj)).close();
        return null;
        obj1 = ((HttpResponse) (obj1)).getEntity().getContent();
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        obj1 = BitmapFactory.decodeStream(new FlushedInputStream(((InputStream) (obj1))), null, options);
        ((AndroidHttpClient) (obj)).close();
        return ((Bitmap) (obj1));
        Object obj2;
        obj2;
        httpget.abort();
        Log.w("Downloader", (new StringBuilder()).append("I/O error while retrieving bitmap from ").append(s).toString(), ((Throwable) (obj2)));
_L3:
        ((AndroidHttpClient) (obj)).close();
_L1:
        return null;
        obj2;
        httpget.abort();
        Log.w("Downloader", (new StringBuilder()).append("Incorrect URL: ").append(s).toString());
        continue; /* Loop/switch isn't completed */
        s;
        s.printStackTrace();
        ((AndroidHttpClient) (obj)).close();
          goto _L1
        obj2;
        httpget.abort();
        Log.w("Downloader", (new StringBuilder()).append("Error while retrieving bitmap from ").append(s).toString(), ((Throwable) (obj2)));
        continue; /* Loop/switch isn't completed */
        s;
        s.printStackTrace();
        ((AndroidHttpClient) (obj)).close();
          goto _L1
        s;
        ((AndroidHttpClient) (obj)).close();
        throw s;
        if (true) goto _L3; else goto _L2
_L2:
    }

    private Bitmap downloadBitmap(String s, int i)
    {
        Object obj1;
        Object obj2;
        HttpEntity httpentity;
        Object obj4;
        AndroidHttpClient androidhttpclient;
        androidhttpclient = HttpUtils.getNewHttpClient();
        obj2 = null;
        httpentity = null;
        obj4 = null;
        obj1 = null;
        Object obj = new HttpGet(checkAndCorrectUrl(s));
        int j;
        obj1 = androidhttpclient.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        j = ((HttpResponse) (obj1)).getStatusLine().getStatusCode();
        if (j != 200)
        {
            androidhttpclient.close();
            return null;
        }
        httpentity = ((HttpResponse) (obj1)).getEntity();
        if (httpentity == null) goto _L2; else goto _L1
_L1:
        obj1 = null;
        obj2 = httpentity.getContent();
        obj1 = obj2;
        obj4 = new android.graphics.BitmapFactory.Options();
        obj1 = obj2;
        obj4.inTempStorage = new byte[32768];
        obj1 = obj2;
        obj4.inDither = false;
        obj1 = obj2;
        obj4.inSampleSize = i;
        obj1 = obj2;
        obj4.inPurgeable = true;
        obj1 = obj2;
        obj4.inInputShareable = true;
        obj1 = obj2;
        obj4.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
        obj1 = obj2;
        obj4 = BitmapFactory.decodeStream(new FlushedInputStream(((InputStream) (obj2))), null, ((android.graphics.BitmapFactory.Options) (obj4)));
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        ((InputStream) (obj2)).close();
        httpentity.consumeContent();
        androidhttpclient.close();
        return ((Bitmap) (obj4));
        obj2;
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        ((InputStream) (obj1)).close();
        httpentity.consumeContent();
        throw obj2;
        obj2;
        obj1 = obj;
        obj = obj2;
_L12:
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_257;
        }
        ((HttpGet) (obj1)).abort();
        Log.w("Downloader", (new StringBuilder()).append("Incorrect passed url ").append(s).toString(), ((Throwable) (obj)));
        androidhttpclient.close();
        return null;
_L2:
        androidhttpclient.close();
        return null;
        obj;
        obj1 = obj2;
_L10:
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_313;
        }
        ((HttpGet) (obj1)).abort();
        Log.w("Downloader", (new StringBuilder()).append("I/O error while retrieving bitmap from ").append(s).toString(), ((Throwable) (obj)));
        androidhttpclient.close();
        return null;
        obj;
        obj = httpentity;
_L8:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_359;
        }
        ((HttpGet) (obj)).abort();
        Log.w("Downloader", (new StringBuilder()).append("Incorrect URL: ").append(s).toString());
        androidhttpclient.close();
        return null;
        obj;
        obj1 = obj4;
_L6:
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_407;
        }
        ((HttpGet) (obj1)).abort();
        Log.w("Downloader", (new StringBuilder()).append("Error while retrieving bitmap from ").append(s).toString(), ((Throwable) (obj)));
        androidhttpclient.close();
        return null;
        s;
_L4:
        androidhttpclient.close();
        throw s;
        s;
        if (true) goto _L4; else goto _L3
_L3:
        Object obj3;
        obj3;
        obj1 = obj;
        obj = obj3;
        if (true) goto _L6; else goto _L5
_L5:
        obj1;
        if (true) goto _L8; else goto _L7
_L7:
        obj3;
        obj1 = obj;
        obj = obj3;
        if (true) goto _L10; else goto _L9
_L9:
        obj;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public static Bitmap downloadBitmap(String s, android.graphics.BitmapFactory.Options options, int i, int j)
    {
        AndroidHttpClient androidhttpclient;
        Bitmap bitmap = getBitmap(s);
        if (bitmap != null && !bitmap.isRecycled())
        {
            return bitmap;
        }
        androidhttpclient = HttpUtils.getNewHttpClient();
        String s1;
        s1 = checkAndCorrectUrl(s);
        s = new HttpGet(s1);
        Object obj;
        Object obj1;
        Object obj2;
        obj = s;
        obj1 = s;
        obj2 = s;
        Object obj3 = androidhttpclient.execute(s);
        obj = s;
        obj1 = s;
        obj2 = s;
        int k = ((HttpResponse) (obj3)).getStatusLine().getStatusCode();
        if (k == 200)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        obj = s;
        obj1 = s;
        obj2 = s;
        obj3 = ((HttpResponse) (obj3)).getHeaders("Location");
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        obj = s;
        obj1 = s;
        obj2 = s;
        if (obj3.length == 0)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        obj = s;
        obj1 = s;
        obj2 = s;
        s = downloadBitmap(obj3[obj3.length - 1].getValue(), options, i, j);
        androidhttpclient.close();
        return s;
        obj = s;
        obj1 = s;
        obj2 = s;
        Log.w("ImageDownloader", (new StringBuilder()).append("Error ").append(k).append(" while retrieving bitmap from ").append(s1).toString());
        androidhttpclient.close();
        return null;
        obj = s;
        obj1 = s;
        obj2 = s;
        obj3 = ((HttpResponse) (obj3)).getEntity();
        obj1 = obj3;
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        obj2 = null;
        obj3 = ((HttpEntity) (obj1)).getContent();
        obj2 = obj3;
        options.inJustDecodeBounds = true;
        obj2 = obj3;
        BitmapFactory.decodeStream(new FlushedInputStream(((InputStream) (obj3))), null, options);
        obj2 = obj3;
        options.inSampleSize = calculateInSampleSize2(options, i, j);
        obj2 = obj3;
        options.inJustDecodeBounds = false;
        obj2 = obj3;
        ((InputStream) (obj3)).close();
        obj2 = obj3;
        ((HttpEntity) (obj1)).consumeContent();
        obj2 = obj3;
        obj = new HttpGet(s1);
        s = ((String) (obj1));
        obj2 = obj3;
        HttpResponse httpresponse = androidhttpclient.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        s = ((String) (obj1));
        obj2 = obj3;
        i = httpresponse.getStatusLine().getStatusCode();
        if (i == 200)
        {
            break MISSING_BLOCK_LABEL_460;
        }
        s = ((String) (obj1));
        obj2 = obj3;
        Log.w("ImageDownloader", (new StringBuilder()).append("Error ").append(i).append(" while retrieving bitmap from ").append(s1).toString());
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_446;
        }
        ((InputStream) (obj3)).close();
        ((HttpEntity) (obj1)).consumeContent();
        androidhttpclient.close();
        return null;
        s = ((String) (obj1));
        obj2 = obj3;
        obj1 = httpresponse.getEntity();
        s = ((String) (obj1));
        obj2 = obj3;
        obj3 = ((HttpEntity) (obj1)).getContent();
        s = ((String) (obj1));
        obj2 = obj3;
        options.inJustDecodeBounds = false;
        s = ((String) (obj1));
        obj2 = obj3;
        options = BitmapFactory.decodeStream(new FlushedInputStream(((InputStream) (obj3))), null, options);
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_536;
        }
        ((InputStream) (obj3)).close();
        ((HttpEntity) (obj1)).consumeContent();
        androidhttpclient.close();
        return options;
        Exception exception;
        exception;
        obj3 = obj2;
        options = ((android.graphics.BitmapFactory.Options) (obj1));
_L9:
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_578;
        }
        obj = s;
        obj1 = s;
        obj2 = s;
        ((InputStream) (obj3)).close();
        obj = s;
        obj1 = s;
        obj2 = s;
        options.consumeContent();
        obj = s;
        obj1 = s;
        obj2 = s;
        throw exception;
        s;
_L7:
        ((HttpGet) (obj)).abort();
        Log.w("Downloader", (new StringBuilder()).append("I/O error while retrieving bitmap from ").append(s1).toString(), s);
_L2:
        androidhttpclient.close();
_L3:
        return null;
        s;
_L5:
        ((HttpGet) (obj1)).abort();
        Log.w("Downloader", (new StringBuilder()).append("Incorrect URL: ").append(s1).toString());
          goto _L2
        s;
        s.printStackTrace();
        androidhttpclient.close();
          goto _L3
        s;
_L4:
        ((HttpGet) (obj2)).abort();
        Log.w("Downloader", (new StringBuilder()).append("Error while retrieving bitmap from ").append(s1).toString(), s);
          goto _L2
        s;
        s.printStackTrace();
        androidhttpclient.close();
          goto _L3
        s;
        androidhttpclient.close();
        throw s;
        s;
        obj2 = obj;
          goto _L4
        s;
        obj1 = obj;
          goto _L5
        s;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        options = s;
        s = ((String) (obj));
        obj3 = obj2;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void forceDownload(UsingParams usingparams)
    {
label0:
        {
            String s = usingparams.getUrl();
            View view = usingparams.getView();
            if (cancelPotentialDownload(s, view))
            {
                usingparams = new BitmapDownloaderTask(usingparams);
                if (view != null)
                {
                    view.setTag(usingparams);
                    if (view instanceof ImageView)
                    {
                        ((ImageView)view).setImageBitmap(null);
                    } else
                    {
                        view.setBackgroundDrawable(null);
                    }
                }
                if (activeTasks.size() <= 8)
                {
                    break label0;
                }
                waitingTasks.add(usingparams);
                waitingTasksUrls.add(s);
            }
            return;
        }
        usingparams.execute(new String[0]);
    }

    public static Bitmap getBitmap(String s)
    {
        ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        Bitmap bitmap1 = imagefetcher.getCache().getBitmapFromMemCache(s);
        Bitmap bitmap = bitmap1;
        if (bitmap1 != null)
        {
            bitmap = imagefetcher.getCache().getBitmapFromDiskCache(s);
        }
        return bitmap;
    }

    private static ImageCache getBitmapCacher()
    {
        return AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().getCache();
    }

    private BitmapDownloaderTask getBitmapDownloaderTask(View view)
    {
        if (view != null)
        {
            return (BitmapDownloaderTask)view.getTag();
        } else
        {
            return null;
        }
    }

    public static Bitmap getFileBitmap(String s, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(s, options);
        android.graphics.BitmapFactory.Options options1 = new android.graphics.BitmapFactory.Options();
        options1.inSampleSize = calculateInSampleSize(options, i, j);
        options1.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(s, options1);
    }

    private void launchNewTaskIfAllowed()
    {
        if (activeTasks.size() < 8 && !waitingTasks.isEmpty() && !waitingTasksUrls.isEmpty())
        {
            BitmapDownloaderTask bitmapdownloadertask = (BitmapDownloaderTask)waitingTasks.get(0);
            String s = (String)waitingTasksUrls.get(0);
            if (bitmapdownloadertask != null && StringUtils.isNotEmpty(s) && bitmapdownloadertask.getStatus() != android.os.AsyncTask.Status.RUNNING && bitmapdownloadertask.getStatus() != android.os.AsyncTask.Status.FINISHED)
            {
                bitmapdownloadertask.execute(new String[] {
                    s
                });
                waitingTasks.remove(bitmapdownloadertask);
                waitingTasksUrls.remove(s);
            }
        }
    }

    public void download(UsingParams usingparams)
    {
        String s = usingparams.getUrl();
        View view = usingparams.getView();
        BitmapLoadCallback bitmaploadcallback = usingparams.getCallback();
        Bitmap bitmap1 = getBitmapCacher().getBitmapFromMemCache(s);
        Bitmap bitmap = bitmap1;
        if (bitmap1 == null)
        {
            bitmap = getBitmapCacher().getBitmapFromDiskCache(s);
        }
        if (bitmap != null)
        {
            cancelPotentialDownload(s, view);
            if (bitmaploadcallback != null)
            {
                bitmaploadcallback.onPostImageLoading(new BitmapWrapper(bitmap, s), view);
            }
        } else
        if (AppCore.getInstance().isAnyConnectionAvailable())
        {
            forceDownload(usingparams);
            return;
        }
    }

    public void saveBitmap(Bitmap bitmap, String s)
    {
        AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().getCache().addBitmapToCache(s, bitmap);
    }







}
