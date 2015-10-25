// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.net.http.AndroidHttpClient;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.ByteArrayBody;
import org.apache.http.entity.mime.content.StringBody;

// Referenced classes of package com.biznessapps.api:
//            AppCore, UrlWrapper, HttpUtils, AsyncCallback

public class AppHttpUtils
{

    private static final String ACTION = "action";
    private static final String APP_CODE = "app_code";
    private static final String AVATAR_URL = "avatar_url";
    private static final String BIRTHDAY = "birthday";
    private static final String CATEGORIES = "categories";
    private static final String COMMENT = "comment";
    private static final String COUNTRY = "country";
    private static final String EMAIL = "email";
    private static final String ID = "id";
    private static final String NAME = "name";
    private static final String POSTAL_CODE = "postalcode";
    private static final String SEQUENCE = "sequence";
    private static final String TAB_ID = "tab_id";
    private static final String VERSION = "version";
    private static HttpUtils http;

    public AppHttpUtils()
    {
    }

    public static String addAdditionalParams(String s, Map map)
    {
        String s1;
        if (map != null && map.size() > 0)
        {
            map.put("version", "7");
        } else
        if (s.contains("?"))
        {
            s = (new StringBuilder()).append(s).append(String.format(Locale.getDefault(), "&%s=%s", new Object[] {
                "version", "7"
            })).toString();
        } else
        {
            s = (new StringBuilder()).append(s).append(String.format(Locale.getDefault(), "?%s=%s", new Object[] {
                "version", "7"
            })).toString();
        }
        s1 = AppCore.getInstance().getAppSettings().getDeviceUserId(AppCore.getInstance().getAppContext());
        if (StringUtils.isEmpty(s1))
        {
            return s;
        }
        if (map != null && map.size() > 0)
        {
            map.put("device_user_id", s1);
            return s;
        }
        if (s.contains("?"))
        {
            return (new StringBuilder()).append(s).append(String.format(Locale.getDefault(), "&%s=%s", new Object[] {
                "device_user_id", s1
            })).toString();
        } else
        {
            return (new StringBuilder()).append(s).append(String.format(Locale.getDefault(), "?%s=%s", new Object[] {
                "device_user_id", s1
            })).toString();
        }
    }

    public static String addToMailingList(String s, String s1, String s2, String s3, String s4, String s5, String s6, String s7, 
            String s8)
    {
        Map map = getEmptyParams();
        map.put("name", s);
        map.put("email", s1);
        map.put("tab_id", s3);
        map.put("version", "4");
        if (StringUtils.isNotEmpty(s4))
        {
            map.put("categories", s4);
        }
        if (StringUtils.isNotEmpty(s5))
        {
            map.put("birthday", s5);
        }
        if (StringUtils.isNotEmpty(s6))
        {
            map.put("postalcode", s6);
        }
        if (StringUtils.isNotEmpty(s7))
        {
            map.put("country", s7);
        }
        if (StringUtils.isNotEmpty(s8))
        {
            map.put("comment", s8);
        }
        map.put("app_code", s2);
        return executePostRequestSync("mailing_list_save.php", map, true);
    }

    public static void executeGetRequest(String s, AsyncCallback asynccallback)
    {
        executeGetRequest(s, asynccallback, false);
    }

    public static void executeGetRequest(String s, AsyncCallback asynccallback, boolean flag)
    {
        Map map = getEmptyParams();
        String s1 = s;
        if (flag)
        {
            s1 = UrlWrapper.getInstance().getFullUrl(s);
        }
        s = addAdditionalParams(s1, map);
        http().executeGetRequestAsync(s, getKeys(map), getValues(map), asynccallback);
    }

    public static String executeGetSyncRequest(String s, String s1, String s2)
    {
        s = addAdditionalParams(s, null);
        return http().executeRequestSync(s, s1, s2);
    }

    public static String executeGetSyncRequest(String s, boolean flag)
    {
        String s1 = s;
        if (flag)
        {
            s1 = UrlWrapper.getInstance().getFullUrl(s);
        }
        s = addAdditionalParams(s1, null);
        return http().executeRequestSync(s);
    }

    public static void executePostRequest(String s, Map map, AsyncCallback asynccallback)
    {
        s = addAdditionalParams(s, map);
        http().executePostRequestAsync(s, getKeys(map), getValues(map), asynccallback);
    }

    public static void executePostRequest(String s, Map map, AsyncCallback asynccallback, boolean flag)
    {
        String s1 = s;
        if (flag)
        {
            s1 = UrlWrapper.getInstance().getFullUrl(s);
        }
        s = addAdditionalParams(s1, map);
        http().executePostRequestAsync(s, getKeys(map), getValues(map), asynccallback);
    }

    public static String executePostRequestSync(String s, Map map)
    {
        s = addAdditionalParams(s, map);
        return http().executePostRequestSync(s, getKeys(map), getValues(map));
    }

