// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.biznessapps.api:
//            UnModalAsyncTask, DataSource, LoadingDataInterface, BackgroundInterface, 
//            AppCore

public class LoadDataTaskExternal extends UnModalAsyncTask
{
    public static class LoadDataRunnable
        implements Runnable
    {

        private Activity activity;
        private boolean canUseCaching;
        private String dataToParse;
        private boolean isCorrectData;

        public void canUseCaching(boolean flag)
        {
            canUseCaching = flag;
        }

        public boolean canUseCaching()
        {
            return canUseCaching;
        }

        public Activity getActivity()
        {
            return activity;
        }

        public String getDataToParse()
        {
            return dataToParse;
        }

        public boolean isCorrectData()
        {
            return isCorrectData;
        }

        public void run()
        {
        }

        public void setActivity(Activity activity1)
        {
            activity = activity1;
        }

        public void setCorrectData(boolean flag)
        {
            isCorrectData = flag;
        }

        public void setDataToParse(String s)
        {
            dataToParse = s;
        }

        public LoadDataRunnable()
        {
            isCorrectData = true;
        }
    }


    private static final String INCORRECT_STATE_MESSAGE = "Incorrect state: check url and runnables";
    private LoadDataRunnable canUseCachingRunnable;
    private LoadDataRunnable handleInBgRunnable;
    private long loadingTime;
    private Map params;
    private LoadDataRunnable parseDataRunnable;
    private LoadDataRunnable preDataLoadingRunnable;
    private String requestUrl;
    private LoadDataRunnable updateControlsRunnable;

    public LoadDataTaskExternal(Activity activity, List list)
    {
        super(activity, list);
    }

    private void checkState()
    {
        if (requestUrl == null || updateControlsRunnable == null || parseDataRunnable == null || handleInBgRunnable == null)
        {
            throw new IllegalStateException("Incorrect state: check url and runnables");
        } else
        {
            return;
        }
    }

    protected transient NetworkResultEntity doInBackground(Map amap[])
    {
        boolean flag = true;
        NetworkResultEntity networkresultentity = new NetworkResultEntity();
        amap = DataSource.getInstance().getData(requestUrl, true, amap);
        parseDataRunnable.setDataToParse(amap);
        parseDataRunnable.run();
        if (!parseDataRunnable.isCorrectData() || !StringUtils.isNotEmptyResponse(amap))
        {
            flag = false;
        }
        networkresultentity.setHasCorrectData(flag);
        networkresultentity.setBackground(JsonParser.getBackground(amap));
        if (activity != null && flag)
        {
            handleInBgRunnable.run();
        }
        return networkresultentity;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Map[])aobj);
    }

    public void launch()
    {
label0:
        {
            checkState();
            Activity activity = this.activity;
            if (activity != null)
            {
                if (preDataLoadingRunnable != null)
                {
                    preDataLoadingRunnable.setActivity(activity);
                    preDataLoadingRunnable.run();
                }
                if (canUseCachingRunnable != null)
                {
                    canUseCachingRunnable.run();
                    if (!canUseCachingRunnable.canUseCaching())
                    {
                        break label0;
                    }
                    updateControlsRunnable.setActivity(activity);
                    updateControlsRunnable.run();
                }
            }
            return;
        }
        if (params != null)
        {
            execute(new Map[] {
                params
            });
            return;
        } else
        {
            execute(new Map[0]);
            return;
        }
    }

    protected void onPostExecute(NetworkResultEntity networkresultentity)
    {
label0:
        {
            super.onPostExecute(networkresultentity);
            if (activity != null && (activity instanceof LoadingDataInterface))
            {
                ((LoadingDataInterface)activity).getProgressBarContainer().removeAllViews();
                if (networkresultentity.hasBackground() && (activity instanceof BackgroundInterface))
                {
                    ((BackgroundInterface)activity).setBgUrl(networkresultentity.getBackground());
                    ((BackgroundInterface)activity).applyBackground();
                }
                if (!networkresultentity.hasCorrectData())
                {
                    break label0;
                }
                updateControlsRunnable.setActivity(activity);
                updateControlsRunnable.run();
                if (activity.getIntent() != null)
                {
                    loadingTime = System.currentTimeMillis() - loadingTime;
                    networkresultentity = activity.getIntent().getStringExtra("TAB_FRAGMENT");
                    CommonUtils.sendTimingEvent(activity.getApplicationContext(), networkresultentity, loadingTime);
                }
            }
            return;
        }
        if (!AppCore.getInstance().isAnyConnectionAvailable())
        {
            ViewUtils.showNetwortErrorToast(activity);
            return;
        } else
        {
            ViewUtils.showNoDataToast(activity);
            return;
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
        if (activity != null && (activity instanceof LoadingDataInterface))
        {
            ((LoadingDataInterface)activity).getProgressBarContainer().addView(progressBar);
        }
    }

    public void setCanUseCachingRunnable(LoadDataRunnable loaddatarunnable)
    {
        canUseCachingRunnable = loaddatarunnable;
    }

    public void setHandleInBgRunnable(LoadDataRunnable loaddatarunnable)
    {
        handleInBgRunnable = loaddatarunnable;
    }

    public void setParams(Map map)
    {
        params = map;
    }

    public void setParseDataRunnable(LoadDataRunnable loaddatarunnable)
    {
        parseDataRunnable = loaddatarunnable;
    }

    public void setPreDataLoadingRunnable(LoadDataRunnable loaddatarunnable)
    {
        preDataLoadingRunnable = loaddatarunnable;
    }

    public void setRequestUrl(String s)
    {
        requestUrl = s;
    }

    public void setUpdateControlsRunnable(LoadDataRunnable loaddatarunnable)
    {
        updateControlsRunnable = loaddatarunnable;
    }
}
