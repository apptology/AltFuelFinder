// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Html;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.news.NewsSettings;
import com.biznessapps.news.SearchEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity

private class <init> extends AsyncTask
{

    final HomeScreenActivity this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient List doInBackground(String as[])
    {
        ArrayList arraylist;
label0:
        {
            arraylist = new ArrayList();
            String s = HomeScreenActivity.access$1200(HomeScreenActivity.this).getNewsTabId();
            NewsSettings newssettings = (NewsSettings)cacher().getData((new StringBuilder()).append("NewsViewController").append(s).toString());
            if (newssettings != null && newssettings.getTwitterSearchList() != null)
            {
                as = newssettings;
                if (newssettings.getGoogleSearchList() != null)
                {
                    break label0;
                }
            }
            as = String.format("news.php?app_code=%s&tab_id=%s", new Object[] {
                cacher().getAppCode(), s
            });
            as = JsonParser.getNewsSettings(DataSource.getInstance().getData(as));
            cacher().saveData((new StringBuilder()).append("NewsViewController").append(s).toString(), as);
        }
        if (as != null)
        {
            if (as.getGoogleSearchList() != null)
            {
                arraylist.addAll(as.getGoogleSearchList());
            }
            if (as.getTwitterSearchList() != null)
            {
                arraylist.addAll(as.getTwitterSearchList());
            }
        }
        return arraylist;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((List)obj);
    }

    protected void onPostExecute(List list)
    {
        super.onPostExecute(list);
        if (list != null && !list.isEmpty())
        {
            ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.d);
            ImageView imageview = (ImageView)findViewById(com.biznessapps.layout.d);
            imageview.setOnClickListener(HomeScreenActivity.access$1300(HomeScreenActivity.this, "NewsViewController"));
            viewgroup.setOnClickListener(HomeScreenActivity.access$1300(HomeScreenActivity.this, "NewsViewController"));
            TextView textview = (TextView)findViewById(com.biznessapps.layout.d);
            int i = HomeScreenActivity.access$1400(HomeScreenActivity.this).getButtonBgColor();
            int j = HomeScreenActivity.access$1500(HomeScreenActivity.this).getButtonTextColor();
            CommonUtils.overrideImageColor(j, imageview.getDrawable());
            viewgroup.setBackgroundColor(i);
            textview.setTextColor(j);
            viewgroup.setVisibility(0);
            HomeScreenActivity.access$1602(HomeScreenActivity.this, new Handler(textview) {

                final HomeScreenActivity.SearchAsyncTask this$1;
                final List val$items;
                final TextView val$newsFeedView;

                public void handleMessage(Message message)
                {
                    switch (message.what)
                    {
                    default:
                        return;

                    case 1: // '\001'
                        if (HomeScreenActivity.access$1700(this$0) >= items.size())
                        {
                            HomeScreenActivity.access$1702(this$0, 0);
                        }
                        message = (SearchEntity)items.get(HomeScreenActivity.access$1700(this$0));
                        message = String.format("%s:%s", new Object[] {
                            message.getName(), message.getText()
                        });
                        newsFeedView.setText(Html.fromHtml(message));
                        newsFeedView.setSelected(true);
                        HomeScreenActivity.access$1800(this$0, 2, 4000);
                        int _tmp = HomeScreenActivity.access$1708(this$0);
                        return;

                    case 2: // '\002'
                        HomeScreenActivity.access$1800(this$0, 1, 2000);
                        return;
                    }
                }

            
            {
                this$1 = HomeScreenActivity.SearchAsyncTask.this;
                items = list;
                newsFeedView = textview;
                super(final_looper);
            }
            });
            HomeScreenActivity.access$1800(HomeScreenActivity.this, 1, 0);
        }
    }

    private _cls1.val.newsFeedView()
    {
        this$0 = HomeScreenActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
