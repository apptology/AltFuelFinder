// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.localization;

import android.content.Context;
import android.os.AsyncTask;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.localization:
//            StringsHandler

public final class StringsSource
{
    private class DownloadStringsTask extends AsyncTask
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
                for (s = listeners.iterator(); s.hasNext(); ((LocalizationListener)s.next()).onLanguageChanged()) { }
            }
        }

        public DownloadStringsTask(Context context1)
        {
            this$0 = StringsSource.this;
            super();
            context = context1;
        }
    }

    private static class LanguageSourceHolder
    {

        private static final StringsSource instance = new StringsSource();



        private LanguageSourceHolder()
        {
        }
    }

    public static interface LocalizationListener
    {

        public abstract void onLanguageChanged();
    }


    private String currentLanguage;
    private List listeners;

    private StringsSource()
    {
        listeners = new ArrayList();
    }


    public static StringsSource getInstance()
    {
        return LanguageSourceHolder.instance;
    }

    public void addListener(LocalizationListener localizationlistener)
    {
        listeners.add(localizationlistener);
    }

    public String getCurrentLanguage()
    {
        return currentLanguage;
    }

    public String getValue(Context context, String s)
    {
        if (s == null)
        {
            context = null;
        } else
        {
            String s1 = StringsHandler.getValues(context, currentLanguage, new String[] {
                s
            })[0];
            context = s1;
            if (s1 == null)
            {
                return s;
            }
        }
        return context;
    }

    public void removeListener(LocalizationListener localizationlistener)
    {
        listeners.remove(localizationlistener);
    }

    public void update(Context context, String s)
    {
        currentLanguage = s;
        (new DownloadStringsTask(context)).execute(new String[] {
            s
        });
    }

}
