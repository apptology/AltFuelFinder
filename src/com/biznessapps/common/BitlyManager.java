// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common;

import android.content.Context;
import android.content.res.Resources;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import java.net.MalformedURLException;
import java.net.URL;
import org.json.JSONObject;

public class BitlyManager
{

    private static final String ACCESS_TOKEN = "15d8c8042ffdb0b605657ad69578f1f86919c41d";
    private static final String WEB_API_URL = "https://api-ssl.bitly.com/v3/shorten?access_token=%s&longUrl=%s";
    private static BitlyManager sManager = null;
    private Context mContext;
    private AsyncCallback mWrapCallback;

    public BitlyManager(Context context)
    {
        mWrapCallback = new AsyncCallback() {

            final BitlyManager this$0;

            public void onError(String s, Throwable throwable)
            {
                if (getMeta() == null)
                {
                    return;
                } else
                {
                    ((AsyncCallback)getMeta()).onError(s, throwable);
                    return;
                }
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s)
            {
                if (getMeta() != null) goto _L2; else goto _L1
_L1:
                return;
_L2:
                AsyncCallback asynccallback = (AsyncCallback)getMeta();
                JSONObject jsonobject = new JSONObject(s);
                String s1;
                s1 = null;
                s = s1;
                if (jsonobject.getInt("status_code") != 200)
                {
                    continue; /* Loop/switch isn't completed */
                }
                jsonobject = jsonobject.getJSONObject("data");
                s = s1;
                if (jsonobject == null)
                {
                    continue; /* Loop/switch isn't completed */
                }
                s1 = jsonobject.getString("url");
                s = s1;
                if (asynccallback == null)
                {
                    continue; /* Loop/switch isn't completed */
                }
                asynccallback.onResult(s1);
                s = s1;
                if (s != null) goto _L1; else goto _L3
_L3:
                try
                {
                    throw new Exception(mContext.getResources().getString(com.biznessapps.layout.R.string.unknown_error));
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    s.printStackTrace();
                }
                onError(mContext.getResources().getString(com.biznessapps.layout.R.string.unknown_error), new Exception(mContext.getResources().getString(com.biznessapps.layout.R.string.unknown_error)));
                return;
            }

            
            {
                this$0 = BitlyManager.this;
                super();
            }
        };
        mContext = context;
    }

    public static BitlyManager getInstance(Context context)
    {
        if (sManager == null)
        {
            sManager = new BitlyManager(context);
        }
        return sManager;
    }

    public boolean getShortURL(String s, AsyncCallback asynccallback)
    {
        if (s == null)
        {
            if (asynccallback != null)
            {
                asynccallback.onResult((String)null);
            }
            return true;
        }
        mWrapCallback.setMeta(asynccallback);
        try
        {
            AppHttpUtils.executeGetRequest(String.format("https://api-ssl.bitly.com/v3/shorten?access_token=%s&longUrl=%s", new Object[] {
                "15d8c8042ffdb0b605657ad69578f1f86919c41d", (new URL(s)).toString()
            }), mWrapCallback, false);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            mWrapCallback.onError(null, s);
            return false;
        }
        return true;
    }


}
