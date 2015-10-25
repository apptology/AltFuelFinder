// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.localization;

import android.content.Context;
import android.os.AsyncTask;
import com.biznessapps.utils.StringUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.localization:
//            StringsSource, StringsHandler

private class context extends AsyncTask
{

    private Context context;
    final StringsSource this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient String doInBackground(String as[])
    {
        return StringsHandler.handleStringsRequest(context, as[0]);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            for (s = StringsSource.access$200(StringsSource.this).iterator(); s.hasNext(); (()s.next()).onLanguageChanged()) { }
        }
    }

    public (Context context1)
    {
        this$0 = StringsSource.this;
        super();
        context = context1;
    }
}
