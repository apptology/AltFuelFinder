// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.view.View;
import com.biznessapps.api.UiSettings;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageWorker

public static class view
    implements Cloneable
{

    private int imageFormType;
    private int imageType;
    private boolean isImageSrc;
    private k loadCallback;
    private UiSettings settings;
    private k tint;
    private String url;
    private View view;

    public Object clone()
        throws CloneNotSupportedException
    {
        return super.clone();
    }

    public int getImageFormType()
    {
        return imageFormType;
    }

    public int getImageType()
    {
        return imageType;
    }

    public k getLoadCallback()
    {
        return loadCallback;
    }

    public UiSettings getSettings()
    {
        return settings;
    }

    public settings getTint()
    {
        return tint;
    }

    public String getUrl()
    {
        return url;
    }

    public View getView()
    {
        return view;
    }

    public boolean isImageSrc()
    {
        return isImageSrc;
    }

    public void setImageFormType(int i)
    {
        imageFormType = i;
    }

    public void setImageSrc(boolean flag)
    {
        isImageSrc = flag;
    }

    public void setImageType(int i)
    {
        imageType = i;
    }

    public void setLoadCallback(k k)
    {
        loadCallback = k;
    }

    public void setSettings(UiSettings uisettings)
    {
        settings = uisettings;
    }

    public void setTint(settings settings1)
    {
        tint = settings1;
    }

    public void setUrl(String s)
    {
        url = s;
    }

    public void setView(View view1)
    {
        view = view1;
    }


/*
    static k access$002(k k, k k1)
    {
        k.loadCallback = k1;
        return k1;
    }

*/


    public loadCallback()
    {
        imageType = 1;
        imageFormType = 0;
    }

    public imageFormType(String s, View view1)
    {
        imageType = 1;
        imageFormType = 0;
        url = s;
        view = view1;
    }
}
