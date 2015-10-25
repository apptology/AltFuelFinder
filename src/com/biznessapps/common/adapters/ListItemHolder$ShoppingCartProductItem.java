// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.common.adapters:
//            ListItemHolder

public static class 
{

    private TextView productNameView;
    private TextView productPriceLabelView;
    private TextView productPriceView;
    private ImageView smallImageView;

    public TextView getProductNameView()
    {
        return productNameView;
    }

    public TextView getProductPriceLabelView()
    {
        return productPriceLabelView;
    }

    public TextView getProductPriceView()
    {
        return productPriceView;
    }

    public ImageView getProductSmallImageView()
    {
        return smallImageView;
    }

    public void setProductNameView(TextView textview)
    {
        productNameView = textview;
    }

    public void setProductPriceLabelView(TextView textview)
    {
        productPriceLabelView = textview;
    }

    public void setProductPriceView(TextView textview)
    {
        productPriceView = textview;
    }

    public void setProductSmallImageView(ImageView imageview)
    {
        smallImageView = imageview;
    }

    public ()
    {
    }
}
