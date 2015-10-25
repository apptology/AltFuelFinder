// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.net.http.AndroidHttpClient;
import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.ByteArrayBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.biznessapps.api:
//            AppHandlers, AppCore, UrlWrapper, AsyncCallback

public class HttpUtils
{

    public static final String AUTHORIZATION = "Authorization";
    private static final String BASIC = "Basic ";
    private static final String BEARER = "Bearer ";
    private static final String CLIENT_CREDENTIALS = "client_credentials";
    private static final int CONNECTON_TIMEOUT_SECONDS = 60;
    private static final String CREDENTIALS_FORMAT = "%s:%s";
    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final String GRANT_TYPE = "grant_type";
    private static final String POST = "POST";
    private static final String TAG = "HttpUtils";
    private static final int THREAD_POOL_SIZE = 5;
    private ExecutorService executors;

    public HttpUtils()
    {
        this(Executors.newFixedThreadPool(5));
    }

    public HttpUtils(ExecutorService executorservice)
    {
        executors = null;
        executors = executorservice;
    }

    private static String convertStreamToString(InputStream inputstream, Charset charset)
        throws IOException
    {
        StringBuilder stringbuilder;
        inputstream = new GZIPInputStream(inputstream);
        charset = new BufferedReader(new InputStreamReader(inputstream, charset));
        stringbuilder = new StringBuilder();
_L1:
        String s = charset.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        stringbuilder.append((new StringBuilder()).append(s).append("\n").toString());
          goto _L1
        charset;
        inputstream.close();
        throw charset;
        inputstream.close();
        return stringbuilder.toString();
    }

    private static String executeGetHttpRequest(String s)
        throws ClientProtocolException, IOException
    {
        AndroidHttpClient androidhttpclient = getNewHttpClient();
        s = new HttpGet(s);
        s.addHeader("Accept-Encoding", "gzip");
        s = responseToString(androidhttpclient.execute(s));
        androidhttpclient.close();
        return s;
        s;
        androidhttpclient.close();
        throw s;
    }

    private static String executeGetHttpRequest(String s, String s1, String s2)
        throws ClientProtocolException, IOException
    {
        AndroidHttpClient androidhttpclient = getNewHttpClient();
        s = new HttpGet(s);
        s.addHeader("Authorization", getAuthorizationHeader(s1, s2));
        s.addHeader("Accept-Encoding", "gzip");
        s = responseToString(androidhttpclient.execute(s));
        androidhttpclient.close();
        return s;
        s;
        androidhttpclient.close();
        throw s;
    }

