// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Window;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppFragmentManager;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.layout.MainController;
import com.biznessapps.podcasts.PodcastsListFragment;

// Referenced classes of package com.biznessapps.common.activities:
//            CommonShareableFragmentActivity

public class SingleFragmentActivity extends CommonShareableFragmentActivity
{

    private CommonFragment singleFragment;

    public SingleFragmentActivity()
    {
    }

    private void getFragmentAndLoad()
    {
        singleFragment = (CommonFragment)AppFragmentManager.getFragmentByController(getIntent());
        if (singleFragment instanceof PodcastsListFragment)
        {
            hasPodcastTab = true;
        }
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        singleFragment.setArguments(getIntent().getExtras());
        fragmenttransaction.add(com.biznessapps.layout.R.id.fragment_root, singleFragment);
        fragmenttransaction.commit();
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.single_fragment_layout;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(32);
        if (!AppCore.getInstance().getAppSettings().isActive())
        {
            startActivity(new Intent(getApplicationContext(), com/biznessapps/layout/MainController));
            finish();
        }
        getFragmentAndLoad();
    }
}
