// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

public interface WheelViewAdapter
{

    public abstract View getEmptyItem(View view, ViewGroup viewgroup);

    public abstract View getItem(int i, View view, ViewGroup viewgroup);

    public abstract int getItemsCount();

    public abstract void registerDataSetObserver(DataSetObserver datasetobserver);

    public abstract void unregisterDataSetObserver(DataSetObserver datasetobserver);
}
