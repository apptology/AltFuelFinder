// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.more;

import java.util.List;

public class TabManager
{
    private static class TabManagerHolder
    {

        private static final TabManager instance = new TabManager();



        private TabManagerHolder()
        {
        }
    }


    private List moreTabsList;

    private TabManager()
    {
    }


    public static TabManager getInstance()
    {
        return TabManagerHolder.instance;
    }

    public List getMoreTabsList()
    {
        return moreTabsList;
    }

    public void setMoreTabsList(List list)
    {
        moreTabsList = list;
    }
}
