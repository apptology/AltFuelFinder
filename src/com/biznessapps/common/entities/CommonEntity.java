// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.entities;

import com.biznessapps.constants.AppConstants;
import java.io.Serializable;

// Referenced classes of package com.biznessapps.common.entities:
//            NetworkResultEntity

public class CommonEntity
    implements Serializable, AppConstants
{

    private static final long serialVersionUID = 0x929eaa55c8fe318bL;
    protected String description;
    protected String id;
    protected String imageUrl;
    private NetworkResultEntity networkResult;
    private Object object;
    protected String title;

    public CommonEntity()
    {
        networkResult = new NetworkResultEntity();
        title = "";
        description = "";
    }

    public String getDescription()
    {
        return description;
    }

    public String getId()
    {
        return id;
    }

    public String getImageUrl()
    {
        return imageUrl;
    }

    public NetworkResultEntity getNetworkResult()
    {
        return networkResult;
    }

    public Object getObject()
    {
        return object;
    }

    public String getTitle()
    {
        return title;
    }

    public void setDescription(String s)
    {
        if (s == null)
        {
            description = "";
            return;
        } else
        {
            description = s;
            return;
        }
    }

    public void setId(String s)
    {
        String s1;
label0:
        {
            if (s != null)
            {
                s1 = s;
                if (!s.equalsIgnoreCase("0"))
                {
                    break label0;
                }
            }
            s1 = "";
        }
        id = s1;
    }

    public void setImageUrl(String s)
    {
        imageUrl = s;
    }

    public void setObject(Object obj)
    {
        object = obj;
    }

    public void setTitle(String s)
    {
        title = s;
    }
}
