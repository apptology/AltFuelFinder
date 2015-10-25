// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.content.Context;
import android.os.AsyncTask;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.events:
//            EventGoingTabUtils

static final class val.goingView extends AsyncTask
{

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
        avoid = val$socialHandler.getUserID();
        String s = val$socialHandler.getUserName();
        String s1 = val$socialHandler.getUserProfileURL();
        String s2 = String.valueOf(val$socialHandler.getSocialType());
        String s3 = CommonUtils.getMD5Hash(String.format(val$md5rule, new Object[] {
            avoid, s2
        }));
        AppHttpUtils.postEventDataSync(val$url, val$appCode, val$tabId, val$id, s2, avoid, s, val$comment, s3, val$parentId, s1);
        return null;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Void)obj);
    }

    protected void onPostExecute(Void void1)
    {
        EventGoingTabUtils.loadGoingData(val$appContext, val$rootContainer, val$id, val$tabId, val$settings, val$isUpcomingEvent, val$goingView);
    }

    tworkHandler(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, Context context, ViewGroup viewgroup, UiSettings uisettings, boolean flag, TextView textview)
    {
        val$socialHandler = commonsocialnetworkhandler;
        val$md5rule = s;
        val$url = s1;
        val$appCode = s2;
        val$tabId = s3;
        val$id = s4;
        val$comment = s5;
        val$parentId = s6;
        val$appContext = context;
        val$rootContainer = viewgroup;
        val$settings = uisettings;
        val$isUpcomingEvent = flag;
        val$goingView = textview;
        super();
    }
}
