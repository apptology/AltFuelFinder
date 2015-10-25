// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.utils.StringUtils;

// Referenced classes of package com.biznessapps.news:
//            NewsFragment, SearchEntity

class this._cls0
    implements android.widget.temClickListener
{

    final NewsFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (SearchEntity)adapterview.getAdapter().getItem(i);
        if (StringUtils.isNotEmpty(adapterview.getLink()))
        {
            view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
            view.putExtra("URL", adapterview.getLink());
            view.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
            view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
            startActivity(view);
        }
    }

    mmonFragmentActivity()
    {
        this$0 = NewsFragment.this;
        super();
    }
}
