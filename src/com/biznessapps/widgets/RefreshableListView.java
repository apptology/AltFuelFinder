// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Adapter;
import android.widget.ListAdapter;
import com.biznessapps.common.adapters.AbstractAdapter;

// Referenced classes of package com.biznessapps.widgets:
//            ExpandableListView

public class RefreshableListView extends ExpandableListView
{

    private com.biznessapps.common.adapters.AbstractAdapter.PositionListener positionListener;

    public RefreshableListView(Context context)
    {
        super(context);
        setExpandOn(false);
        setDividerHeight(0);
    }

    public RefreshableListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setDividerHeight(0);
    }

    public RefreshableListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        setDividerHeight(0);
    }

    public void removeListeners()
    {
        if (getAdapter() != null && (getAdapter() instanceof AbstractAdapter))
        {
            ((AbstractAdapter)getAdapter()).removePositionListener(positionListener);
        }
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((ListAdapter)adapter);
    }

    public void setAdapter(ListAdapter listadapter)
    {
        super.setAdapter(listadapter);
        if (listadapter instanceof AbstractAdapter)
        {
            ((AbstractAdapter)listadapter).addPositionListener(positionListener);
        }
    }

    public void setPositionListener(com.biznessapps.common.adapters.AbstractAdapter.PositionListener positionlistener)
    {
        positionListener = positionlistener;
    }
}
