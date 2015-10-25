// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import android.content.Intent;
import com.biznessapps.common.social.SocialNetworkManager;

// Referenced classes of package com.biznessapps.common.activities:
//            CommonTabFragmentActivity

public abstract class CommonShareableTabFragmentActivity extends CommonTabFragmentActivity
{

    public CommonShareableTabFragmentActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        SocialNetworkManager.getInstance(this).onActivityResult(i, j, intent);
    }

    protected void onPause()
    {
        super.onPause();
        SocialNetworkManager.getInstance(this).onPause(this);
    }

    protected void onResume()
    {
        SocialNetworkManager.getInstance(this).onResume(this);
        super.onResume();
    }
}
