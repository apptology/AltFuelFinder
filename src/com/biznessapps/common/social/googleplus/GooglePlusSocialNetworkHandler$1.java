// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.googleplus;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.google.android.gms.plus.PlusClient;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.common.social.googleplus:
//            GooglePlusSocialNetworkHandler

class val.listener extends OnCommonSocialLoginListener
{

    final GooglePlusSocialNetworkHandler this$0;
    final OnSocialPublishListener val$listener;
    final String val$text;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        GooglePlusSocialNetworkHandler.access$000(GooglePlusSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
    }

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        Assert.assertTrue(GooglePlusSocialNetworkHandler.access$100(GooglePlusSocialNetworkHandler.this).isConnected());
        publishText(val$text, val$listener);
    }

    (OnSocialPublishListener onsocialpublishlistener)
    {
        this$0 = final_googleplussocialnetworkhandler;
        val$text = String.this;
        val$listener = onsocialpublishlistener;
        super(final_context);
    }
}
