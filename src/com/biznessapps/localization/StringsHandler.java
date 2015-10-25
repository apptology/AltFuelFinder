// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.localization;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.utils.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.localization:
//            LanguageHelper

public class StringsHandler
{

    private static HashMap remoteStringsMap = new HashMap();

    public StringsHandler()
    {
    }

    private static JSONObject getData(Context context, String s, String s1)
    {
        Object obj;
        Object obj1;
        SharedPreferences sharedpreferences;
        String s2;
        if (StringUtils.isNotEmpty(s1))
        {
            s2 = (new StringBuilder()).append("localization_settings_key").append(s).append(s1).toString();
        } else
        {
            s2 = (new StringBuilder()).append("localization_settings_key").append(s).toString();
        }
        obj1 = (JSONObject)remoteStringsMap.get(s2);
        obj = obj1;
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        sharedpreferences = context.getSharedPreferences("ba.application.settings", 0);
        context = sharedpreferences.getString(s2, null);
        if (context == null) goto _L4; else goto _L3
_L3:
        context = new JSONObject(context);
        remoteStringsMap.put(s2, context);
        obj = context;
_L2:
        return ((JSONObject) (obj));
        context;
_L10:
        context.printStackTrace();
        return ((JSONObject) (obj1));
_L4:
        obj = obj1;
        if (!StringUtils.isNotEmpty(s1)) goto _L2; else goto _L5
_L5:
        s1 = (new StringBuilder()).append("localization_settings_key").append(s).toString();
        context = (JSONObject)remoteStringsMap.get(s1);
        obj = context;
        if (context != null) goto _L2; else goto _L6
_L6:
        s = sharedpreferences.getString(s1, null);
        obj = context;
        if (s == null) goto _L2; else goto _L7
_L7:
        s = new JSONObject(s);
        remoteStringsMap.put(s1, s);
        return s;
        s1;
        s = context;
        context = s1;
_L9:
        context.printStackTrace();
        return s;
        context;
        if (true) goto _L9; else goto _L8
_L8:
        s;
        obj1 = context;
        context = s;
          goto _L10
    }

    private static JSONObject getLocalStrings(Context context)
    {
        Object obj1;
        Object obj2;
        Object obj3;
        obj3 = null;
        obj1 = null;
        obj2 = null;
        Object obj = context.getAssets().open("strings.json");
        obj2 = obj;
        obj1 = obj;
        byte abyte0[] = new byte[((InputStream) (obj)).available()];
        obj2 = obj;
        obj1 = obj;
        ((InputStream) (obj)).read(abyte0);
        obj2 = obj;
        obj1 = obj;
        ((InputStream) (obj)).close();
        obj2 = obj;
        obj1 = obj;
        String s = new String(abyte0);
        saveStrings(context, s, "en", null);
        context = getData(context, "en", null);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        try
        {
            ((InputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((IOException) (obj)).printStackTrace();
            return context;
        }
_L2:
        return context;
        context;
        obj = obj2;
_L5:
        obj1 = obj;
        context.printStackTrace();
        context = obj3;
        if (obj == null) goto _L2; else goto _L1
_L1:
        try
        {
            ((InputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return null;
        }
        return null;
        context;
        obj = obj1;
_L4:
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw context;
        context;
        if (true) goto _L4; else goto _L3
_L3:
        context;
          goto _L5
        return context;
    }

    public static transient String[] getValues(Context context, String s, String as[])
    {
        if (as == null || as.length == 0)
        {
            throw new IllegalArgumentException("Keys can't be empty");
        }
        String as1[] = new String[as.length];
        String s2 = AppCore.getInstance().getCachingManager().getAppCode();
        String s1 = s;
        if (s == null)
        {
            s1 = LanguageHelper.getUsedLanguageCode(context.getResources().getConfiguration().locale);
        }
        boolean flag = updateValues(as1, as, getData(context, s1, s2));
        if (!flag)
        {
            if (!s1.equalsIgnoreCase("en"))
            {
                flag = updateValues(as1, as, getData(context, "en", s2));
            }
            if (!flag)
            {
                updateValues(as1, as, getLocalStrings(context));
            }
        }
        return as1;
    }

    public static String handleStringsRequest(Context context, String s)
    {
        String s2 = AppCore.getInstance().getCachingManager().getAppCode();
        String s1 = UrlWrapper.getInstance().getFullUrl(String.format("strings/getFile.php?lang=%s&format=json&android=1", new Object[] {
            s
        }));
        if (StringUtils.isNotEmpty(s2))
        {
            s1 = (new StringBuilder()).append(s1).append(String.format("&app_code=%s", new Object[] {
                s2
            })).toString();
        }
        s1 = AppHttpUtils.executeGetSyncRequest(s1, false);
        if (StringUtils.isNotEmpty(s1) && isCorrectData(s1))
        {
            saveStrings(context, s1, s, s2);
        }
        return s1;
    }

    private static boolean isCorrectData(String s)
    {
        try
        {
            (new JSONObject(s)).getJSONObject("data");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    private static void saveStrings(Context context, String s, String s1, String s2)
    {
        String s3 = s.replace("\\\\n", "").replace("%0.2f", "%.2f");
        if (StringUtils.isNotEmpty(s2))
        {
            s = (new StringBuilder()).append("localization_settings_key").append(s1).append(s2).toString();
        } else
        {
            s = (new StringBuilder()).append("localization_settings_key").append(s1).toString();
        }
        context = context.getSharedPreferences("ba.application.settings", 0).edit();
        context.putString(s, s3);
        context.commit();
        try
        {
            context = new JSONObject(s3);
            remoteStringsMap.put(s, context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    private static boolean updateValues(String as[], String as1[], JSONObject jsonobject)
    {
        if (jsonobject != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L6:
        return flag;
_L2:
        int k;
        boolean flag1;
        flag1 = true;
        k = as1.length;
        jsonobject = jsonobject.getJSONObject("data");
        int i = 0;
_L4:
        if (i >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        if (as[i] != null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        if (jsonobject.has(as1[i]))
        {
            as[i] = jsonobject.getString(as1[i]);
        }
        i++;
        if (true) goto _L4; else goto _L3
        as1;
        as1.printStackTrace();
_L3:
        int j = 0;
        do
        {
            flag = flag1;
            if (j >= k)
            {
                continue;
            }
            if (as[j] == null)
            {
                return false;
            }
            j++;
        } while (true);
        if (true) goto _L6; else goto _L5
_L5:
    }

}
