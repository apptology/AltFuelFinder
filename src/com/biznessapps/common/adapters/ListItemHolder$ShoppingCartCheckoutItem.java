// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.common.adapters:
//            ListItemHolder

public static class 
{

    private ImageView productImageView;
    private TextView productNameView;
    private TextView productPriceView;
    private EditText quantityView;
    private Button removeButton;
    private Button updateButton;

    public ImageView getProductImageView()
    {
        return productImageView;
    }

    public TextView getProductNameView()
    {
        return productNameView;
    }

    public TextView getProductPriceView()
    {
        return productPriceView;
    }

    public EditText getQuantityView()
    {
        return quantityView;
    }

    public Button getRemoveButton()
    {
        return removeButton;
    }

    public Button getUpdateButton()
    {
        return updateButton;
    }

    public void setProductNameView(TextView textview)
    {
        productNameView = textview;
    }

    public void setProductPriceView(TextView textview)
    {
        productPriceView = textview;
    }

    public void setQuantityView(EditText edittext)
    {
        quantityView = edittext;
    }

    public void setRemoveButton(Button button)
    {
        removeButton = button;
    }

    public void setSmallImageView(ImageView imageview)
    {
        productImageView = imageview;
    }

    public void setUpdateButton(Button button)
    {
        updateButton = button;
    }

    public ()
    {
    }
}
