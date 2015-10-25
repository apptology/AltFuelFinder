// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.content.DialogInterface;
import com.biznessapps.common.social.OnSocialLoginListener;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterSocialNetworkHandler, TwitterLoginDialog

class val.twitterLoginDialog
    implements android.content.ner
{

    final TwitterSocialNetworkHandler this$0;
    final TwitterLoginDialog val$twitterLoginDialog;

    public void onDismiss(DialogInterface dialoginterface)
    {
        if (val$twitterLoginDialog.isLoginCompleted())
        {
            TwitterSocialNetworkHandler.access$002(TwitterSocialNetworkHandler.this, true);
            TwitterSocialNetworkHandler.access$100(TwitterSocialNetworkHandler.this).onLoginCompleted(TwitterSocialNetworkHandler.this);
            return;
        } else
        {
            TwitterSocialNetworkHandler.access$002(TwitterSocialNetworkHandler.this, false);
            TwitterSocialNetworkHandler.access$200(TwitterSocialNetworkHandler.this).onError(TwitterSocialNetworkHandler.this, "", val$twitterLoginDialog.getLoginError());
            return;
        }
    }

    I()
    {
        this$0 = final_twittersocialnetworkhandler;
        val$twitterLoginDialog = TwitterLoginDialog.this;
        super();
    }
}
