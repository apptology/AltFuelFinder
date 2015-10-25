// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import com.biznessapps.common.entities.CommonListEntity;

public class ActivityEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0xf5e0faa82f6944f0L;
    private int action;
    private String avatarUrl;
    private String name;
    private String perk;
    private int points;
    private int sequence;

    public ActivityEntity()
    {
    }

    public int getAction()
    {
        return action;
    }

    public String getAvatarUrl()
    {
        return avatarUrl;
    }

    public String getName()
    {
        return name;
    }

    public String getPerk()
    {
        return perk;
    }

    public int getPoints()
    {
        return points;
    }

    public int getSequence()
    {
        return sequence;
    }

    public void setAction(int i)
    {
        action = i;
    }

    public void setAvatarUrl(String s)
    {
        avatarUrl = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPerk(String s)
    {
        perk = s;
    }

    public void setPoints(int i)
    {
        points = i;
    }

    public void setSequence(int i)
    {
        sequence = i;
    }
}
