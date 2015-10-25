// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterSocialNetworkHandler

class val.text extends OnCommonSocialLoginListener
{

    final TwitterSocialNetworkHandler this$0;
    final String val$text;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        TwitterSocialNetworkHandler.access$500(TwitterSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
    }

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        Assert.assertTrue(TwitterSocialNetworkHandler.access$000(TwitterSocialNetworkHandler.this));
        (new stTweet(TwitterSocialNetworkHandler.this, TwitterSocialNetworkHandler.access$400(TwitterSocialNetworkHandler.this))).execute(new String[] {
            val$text
        });
    }

    stTweet(String s)
    {
        this$0 = final_twittersocialnetworkhandler;
        val$text = s;
        super(Context.this);
    }
}