    public static String executePostHttpRequest(String s, String as[], String as1[])
        throws ClientProtocolException, IOException
    {
        AndroidHttpClient androidhttpclient = getNewHttpClient();
        s = new HttpPost(s);
        ArrayList arraylist;
        int i;
        if (as != null && as1 != null)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        arraylist = new ArrayList(as1.length);
        i = 0;
_L2:
        if (i >= as1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(new BasicNameValuePair(as[i], as1[i]));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        s.setEntity(new UrlEncodedFormEntity(arraylist, "utf-8"));
_L3:
        s.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
        s = responseToString(androidhttpclient.execute(s));
        androidhttpclient.close();
        return s;
        as;
        s.setEntity(new UrlEncodedFormEntity(arraylist));
          goto _L3
        s;
        androidhttpclient.close();
        throw s;
    }

    private void executeRequest(String s, String as[], String as1[], AsyncCallback asynccallback)
    {
        s = replaceBadSymbols(s);
        if (as == null || as1 == null) goto _L2; else goto _L1
_L1:
        if (as.length <= 0 || as1.length <= 0) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L6:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        s = executePostHttpRequest(s, as, as1);
_L4:
        passResult(asynccallback, s);
        return;
        try
        {
            s = executeGetHttpRequest(s);
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            if (as != null)
            {
                s = as.toString();
            } else
            {
                s = "Couldn't connect to server";
            }
            Log.d("HttpUtils", String.format("Throwable: %s", new Object[] {
                s
            }));
            passError(asynccallback, "Couldn't connect to server", as);
            return;
        }
          goto _L4
_L2:
        flag = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void executeRequestAsync(final String baseUrl, final String names[], final String values[], final AsyncCallback callback)
    {
        boolean flag;
        if (executors.isShutdown() || executors.isTerminated())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            baseUrl = new Runnable() {

                final HttpUtils this$0;
                final String val$baseUrl;
                final AsyncCallback val$callback;
                final String val$names[];
                final String val$values[];

                public void run()
                {
                    executeRequest(baseUrl, names, values, callback);
                }

            
            {
                this$0 = HttpUtils.this;
                baseUrl = s;
                names = as;
                values = as1;
                callback = asynccallback;
                super();
            }
            };
            executors.execute(baseUrl);
        }
    }

    public static String getAuthorizationHeader()
        throws IOException
    {
        String s = String.format("%s:%s", new Object[] {
            "android", "TRvyrlIL"
        });
        return (new StringBuilder()).append("Basic ").append(Base64.encodeToString(s.getBytes("UTF-8"), 2)).toString();
    }

    private static String getAuthorizationHeader(String s, String s1)
        throws IOException
    {
        s = String.format("%s:%s", new Object[] {
            s, s1
        });
        return (new StringBuilder()).append("Basic ").append(Base64.encodeToString(s.getBytes("UTF-8"), 2)).toString();
    }

    public static String getBearerAccessTokenData(String s, String s1)
    {
        AndroidHttpClient androidhttpclient = getNewHttpClient();
        s = URLEncoder.encode(s);
        s1 = URLEncoder.encode(s1);
        s1 = Base64.encodeToString((new StringBuilder()).append(s).append(":").append(s1).toString().getBytes("utf-8"), 2);
        s = new HttpPost("https://api.twitter.com/oauth2/token");
        s.setHeader("Authorization", (new StringBuilder()).append("Basic ").append(s1).toString());
        s1 = new ArrayList(1);
        s1.add(new BasicNameValuePair("grant_type", "client_credentials"));
        s.setEntity(new UrlEncodedFormEntity(s1, "utf-8"));
_L1:
        s = responseToString(androidhttpclient.execute(s));
        androidhttpclient.close();
        return s;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        s.setEntity(new UrlEncodedFormEntity(s1));
          goto _L1
        s;
        s.printStackTrace();
        androidhttpclient.close();
        return null;
        s;
        androidhttpclient.close();
        throw s;
    }

    public static String getFacebookData(String s, String s1)
    {
        AndroidHttpClient androidhttpclient = getNewHttpClient();
        s = new HttpGet(s);
        s.setHeader("Accept-Encoding", "gzip");
        s.setHeader("access_token", s1);
        s = responseToString(androidhttpclient.execute(s));
        androidhttpclient.close();
        return s;
        s;
        s.printStackTrace();
        androidhttpclient.close();
        return null;
        s;
        androidhttpclient.close();
        throw s;
    }

    public static AndroidHttpClient getNewHttpClient()
    {
        return AndroidHttpClient.newInstance("Android");
    }

    public static String getTwitterData(String s, String s1)
    {
        AndroidHttpClient androidhttpclient = getNewHttpClient();
        s = new HttpGet(s);
        s.setHeader("Accept-Encoding", "gzip");
        s.setHeader("Authorization", (new StringBuilder()).append("Bearer ").append(s1).toString());
        s = responseToString(androidhttpclient.execute(s));
        androidhttpclient.close();
        return s;
        s;
        s.printStackTrace();
        androidhttpclient.close();
        return null;
        s;
        androidhttpclient.close();
        throw s;
    }

    public static HttpURLConnection makeConnection(String s, String s1, String s2)
        throws IOException
    {
        s = (HttpURLConnection)(new URL(s)).openConnection();
        s.setDoInput(true);
        s.setDoOutput(true);
        s.setReadTimeout(0);
        s.setInstanceFollowRedirects(true);
        s.setRequestProperty("Authorization", getAuthorizationHeader(s1, s2));
        s.setRequestMethod("POST");
        return s;
    }

    private void passError(final AsyncCallback callback, final String message, final Throwable throwable)
    {
        Handler handler = AppHandlers.getHandler();
        if (handler != null)
        {
            handler.post(new Runnable() {

                final HttpUtils this$0;
                final AsyncCallback val$callback;
                final String val$message;
                final Throwable val$throwable;

                public void run()
                {
                    if (callback != null)
                    {
                        callback.onError(message, throwable);
                    }
                }

            
            {
                this$0 = HttpUtils.this;
                callback = asynccallback;
                message = s;
                throwable = throwable1;
                super();
            }
            });
        }
    }

    private void passResult(final AsyncCallback callback, final String result)
    {
        Handler handler = AppHandlers.getHandler();
        if (handler != null)
        {
            handler.post(new Runnable() {

                final HttpUtils this$0;
                final AsyncCallback val$callback;
                final String val$result;

                public void run()
                {
                    if (callback != null)
                    {
                        callback.onResult(result);
                    }
                }

            
            {
                this$0 = HttpUtils.this;
                callback = asynccallback;
                result = s;
                super();
            }
            });
        }
    }

    private void postComment(String s, String s1, String s2, String s3, int i, String s4, String s5, 
            String s6, String s7, String s8, double d, double d1, 
            byte abyte0[], AsyncCallback asynccallback)
    {
        AndroidHttpClient androidhttpclient;
        androidhttpclient = null;
        s = androidhttpclient;
        HttpPost httppost;
        MultipartEntity multipartentity;
        if (i == 2)
        {
            try
            {
                s = JsonParser.getTwitterIconUrl(getTwitterData((new StringBuilder()).append("https://api.twitter.com/1.1/users/show.json?screen_name=").append(s5).toString(), AppCore.getInstance().getBearerAccessToken()));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                s = androidhttpclient;
            }
        }
        androidhttpclient = getNewHttpClient();
        httppost = new HttpPost(UrlWrapper.getInstance().getFullUrl("comment_post.php"));
        multipartentity = new MultipartEntity(HttpMultipartMode.BROWSER_COMPATIBLE);
        multipartentity.addPart("app_code", new StringBody(s1));
        multipartentity.addPart("tab_id", new StringBody(s2));
        multipartentity.addPart("user_type", new StringBody(String.valueOf(i)));
        multipartentity.addPart("user_id", new StringBody(s4));
        multipartentity.addPart("name", new StringBody(s5));
        multipartentity.addPart("hash", new StringBody(s7));
        if (StringUtils.isNotEmpty(s6))
        {
            multipartentity.addPart("comment", new StringBody(s6));
        }
        if (StringUtils.isNotEmpty(s8))
        {
            multipartentity.addPart("parent_id", new StringBody(s8));
        }
        if (d == 0.0D || d1 == 0.0D)
        {
            break MISSING_BLOCK_LABEL_320;
        }
        multipartentity.addPart("longitude", new StringBody((new StringBuilder()).append("").append(d).toString()));
        multipartentity.addPart("latitude", new StringBody((new StringBuilder()).append("").append(d1).toString()));
        if (StringUtils.isNotEmpty(s3))
        {
            multipartentity.addPart("id", new StringBody(s3));
        }
        if (StringUtils.isNotEmpty(s))
        {
            multipartentity.addPart("avatar", new StringBody(s));
        }
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_396;
        }
        multipartentity.addPart("image", new ByteArrayBody(abyte0, "image/jpeg", "image.jpg"));
        httppost.setEntity(multipartentity);
        passResult(asynccallback, androidhttpclient.execute(httppost).getStatusLine().toString());
        androidhttpclient.close();
        return;
        s;
        passError(asynccallback, "image upload failed", s);
        androidhttpclient.close();
        return;
        s;
        androidhttpclient.close();
        throw s;
    }

