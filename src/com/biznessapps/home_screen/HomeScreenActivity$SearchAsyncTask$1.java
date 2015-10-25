// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Html;
import android.widget.TextView;
import com.biznessapps.news.SearchEntity;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenActivity

class val.newsFeedView extends Handler
{

    final is._cls0 this$1;
    final List val$items;
    final TextView val$newsFeedView;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            if (HomeScreenActivity.access$1700(_fld0) >= val$items.size())
            {
                HomeScreenActivity.access$1702(_fld0, 0);
            }
            message = (SearchEntity)val$items.get(HomeScreenActivity.access$1700(_fld0));
            message = String.format("%s:%s", new Object[] {
                message.getName(), message.getText()
            });
            val$newsFeedView.setText(Html.fromHtml(message));
            val$newsFeedView.setSelected(true);
            HomeScreenActivity.access$1800(_fld0, 2, 4000);
            int _tmp = HomeScreenActivity.access$1708(_fld0);
            return;

        case 2: // '\002'
            HomeScreenActivity.access$1800(_fld0, 1, 2000);
            return;
        }
    }

    (TextView textview)
    {
        this$1 = final_;
        val$items = List.this;
        val$newsFeedView = textview;
        super(final_looper);
    }
}