    public static String executePostRequestSync(String s, Map map, boolean flag)
    {
        String s1 = s;
        if (flag)
        {
            s1 = UrlWrapper.getInstance().getFullUrl(s);
        }
        s = addAdditionalParams(s1, map);
        return http().executePostRequestSync(s, getKeys(map), getValues(map));
    }

    public static String getBearerAccessToken(String s, String s1)
    {
        return JsonParser.getBearerToken(HttpUtils.getBearerAccessTokenData(s, s1));
    }

    public static Map getEmptyParams()
    {
        return new LinkedHashMap();
    }

    private static String[] getKeys(Map map)
    {
        if (map != null)
        {
            return (String[])map.keySet().toArray(new String[0]);
        } else
        {
            return null;
        }
    }

    private static String[] getValues(Map map)
    {
        if (map != null)
        {
            return (String[])map.values().toArray(new String[0]);
        } else
        {
            return null;
        }
    }

    public static HttpUtils http()
    {
        if (http == null)
        {
            http = new HttpUtils();
        }
        return http;
    }

    public static void postActivity(AsyncCallback asynccallback, String s, int i, String s1, String s2, String s3, String s4, int j, 
            String s5)
    {
        postActivity(asynccallback, s, i, s1, s2, s3, s4, j, null, s5);
    }

    public static void postActivity(AsyncCallback asynccallback, String s, int i, String s1, String s2, String s3, String s4, int j, 
            Map map, String s5)
    {
        Map map1 = getEmptyParams();
        map1.put("name", s);
        map1.put("action", (new StringBuilder()).append("").append(i).toString());
        map1.put("device", "android");
        map1.put("tab_id", s2);
        map1.put("app_code", s1);
        map1.put("id", s4);
        if (StringUtils.isNotEmpty(s3))
        {
            map1.put("avatar_url", s3);
        }
        if (map != null)
        {
            map1.putAll(map);
        }
        map1.put("sequence", (new StringBuilder()).append("").append(j).toString());
        executePostRequest(s5, map1, asynccallback, true);
    }

    public static void postCommentAsync(AsyncCallback asynccallback, int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, boolean flag)
    {
        http().postFanCommentAsync(asynccallback, i, s, s1, s2, s3, s4, s5, s6, flag);
    }

    public static void postCommentAsync(String s, String s1, String s2, String s3, int i, String s4, String s5, String s6, 
            String s7, String s8, double d, double d1, byte abyte0[], 
            AsyncCallback asynccallback)
    {
        s = addAdditionalParams(UrlWrapper.getInstance().getFullUrl(s), null);
        http().postCommentAsync(s, s1, s2, s3, i, s4, s5, s6, s7, s8, d, d1, abyte0, asynccallback);
    }

    public static String postEventDataSync(String s, String s1, String s2, String s3, String s4, String s5, String s6, String s7, 
            String s8, String s9, String s10)
    {
        Map map = getEmptyParams();
        map.put("app_code", s1);
        map.put("tab_id", s2);
        map.put("id", s3);
        map.put("user_type", s4);
        map.put("user_id", s5);
        map.put("name", s6);
        if (StringUtils.isNotEmpty(s7))
        {
            map.put("comment", s7);
        }
        if (StringUtils.isNotEmpty(s9))
        {
            map.put("parent_id", s9);
        }
        map.put("hash", s8);
        if (StringUtils.isNotEmpty(s10))
        {
            map.put("image", s10);
        }
        return executePostRequestSync(s, map);
    }

    public static void sendPhoto(byte abyte0[], String s, String s1, String s2)
    {
        AndroidHttpClient androidhttpclient = HttpUtils.getNewHttpClient();
        try
        {
            HttpPost httppost = new HttpPost(UrlWrapper.getInstance().getFullUrl("photo_post.php"));
            s = new StringBody(s);
            s1 = new StringBody(s1);
            s2 = new StringBody(s2);
            abyte0 = new ByteArrayBody(abyte0, "image/jpeg", "");
            MultipartEntity multipartentity = new MultipartEntity(HttpMultipartMode.BROWSER_COMPATIBLE);
            multipartentity.addPart("app_code", s);
            multipartentity.addPart("tab_id", s1);
            multipartentity.addPart("image", abyte0);
            multipartentity.addPart("id", s2);
            httppost.setEntity(multipartentity);
            androidhttpclient.execute(httppost);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            androidhttpclient.close();
            return;
        }
        finally
        {
            androidhttpclient.close();
        }
        androidhttpclient.close();
        return;
        throw abyte0;
    }

    public static void sendPhotoAsync(byte abyte0[], String s, String s1, String s2, String s3, AsyncCallback asynccallback)
    {
        http().sendPhotoAsync(abyte0, s, s1, s2, s3, asynccallback);
    }
}
