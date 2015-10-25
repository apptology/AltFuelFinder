// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractAdapter extends ArrayAdapter
    implements AppConstants
{
    public static interface PositionListener
    {

        public abstract void onLastPositionAchieved(int i);
    }


    protected int currentItemIndex;
    protected ImageFetcher imageFetcher;
    protected LayoutInflater inflater;
    protected int layoutItemResourceId;
    private List positionListeners;
    protected UiSettings settings;

    public AbstractAdapter(Activity activity, List list, int i, UiSettings uisettings)
    {
        this(activity.getApplicationContext(), list, i, uisettings);
    }

    public AbstractAdapter(Context context, List list, int i, UiSettings uisettings)
    {
        super(context, 0, list);
        inflater = LayoutInflater.from(getContext());
        currentItemIndex = -1;
        positionListeners = new ArrayList();
        layoutItemResourceId = i;
        imageFetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        settings = uisettings;
    }

    public void addPositionListener(PositionListener positionlistener)
    {
        positionListeners.add(positionlistener);
    }

    protected void checkPositioning(int i, View view, ViewGroup viewgroup)
    {
        if (i == getCount() - 1)
        {
            view = positionListeners.iterator();
            do
            {
                if (!view.hasNext())
                {
                    break;
                }
                viewgroup = (PositionListener)view.next();
                if (viewgroup != null)
                {
                    viewgroup.onLastPositionAchieved(i);
                }
            } while (true);
        }
    }

    protected StateListDrawable getListItemDrawable(int i)
    {
        return CommonUtils.getListItemDrawable(settings, i);
    }

    public void removePositionListener(PositionListener positionlistener)
    {
        positionListeners.remove(positionlistener);
    }

    public void setCurrentItemIndex(int i)
    {
        currentItemIndex = i;
    }

    protected transient void setTextColorToView(int i, TextView atextview[])
    {
        if (atextview != null && atextview.length > 0)
        {
            for (int j = 0; j < atextview.length; j++)
            {
                atextview[j].setTextColor(i);
            }

        }
    }
}
