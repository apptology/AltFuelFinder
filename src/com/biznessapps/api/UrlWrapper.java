// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;


public class UrlWrapper
{
    private static class UrlWrapperHolder
    {

        private static final UrlWrapper instance = new UrlWrapper();



        private UrlWrapperHolder()
        {
        }
    }


    private static final String DEV = "dev";
    public static final String LIVE_HOST_URL = "https://www.cdnstabletransit.com/";
    private static final String PHP_PAGE_PATH = "iphone/1.1.1/";
    public static final String SANDBOX_HOST_URL = "https://dev.biznessapps.com/";
    private static final String STAGING = "staging";
    public static final String STAGING_HOST_URL = "https://staging.biznessapps.com/";
    private boolean useSandbox;
    private boolean useStaging;

    private UrlWrapper()
    {
        useSandbox = false;
        useStaging = false;
    }


    public static UrlWrapper getInstance()
    {
        return UrlWrapperHolder.instance;
    }

    public void clearState()
    {
        useSandbox = false;
        useStaging = false;
    }

    public String getFullUrl(String s)
    {
        return (new StringBuilder()).append(getHost()).append("iphone/1.1.1/").append(s).toString();
    }

    public String getGalleryPrevewUrlFormat()
    {
        return (new StringBuilder()).append(getHost()).append("gallery_thumbnails/%s.%s").toString();
    }

    public String getGalleryThumbplayUrlFormat()
    {
        return (new StringBuilder()).append(getHost()).append("gallery_thumbnails/%s.%s?width=400").toString();
    }

    public String getHost()
    {
        if (useSandbox)
        {
            return "https://dev.biznessapps.com/";
        }
        if (useStaging)
        {
            return "https://staging.biznessapps.com/";
        } else
        {
            return "https://www.cdnstabletransit.com/";
        }
    }

    public boolean isUseSandbox()
    {
        return useSandbox;
    }

    public void setPredefinedHost(String s)
    {
        if (s != null)
        {
            if (s.equalsIgnoreCase("staging"))
            {
                useStaging();
            } else
            if (s.equalsIgnoreCase("dev"))
            {
                useSandbox();
                return;
            }
        }
    }

    public void useSandbox()
    {
        useSandbox = true;
    }

    public void useStaging()
    {
        useStaging = true;
    }
}
