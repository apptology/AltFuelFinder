// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.view.View;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.biznessapps.widgets:
//            URLImageParser, URLDrawable

public class drawable extends AsyncTask
{

    URLDrawable drawable;
    final URLImageParser this$0;

    private InputStream fetch(String s)
        throws MalformedURLException, IOException
    {
        return (new DefaultHttpClient()).execute(new HttpGet(s)).getEntity().getContent();
    }

    protected transient Drawable doInBackground(String as[])
    {
        return fetchDrawable(as[0]);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    public Drawable fetchDrawable(String s)
    {
        try
        {
            s = Drawable.createFromStream(fetch(s), "src");
            s.setBounds(0, 0, s.getIntrinsicWidth() + 0, s.getIntrinsicHeight() + 0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    protected void onPostExecute(Drawable drawable1)
    {
        drawable.setBounds(0, 0, drawable1.getIntrinsicWidth() + 0, drawable1.getIntrinsicHeight() + 0);
        drawable.drawable = drawable1;
        container.invalidate();
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Drawable)obj);
    }

    public A(URLDrawable urldrawable)
    {
        this$0 = URLImageParser.this;
        super();
        drawable = urldrawable;
    }
}
