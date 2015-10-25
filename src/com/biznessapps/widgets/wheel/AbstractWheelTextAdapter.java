// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.wheel;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Typeface;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.widgets.wheel:
//            WheelViewAdapter

public abstract class AbstractWheelTextAdapter
    implements WheelViewAdapter
{

    public static final int DEFAULT_TEXT_COLOR = 0xff101010;
    public static final int DEFAULT_TEXT_SIZE = 24;
    public static final int LABEL_COLOR = 0xff700070;
    protected static final int NO_RESOURCE = 0;
    public static final int TEXT_VIEW_ITEM_RESOURCE = -1;
    protected Context context;
    private List datasetObservers;
    protected int emptyItemResourceId;
    protected LayoutInflater inflater;
    protected int itemResourceId;
    protected int itemTextResourceId;
    private int textColor;
    private int textSize;

    protected AbstractWheelTextAdapter(Context context1)
    {
        this(context1, -1);
    }

    protected AbstractWheelTextAdapter(Context context1, int i)
    {
        this(context1, i, 0);
    }

    protected AbstractWheelTextAdapter(Context context1, int i, int j)
    {
        textColor = 0xff101010;
        textSize = 24;
        context = context1;
        itemResourceId = i;
        itemTextResourceId = j;
        inflater = (LayoutInflater)context1.getSystemService("layout_inflater");
    }

    private TextView getTextView(View view, int i)
    {
        if (i == 0)
        {
            try
            {
                if (view instanceof TextView)
                {
                    return (TextView)view;
                }
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("AbstractWheelAdapter", "You must supply a resource ID for a TextView");
                throw new IllegalStateException("AbstractWheelAdapter requires the resource ID to be a TextView", view);
            }
        }
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        view = (TextView)view.findViewById(i);
        return view;
        return null;
    }

    private View getView(int i, ViewGroup viewgroup)
    {
        switch (i)
        {
        default:
            return inflater.inflate(i, viewgroup, false);

        case 0: // '\0'
            return null;

        case -1: 
            return new TextView(context);
        }
    }

    protected void configureTextView(TextView textview)
    {
        textview.setTextColor(textColor);
        textview.setGravity(17);
        textview.setTextSize(textSize);
        textview.setLines(1);
        textview.setTypeface(Typeface.SANS_SERIF, 1);
    }

    public View getEmptyItem(View view, ViewGroup viewgroup)
    {
        View view1 = view;
        if (view == null)
        {
            view1 = getView(emptyItemResourceId, viewgroup);
        }
        if (emptyItemResourceId == -1 && (view1 instanceof TextView))
        {
            configureTextView((TextView)view1);
        }
        return view1;
    }

    public int getEmptyItemResource()
    {
        return emptyItemResourceId;
    }

    public View getItem(int i, View view, ViewGroup viewgroup)
    {
        if (i >= 0 && i < getItemsCount())
        {
            View view1 = view;
            if (view == null)
            {
                view1 = getView(itemResourceId, viewgroup);
            }
            TextView textview = getTextView(view1, itemTextResourceId);
            if (textview != null)
            {
                viewgroup = getItemText(i);
                view = viewgroup;
                if (viewgroup == null)
                {
                    view = "";
                }
                textview.setText(view);
                if (itemResourceId == -1)
                {
                    configureTextView(textview);
                }
            }
            return view1;
        } else
        {
            return null;
        }
    }

    public int getItemResource()
    {
        return itemResourceId;
    }

    protected abstract CharSequence getItemText(int i);

    public int getItemTextResource()
    {
        return itemTextResourceId;
    }

    public int getTextColor()
    {
        return textColor;
    }

    public int getTextSize()
    {
        return textSize;
    }

    protected void notifyDataChangedEvent()
    {
        if (datasetObservers != null)
        {
            for (Iterator iterator = datasetObservers.iterator(); iterator.hasNext(); ((DataSetObserver)iterator.next()).onChanged()) { }
        }
    }

    protected void notifyDataInvalidatedEvent()
    {
        if (datasetObservers != null)
        {
            for (Iterator iterator = datasetObservers.iterator(); iterator.hasNext(); ((DataSetObserver)iterator.next()).onInvalidated()) { }
        }
    }

    public void registerDataSetObserver(DataSetObserver datasetobserver)
    {
        if (datasetObservers == null)
        {
            datasetObservers = new LinkedList();
        }
        datasetObservers.add(datasetobserver);
    }

    public void setEmptyItemResource(int i)
    {
        emptyItemResourceId = i;
    }

    public void setItemResource(int i)
    {
        itemResourceId = i;
    }

    public void setItemTextResource(int i)
    {
        itemTextResourceId = i;
    }

    public void setTextColor(int i)
    {
        textColor = i;
    }

    public void setTextSize(int i)
    {
        textSize = i;
    }

    public void unregisterDataSetObserver(DataSetObserver datasetobserver)
    {
        if (datasetObservers != null)
        {
            datasetObservers.remove(datasetobserver);
        }
    }
}
