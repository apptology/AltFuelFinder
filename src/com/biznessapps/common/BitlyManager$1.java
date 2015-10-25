// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common;

import android.content.Context;
import android.content.res.Resources;
import com.biznessapps.api.AsyncCallback;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.common:
//            BitlyManager

class t> extends AsyncCallback
{

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
            throw new Exception(BitlyManager.access$000(BitlyManager.this).getResources().getString(com.biznessapps.layout.n_error));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        onError(BitlyManager.access$000(BitlyManager.this).getResources().getString(com.biznessapps.layout.n_error), new Exception(BitlyManager.access$000(BitlyManager.this).getResources().getString(com.biznessapps.layout.n_error)));
        return;
    }

    ()
    {
        this$0 = BitlyManager.this;
        super();
    }
}
