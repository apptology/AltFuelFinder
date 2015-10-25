// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import java.util.List;

public abstract class AsyncCallback
{

    private Object meta;

    public AsyncCallback()
    {
    }

    public AsyncCallback(Object obj)
    {
        setMeta(obj);
    }

    public Object getMeta()
    {
        return meta;
    }

    public void onError(int i, Throwable throwable)
    {
    }

    public void onError(String s, Throwable throwable)
    {
    }

    public void onResult()
    {
    }

    public void onResult(Object obj)
    {
        if (obj != null)
        {
            onResult();
            return;
        } else
        {
            onError("Results is null", null);
            return;
        }
    }

    public void onResult(List list)
    {
        if (list != null && list.size() > 0)
        {
            onResult(list.get(0));
            return;
        } else
        {
            onResult();
            return;
        }
    }

    public void setMeta(Object obj)
    {
        meta = obj;
    }
}
