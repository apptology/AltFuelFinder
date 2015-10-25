// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;


// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterOAuthView

public static final class  extends Enum
{

    private static final ACCESS_TOKEN_ERROR $VALUES[];
    public static final ACCESS_TOKEN_ERROR ACCESS_TOKEN_ERROR;
    public static final ACCESS_TOKEN_ERROR AUTHORIZATION_ERROR;
    public static final ACCESS_TOKEN_ERROR CANCELLATION;
    public static final ACCESS_TOKEN_ERROR REQUEST_TOKEN_ERROR;
    public static final ACCESS_TOKEN_ERROR SUCCESS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/biznessapps/common/social/twitter/TwitterOAuthView$Result, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SUCCESS = new <init>("SUCCESS", 0);
        CANCELLATION = new <init>("CANCELLATION", 1);
        REQUEST_TOKEN_ERROR = new <init>("REQUEST_TOKEN_ERROR", 2);
        AUTHORIZATION_ERROR = new <init>("AUTHORIZATION_ERROR", 3);
        ACCESS_TOKEN_ERROR = new <init>("ACCESS_TOKEN_ERROR", 4);
        $VALUES = (new .VALUES[] {
            SUCCESS, CANCELLATION, REQUEST_TOKEN_ERROR, AUTHORIZATION_ERROR, ACCESS_TOKEN_ERROR
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
