// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.web;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.utils.CommonUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.web:
//            WebViewFragment

class this._cls0 extends AsyncTask
{

    final WebViewFragment this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient List doInBackground(Void avoid[])
    {
        return CommonUtils.getUrlsFromPlsStream(WebViewFragment.access$700(WebViewFragment.this));
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((List)obj);
    }

    protected void onPostExecute(List list)
    {
        if (list != null && !list.isEmpty())
        {
            list = (String)list.get(0);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(list));
            startActivity(intent);
            getHoldActivity().finish();
        }
    }

    onFragmentActivity()
    {
        this$0 = WebViewFragment.this;
        super();
    }
}
