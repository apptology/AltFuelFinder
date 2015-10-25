// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social;

import android.content.Context;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.social:
//            OnSocialLogoutListener, CommonSocialNetworkHandler

public abstract class OnCommonSocialLogoutListener
    implements OnSocialLogoutListener
{

    private Context mContext;

    public OnCommonSocialLogoutListener(Context context)
    {
        mContext = context;
    }

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        if (s1 != null)
        {
            ViewUtils.showCustomToast(mContext, s1);
        }
    }

    public abstract void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler);
}
