// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.UiSettings;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.events:
//            EventGoingTabUtils, EventCommentsAdapter

static final class val.goingView extends AsyncTask
{

    final Context val$appContext;
    final CachingManager val$cacher;
    final String val$eventId;
    final TextView val$goingView;
    final boolean val$isUpcomingEvent;
    final ListView val$listView;
    final TextView val$peopleGoing;
    final UiSettings val$settings;
    final String val$tabId;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient List doInBackground(Void avoid[])
    {
        avoid = String.format("going_list.php?app_code=%s&id=%s&tab_id=%s", new Object[] {
            val$cacher.getAppCode(), val$eventId, val$tabId
        });
        return JsonParser.parseFanComments(DataSource.getInstance().getData(avoid));
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((List)obj);
    }

    protected void onPostExecute(List list)
    {
        super.onPostExecute(list);
        int i = 0;
        if (list != null)
        {
            LinkedList linkedlist = new LinkedList();
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                CommentEntity commententity = (CommentEntity)list.next();
                if (StringUtils.isNotEmpty(commententity.getTitle()))
                {
                    commententity.setImageId(com.biznessapps.layout.ageId);
                    linkedlist.add(ViewUtils.getWrappedItem(commententity, linkedlist, val$settings));
                }
            } while (true);
            i = linkedlist.size();
            list = new EventCommentsAdapter(val$appContext, 1, linkedlist, val$settings);
            val$listView.setAdapter(list);
        }
        list = val$appContext.getResources();
        int j;
        if (val$isUpcomingEvent)
        {
            j = com.biznessapps.layout.;
        } else
        {
            j = com.biznessapps.layout.;
        }
        list = list.getString(j).replace("%d", "%s");
        val$peopleGoing.setText(String.format(list, new Object[] {
            (new StringBuilder()).append("").append(i).toString()
        }));
        if (val$goingView != null)
        {
            val$goingView.setText(String.format(list, new Object[] {
                Integer.valueOf(i)
            }));
        }
    }

    (CachingManager cachingmanager, String s, String s1, UiSettings uisettings, Context context, ListView listview, boolean flag, 
            TextView textview, TextView textview1)
    {
        val$cacher = cachingmanager;
        val$eventId = s;
        val$tabId = s1;
        val$settings = uisettings;
        val$appContext = context;
        val$listView = listview;
        val$isUpcomingEvent = flag;
        val$peopleGoing = textview;
        val$goingView = textview1;
        super();
    }
}
