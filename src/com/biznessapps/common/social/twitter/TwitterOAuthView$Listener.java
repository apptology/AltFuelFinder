// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import twitter4j.auth.AccessToken;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterOAuthView

public static interface 
{

    public abstract void onFailure(TwitterOAuthView twitteroauthview,  );

    public abstract void onSuccess(TwitterOAuthView twitteroauthview, AccessToken accesstoken);
}
