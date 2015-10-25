// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.UnModalAsyncTask;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.biznessapps.common.activities:
//            CommonFragmentActivity

private class this._cls0 extends UnModalAsyncTask
{

    private long loadingTime;
    final CommonFragmentActivity this$0;

    protected transient NetworkResultEntity doInBackground(Map amap[])
    {
        boolean flag = true;
        NetworkResultEntity networkresultentity = new NetworkResultEntity();
        String s = getRequestUrl();
        amap = DataSource.getInstance().getData(s, true, amap);
        if (!tryParseData(amap) || !StringUtils.isNotEmptyResponse(amap))
        {
            flag = false;
        }
        networkresultentity.setHasCorrectData(flag);
        networkresultentity.setBackground(JsonParser.getBackground(amap));
        if (activity != null && flag)
        {
            handleInBackground();
        }
        return networkresultentity;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Map[])aobj);
    }

    protected void onPostExecute(NetworkResultEntity networkresultentity)
    {
        super.onPostExecute(networkresultentity);
        if (activity != null && (activity instanceof CommonFragmentActivity))
        {
            ((CommonFragmentActivity)activity).getProgressBarContainer().removeAllViews();
            if (networkresultentity.hasBackground())
            {
                applyBackground(networkresultentity.getBackground());
            }
            if (networkresultentity.hasCorrectData())
            {
                updateControlsWithData(activity);
                loadingTime = System.currentTimeMillis() - loadingTime;
                networkresultentity = activity.getIntent().getStringExtra("TAB_FRAGMENT");
                CommonUtils.sendTimingEvent(activity.getApplicationContext(), networkresultentity, loadingTime);
            } else
            if (!AppCore.getInstance().isAnyConnectionAvailable())
            {
                ViewUtils.showNetwortErrorToast(activity);
                return;
            }
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((NetworkResultEntity)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        loadingTime = System.currentTimeMillis();
    }

    protected void placeProgressBar()
    {
        if (activity != null && (activity instanceof CommonFragmentActivity))
        {
            ((CommonFragmentActivity)activity).getProgressBarContainer().addView(progressBar);
        }
    }

    public (Activity activity, List list)
    {
        this$0 = CommonFragmentActivity.this;
        super(activity, list);
    }
}
