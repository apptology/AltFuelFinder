// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import com.biznessapps.api.AsyncCallback;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.food_ordering:
//            FOMainActivity

class this._cls0 extends AsyncCallback
{

    final FOMainActivity this$0;

    public void onError(String s, Throwable throwable)
    {
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        try
        {
            s = (new JSONObject(s)).optString("clientToken");
            FOMainActivity.access$000(FOMainActivity.this, s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    ()
    {
        this$0 = FOMainActivity.this;
        super();
    }
}
