// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import java.io.Serializable;
import java.util.List;

public class ResellerInfo
    implements Serializable
{
    public static class AppInfo
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

        public AppInfo()
        {
        }
    }


    private static final long serialVersionUID = 0x9a0f36a00a31e6efL;
    private List apps;
    private int headerBgColor;
    private boolean isActive;
    private String locations;
    private String name;
    private String ownerEmail;
    private String partnerContactEmail;
    private String partnerDomain;
    private String partnerName;
    private String partnerSupportEmail;
    private String phone;
    private String username;

    public ResellerInfo()
    {
        headerBgColor = 0xff888888;
    }

    public List getApps()
    {
        return apps;
    }

    public int getHeaderBgColor()
    {
        return headerBgColor;
    }

    public String getLocations()
    {
        return locations;
    }

    public String getName()
    {
        return name;
    }

    public String getOwnerEmail()
    {
        return ownerEmail;
    }

    public String getPartnerContactEmail()
    {
        return partnerContactEmail;
    }

    public String getPartnerDomain()
    {
        return partnerDomain;
    }

    public String getPartnerName()
    {
        return partnerName;
    }

    public String getPartnerSupportEmail()
    {
        return partnerSupportEmail;
    }

    public String getPhone()
    {
        return phone;
    }

    public String getUsername()
    {
        return username;
    }

    public boolean isActive()
    {
        return isActive;
    }

    public void setActive(boolean flag)
    {
        isActive = flag;
    }

    public void setApps(List list)
    {
        apps = list;
    }

    public void setHeaderBgColor(int i)
    {
        headerBgColor = i;
    }

    public void setLocations(String s)
    {
        locations = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setOwnerEmail(String s)
    {
        ownerEmail = s;
    }

    public void setPartnerContactEmail(String s)
    {
        partnerContactEmail = s;
    }

    public void setPartnerDomain(String s)
    {
        partnerDomain = s;
    }

    public void setPartnerName(String s)
    {
        partnerName = s;
    }

    public void setPartnerSupportEmail(String s)
    {
        partnerSupportEmail = s;
    }

    public void setPhone(String s)
    {
        phone = s;
    }

    public void setUsername(String s)
    {
        username = s;
    }
}