    private void postFanComment(AsyncCallback asynccallback, int i, String s, String s1, String s2, String s3, String s4, 
            String s5, String s6, boolean flag)
    {
        StringBuilder stringbuilder;
        stringbuilder = null;
        Object obj = stringbuilder;
        if (i == 2)
        {
            try
            {
                obj = JsonParser.getTwitterIconUrl(getTwitterData((new StringBuilder()).append("https://api.twitter.com/1.1/users/show.json?screen_name=").append(s3).toString(), AppCore.getInstance().getBearerAccessToken()));
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                exception = stringbuilder;
            }
        }
        stringbuilder = new StringBuilder();
        stringbuilder.append("?hash=").append(s1);
        stringbuilder.append("&tab_id=").append(s2);
        stringbuilder.append("&user_type=").append(i);
        i;
        JVM INSTR tableswitch 1 3: default 124
    //                   1 270
    //                   2 286
    //                   3 302;
           goto _L1 _L2 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L4:
        break MISSING_BLOCK_LABEL_302;
_L5:
        stringbuilder.append("&name=").append(s3);
        stringbuilder.append("&comment=").append(URLEncoder.encode(s4));
        stringbuilder.append("&app_code=").append(s5);
        if (StringUtils.isNotEmpty(s6))
        {
            if (flag)
            {
                stringbuilder.append("&yt_id=").append(s6);
            } else
            {
                stringbuilder.append("&parent_id=").append(s6);
            }
        }
        if (StringUtils.isNotEmpty(((String) (obj))))
        {
            stringbuilder.append("&avatar=").append(((String) (obj)));
        }
        executeGetRequestAsync(UrlWrapper.getInstance().getFullUrl((new StringBuilder()).append("fan_wall_post.php").append(stringbuilder.toString()).toString()), null, null, asynccallback);
        return;
_L2:
        stringbuilder.append("&fb_id=").append(s);
          goto _L5
_L3:
        stringbuilder.append("&tw_id=").append(s);
          goto _L5
        stringbuilder.append("&gp_id=").append(s);
          goto _L5
    }

