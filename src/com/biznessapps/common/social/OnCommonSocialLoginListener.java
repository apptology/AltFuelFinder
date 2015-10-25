// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.social:
//            OnSocialLoginListener, CommonSocialNetworkHandler

public abstract class OnCommonSocialLoginListener
    implements OnSocialLoginListener
{

    private static final String LOG_TAG = "CommonSocialLogin";
    private Context mContext;

    public OnCommonSocialLoginListener(Context context)
    {
        mContext = context;
    }

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        if (s1 != null)
        {
            Log.w("CommonSocialLogin", s1);
        }
        ViewUtils.showCustomToast(mContext, mContext.getResources().getString(com.biznessapps.layout.R.string.something_went_wrong));
    }

    public abstract void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler);
}
