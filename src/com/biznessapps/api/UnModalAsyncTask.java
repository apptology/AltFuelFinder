// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.app.Activity;
import android.view.View;
import com.biznessapps.utils.ViewUtils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.api:
//            CommonTask

public abstract class UnModalAsyncTask extends CommonTask
{

    private boolean isActive;
    protected View progressBar;
    private List refOfViews;

    public UnModalAsyncTask(Activity activity, View view, List list)
    {
        super(activity);
        progressBar = view;
        refOfViews = list;
    }

    public UnModalAsyncTask(Activity activity, List list)
    {
        super(activity);
        progressBar = ViewUtils.getProgressBar(activity);
        refOfViews = list;
    }

    private void refreshControls()
    {
        if (refOfViews != null)
        {
            Iterator iterator = refOfViews.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Object obj = (WeakReference)iterator.next();
                if (obj != null && ((WeakReference) (obj)).get() != null)
                {
                    obj = (View)((WeakReference) (obj)).get();
                    boolean flag;
                    if (isActive)
                    {
                        flag = false;
                    } else
                    {
                        flag = true;
                    }
                    ((View) (obj)).setEnabled(flag);
                }
            } while (true);
        }
    }

    protected void onActivityAttached()
    {
        boolean flag;
        if (!getStatus().equals(android.os.AsyncTask.Status.FINISHED) && !isCancelled())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isActive = flag;
        refreshControls();
    }

    protected void onActivityDetached()
    {
        isActive = false;
        progressBar.setVisibility(8);
        refreshControls();
    }

    protected void onCancelled()
    {
        super.onCancelled();
        isActive = false;
        progressBar.setVisibility(8);
        refreshControls();
    }

    protected void onPostExecute(Object obj)
    {
        super.onPostExecute(obj);
        isActive = false;
        progressBar.setVisibility(8);
        refreshControls();
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        isActive = true;
        refreshControls();
        placeProgressBar();
    }

    protected abstract void placeProgressBar();
}
