// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fragments.single;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;

public class TellFriendsFragment extends CommonFragment
{

    private ViewGroup layout;
    private String tabId;

    public TellFriendsFragment()
    {
    }

    private void initViews()
    {
        Button button = (Button)root.findViewById(com.biznessapps.layout.R.id.tell_friend_button);
        button.setVisibility(0);
        button.setText(com.biznessapps.layout.R.string.share);
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final TellFriendsFragment this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity());
            }

            
            {
                this$0 = TellFriendsFragment.this;
                super();
            }
        });
        CommonUtils.overrideMediumButtonColor(settings.getButtonBgColor(), button.getBackground());
        button.setTextColor(settings.getButtonTextColor());
        ViewUtils.setRootBgColor(layout, settings);
    }

    protected boolean canUseCachedData()
    {
        bgUrl = (String)cacher().getData((new StringBuilder()).append("TELL_FRIEND_PROPERTY").append(tabId).toString());
        return bgUrl != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        return bgUrl;
    }

    protected String getRequestUrl()
    {
        return String.format("tellfriend.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.tell_friend_layout, null);
        initSettingsData();
        layout = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.home_layout_container);
        initViews();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        bgUrl = JsonParser.getTellFriendImage(s);
        return cacher().saveData((new StringBuilder()).append("TELL_FRIEND_PROPERTY").append(tabId).toString(), bgUrl);
    }
}
