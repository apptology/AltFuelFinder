// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import com.biznessapps.utils.StringUtils;

public class TwitterUserInfo
{

    public String accessToken;
    public String accessTokenSecret;
    public String imgURL;
    public long userID;
    public String userName;

    public TwitterUserInfo()
    {
    }

    public boolean isLoggedIn()
    {
        return !StringUtils.isEmpty(accessToken) && !StringUtils.isEmpty(accessTokenSecret) && userID > 0L;
    }
}
