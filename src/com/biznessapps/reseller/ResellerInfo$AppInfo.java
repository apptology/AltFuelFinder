// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import java.io.Serializable;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerInfo

public static class 
    implements Serializable
{

    private static final long serialVersionUID = 0x85f0ec2ccfdf87dfL;
    private String appCode;
    private String id;
    private boolean isActive;
    private boolean isDemo;
    private boolean isLive;
    private String name;
    private String thumbnail;

    public String getAppCode()
    {
        return appCode;
    }

    public String getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public String getThumbnail()
    {
        return thumbnail;
    }

    public boolean isActive()
    {
        return isActive;
    }

    public boolean isDemo()
    {
        return isDemo;
    }

    public boolean isLive()
    {
        return isLive;
    }

    public void setActive(boolean flag)
    {
        isActive = flag;
    }

    public void setAppCode(String s)
    {
        appCode = s;
    }

    public void setDemo(boolean flag)
    {
        isDemo = flag;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setLive(boolean flag)
    {
        isLive = flag;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setThumbnail(String s)
    {
        thumbnail = s;
    }

    public ()
    {
    }
}
