// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.events:
//            EventCommentsAdapter

public class EventGoingTabUtils
{

    public EventGoingTabUtils()
    {
    }

    public static void loadGoingData(Context context, ViewGroup viewgroup, String s, String s1, UiSettings uisettings, boolean flag, TextView textview)
    {
        ListView listview = (ListView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view);
        TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.people_going_textview);
        textview1.setTextColor(uisettings.getSectionTextColor());
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.going_list_header)).setBackgroundColor(uisettings.getTransparentSectionBarColor());
        (new AsyncTask(AppCore.getInstance().getCachingManager(), s, s1, uisettings, context, listview, flag, textview1, textview) {

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
                    cacher.getAppCode(), eventId, tabId
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
                            commententity.setImageId(com.biznessapps.layout.R.drawable.portrait);
                            linkedlist.add(ViewUtils.getWrappedItem(commententity, linkedlist, settings));
                        }
                    } while (true);
                    i = linkedlist.size();
                    list = new EventCommentsAdapter(appContext, 1, linkedlist, settings);
                    listView.setAdapter(list);
                }
                list = appContext.getResources();
                int j;
                if (isUpcomingEvent)
                {
                    j = com.biznessapps.layout.R.string.people_going;
                } else
                {
                    j = com.biznessapps.layout.R.string.people_went;
                }
                list = list.getString(j).replace("%d", "%s");
                peopleGoing.setText(String.format(list, new Object[] {
                    (new StringBuilder()).append("").append(i).toString()
                }));
                if (goingView != null)
                {
                    goingView.setText(String.format(list, new Object[] {
                        Integer.valueOf(i)
                    }));
                }
            }

            
            {
                cacher = cachingmanager;
                eventId = s;
                tabId = s1;
                settings = uisettings;
                appContext = context;
                listView = listview;
                isUpcomingEvent = flag;
                peopleGoing = textview;
                goingView = textview1;
                super();
            }
        }).execute(new Void[0]);
    }

    public static void postEventData(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            Context context, ViewGroup viewgroup, UiSettings uisettings, boolean flag, TextView textview)
    {
        (new AsyncTask(commonsocialnetworkhandler, s1, s, s2, s3, s4, s5, s6, context, viewgroup, uisettings, flag, textview) {

            final String val$appCode;
            final Context val$appContext;
            final String val$comment;
            final TextView val$goingView;
            final String val$id;
            final boolean val$isUpcomingEvent;
            final String val$md5rule;
            final String val$parentId;
            final ViewGroup val$rootContainer;
            final UiSettings val$settings;
            final CommonSocialNetworkHandler val$socialHandler;
            final String val$tabId;
            final String val$url;

            protected volatile Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected transient Void doInBackground(Void avoid[])
            {
                avoid = socialHandler.getUserID();
                String s7 = socialHandler.getUserName();
                String s8 = socialHandler.getUserProfileURL();
                String s9 = String.valueOf(socialHandler.getSocialType());
                String s10 = CommonUtils.getMD5Hash(String.format(md5rule, new Object[] {
                    avoid, s9
                }));
                AppHttpUtils.postEventDataSync(url, appCode, tabId, id, s9, avoid, s7, comment, s10, parentId, s8);
                return null;
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((Void)obj);
            }

            protected void onPostExecute(Void void1)
            {
                EventGoingTabUtils.loadGoingData(appContext, rootContainer, id, tabId, settings, isUpcomingEvent, goingView);
            }

            
            {
                socialHandler = commonsocialnetworkhandler;
                md5rule = s;
                url = s1;
                appCode = s2;
                tabId = s3;
                id = s4;
                comment = s5;
                parentId = s6;
                appContext = context;
                rootContainer = viewgroup;
                settings = uisettings;
                isUpcomingEvent = flag;
                goingView = textview;
                super();
            }
        }).execute(new Void[0]);
    }
}
