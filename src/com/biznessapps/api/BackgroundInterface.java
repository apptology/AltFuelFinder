// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.view.View;

public interface BackgroundInterface
{

    public abstract void applyBackground();

    public abstract View getViewForBg();

    public abstract void setBgUrl(String s);
}