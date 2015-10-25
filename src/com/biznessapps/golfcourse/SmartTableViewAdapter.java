// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;

public abstract class SmartTableViewAdapter
{

    protected Context mContext;
    private DataSetObserver mDataObserver;

    public SmartTableViewAdapter(Context context)
    {
        mContext = context;
    }

    public abstract int getColumnCount();

    public abstract View getContentView(View view, int i, int j);

    public abstract View getFrozenColumnHeaderItemView(View view, int i);

    public abstract View getFrozenCrossHeaderItemView(View view);

    public abstract View getFrozenRowHeaderItemView(View view, int i);

    public abstract int getRowCount();

    public void notifyDataSetChanged()
    {
        if (mDataObserver != null)
        {
            mDataObserver.onChanged();
        }
    }

    void registerDataSetObserver(DataSetObserver datasetobserver)
    {
        mDataObserver = datasetobserver;
    }

    void unregisterDataSetObserver()
    {
        mDataObserver = null;
    }
}
