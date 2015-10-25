// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;


// Referenced classes of package com.biznessapps.widgets.animation.kenburns:
//            AnimationDirection

public class KenBurnsEntity
{

    private AnimationDirection direction;
    private String url;

    public KenBurnsEntity(String s, AnimationDirection animationdirection)
    {
        url = s;
        direction = animationdirection;
    }

    public AnimationDirection getDirection()
    {
        return direction;
    }

    public String getUrl()
    {
        return url;
    }

    public void setDirection(AnimationDirection animationdirection)
    {
        direction = animationdirection;
    }

    public void setUrl(String s)
    {
        url = s;
    }
}