    private String replaceBadSymbols(String s)
    {
        return s.replace(" ", "%20");
    }

    private static final String responseToString(HttpResponse httpresponse)
        throws IOException
    {
        if (httpresponse.getEntity().getContentEncoding() != null && "gzip".equalsIgnoreCase(httpresponse.getEntity().getContentEncoding().getValue()))
        {
            return convertStreamToString(httpresponse.getEntity().getContent(), Charset.forName("US-ASCII"));
        }
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(httpresponse.getEntity().getContent(), Charset.forName("US-ASCII")));
        StringBuilder stringbuilder = new StringBuilder();
        for (httpresponse = bufferedreader.readLine(); httpresponse != null; httpresponse = bufferedreader.readLine())
        {
            stringbuilder.append(httpresponse);
        }

        return stringbuilder.toString();
    }

    private void sendPhoto(byte abyte0[], String s, String s1, String s2, String s3, AsyncCallback asynccallback)
    {
        AndroidHttpClient androidhttpclient = getNewHttpClient();
        HttpPost httppost = new HttpPost(UrlWrapper.getInstance().getFullUrl("photo_post.php"));
        s = new StringBody(s);
        s1 = new StringBody(s1);
        s2 = new StringBody(s2);
        abyte0 = new ByteArrayBody(abyte0, "image/jpeg", "bizphoto.jpg");
        MultipartEntity multipartentity = new MultipartEntity(HttpMultipartMode.BROWSER_COMPATIBLE);
        multipartentity.addPart("app_code", s);
        multipartentity.addPart("tab_id", s1);
        multipartentity.addPart("image", abyte0);
        if (StringUtils.isNotEmpty(s3))
        {
            multipartentity.addPart("caption", new StringBody(s3));
        }
        multipartentity.addPart("id", s2);
        httppost.setEntity(multipartentity);
        passResult(asynccallback, responseToString(androidhttpclient.execute(httppost)));
        androidhttpclient.close();
        return;
        abyte0;
        passError(asynccallback, "image upload failed", abyte0);
        androidhttpclient.close();
        return;
        abyte0;
        androidhttpclient.close();
        throw abyte0;
    }

    public void executeGetRequestAsync(String s, String as[], String as1[], AsyncCallback asynccallback)
    {
        executeRequestAsync(s, null, null, asynccallback);
    }

    public void executePostRequestAsync(String s, String as[], String as1[], AsyncCallback asynccallback)
    {
        executeRequestAsync(s, as, as1, asynccallback);
    }

    public String executePostRequestSync(String s, String as[], String as1[])
    {
        try
        {
            s = executePostHttpRequest(s, as, as1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public String executeRequestSync(String s)
    {
        s = executeGetHttpRequest(s);
        System.gc();
        return s;
        s;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        s.printStackTrace();
        System.gc();
        return null;
        s;
        System.gc();
        throw s;
    }

    public String executeRequestSync(String s, String s1, String s2)
    {
        s = executeGetHttpRequest(s, s1, s2);
        System.gc();
        return s;
        s;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        s.printStackTrace();
        System.gc();
        return null;
        s;
        System.gc();
        throw s;
    }

    public void postCommentAsync(final String url, final String appCode, final String tabId, final String id, final int userType, final String userId, final String name, 
            final String comment, final String hash, final String parentId, final double longitude, final double latitude, 
            final byte imageData[], final AsyncCallback callback)
    {
        url = new Runnable() {

            final HttpUtils this$0;
            final String val$appCode;
            final AsyncCallback val$callback;
            final String val$comment;
            final String val$hash;
            final String val$id;
            final byte val$imageData[];
            final double val$latitude;
            final double val$longitude;
            final String val$name;
            final String val$parentId;
            final String val$tabId;
            final String val$url;
            final String val$userId;
            final int val$userType;

            public void run()
            {
                postComment(url, appCode, tabId, id, userType, userId, name, comment, hash, parentId, longitude, latitude, imageData, callback);
            }

            
            {
                this$0 = HttpUtils.this;
                url = s;
                appCode = s1;
                tabId = s2;
                id = s3;
                userType = i;
                userId = s4;
                name = s5;
                comment = s6;
                hash = s7;
                parentId = s8;
                longitude = d;
                latitude = d1;
                imageData = abyte0;
                callback = asynccallback;
                super();
            }
        };
        executors.execute(url);
    }

    public void postFanCommentAsync(final AsyncCallback callback, final int socialType, final String socialId, final String hash, final String tabId, final String name, final String comment, 
            final String appCode, final String commentParentId, final boolean hasYoutubeFormat)
    {
        callback = new Runnable() {

            final HttpUtils this$0;
            final String val$appCode;
            final AsyncCallback val$callback;
            final String val$comment;
            final String val$commentParentId;
            final boolean val$hasYoutubeFormat;
            final String val$hash;
            final String val$name;
            final String val$socialId;
            final int val$socialType;
            final String val$tabId;

            public void run()
            {
                postFanComment(callback, socialType, socialId, hash, tabId, name, comment, appCode, commentParentId, hasYoutubeFormat);
            }

            
            {
                this$0 = HttpUtils.this;
                callback = asynccallback;
                socialType = i;
                socialId = s;
                hash = s1;
                tabId = s2;
                name = s3;
                comment = s4;
                appCode = s5;
                commentParentId = s6;
                hasYoutubeFormat = flag;
                super();
            }
        };
        executors.execute(callback);
    }

    public void sendPhotoAsync(final byte data[], final String appCode, final String tabId, final String eventId, final String caption, final AsyncCallback callback)
    {
        data = new Runnable() {

            final HttpUtils this$0;
            final String val$appCode;
            final AsyncCallback val$callback;
            final String val$caption;
            final byte val$data[];
            final String val$eventId;
            final String val$tabId;

            public void run()
            {
                sendPhoto(data, appCode, tabId, eventId, caption, callback);
            }

            
            {
                this$0 = HttpUtils.this;
                data = abyte0;
                appCode = s;
                tabId = s1;
                eventId = s2;
                caption = s3;
                callback = asynccallback;
                super();
            }
        };
        executors.execute(data);
    }




}
