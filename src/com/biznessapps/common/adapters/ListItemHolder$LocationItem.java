// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.common.adapters:
//            ListItemHolder

public static class A
{

    private TextView distanceView;
    private ImageView locationImage;
    private ImageView rightArrowView;
    private TextView statusView;
    private TextView textViewAddress;
    private TextView textViewCity;

    public TextView getDistanceView()
    {
        return distanceView;
    }

    public ImageView getLocationImage()
    {
        return locationImage;
    }

    public ImageView getRightArrowView()
    {
        return rightArrowView;
    }

    public TextView getStatusView()
    {
        return statusView;
    }

    public TextView getTextViewAddress()
    {
        return textViewAddress;
    }

    public TextView getTextViewCity()
    {
        return textViewCity;
    }

    public void setDistanceView(TextView textview)
    {
        distanceView = textview;
    }

    public void setLocationImage(ImageView imageview)
    {
        locationImage = imageview;
    }

    public void setRightArrowView(ImageView imageview)
    {
        rightArrowView = imageview;
    }

    public void setStatusView(TextView textview)
    {
        statusView = textview;
    }

    public void setTextViewAddress(TextView textview)
    {
        textViewAddress = textview;
    }

    public void setTextViewCity(TextView textview)
    {
        textViewCity = textview;
    }

    public A()
    {
    }
}
