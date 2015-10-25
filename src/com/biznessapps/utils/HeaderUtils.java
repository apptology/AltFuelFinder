// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;

// Referenced classes of package com.biznessapps.utils:
//            CommonUtils

public class HeaderUtils
{

    public HeaderUtils()
    {
    }

    public static void customizeContainer(ViewGroup viewgroup, int i, UiSettings uisettings)
    {
        CommonUtils.overrideImageColor(i, ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.data_container)).getBackground());
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.header);
        textview.setTextColor(uisettings.getSectionTextColor());
        ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.arrow_navigation);
        textview.setOnClickListener(getOnClickListener(imageview, viewgroup, uisettings));
        imageview.setOnClickListener(getOnClickListener(imageview, viewgroup, uisettings));
    }

    private static android.view.View.OnClickListener getOnClickListener(ImageView imageview, ViewGroup viewgroup, UiSettings uisettings)
    {
        return new android.view.View.OnClickListener((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.data_container), (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.header_container), imageview, uisettings) {

            final ImageView val$arrowNavigation;
            final ViewGroup val$dataContainer;
            final ViewGroup val$headerContainer;
            final UiSettings val$uiSettings;

            public void onClick(View view)
            {
                boolean flag;
                if (dataContainer.getVisibility() == 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    dataContainer.setVisibility(8);
                    headerContainer.setBackgroundResource(com.biznessapps.layout.R.drawable.rs_container_closed);
                    arrowNavigation.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_down);
                } else
                {
                    dataContainer.setVisibility(0);
                    arrowNavigation.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_up);
                    headerContainer.setBackgroundResource(com.biznessapps.layout.R.drawable.rs_header_opened);
                }
                CommonUtils.setColorWithoutMutation(uiSettings.getSectionTextColor(), arrowNavigation.getBackground());
                CommonUtils.setColorWithoutMutation(uiSettings.getSectionBarColor(), headerContainer.getBackground());
                headerContainer.getBackground().setAlpha(120);
            }

            
            {
                dataContainer = viewgroup;
                headerContainer = viewgroup1;
                arrowNavigation = imageview;
                uiSettings = uisettings;
                super();
            }
        };
    }

    public static void imageContainerCustomization(ViewGroup viewgroup, UiSettings uisettings)
    {
        ViewGroup viewgroup1 = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.header_container);
        viewgroup1.setBackgroundResource(com.biznessapps.layout.R.drawable.rs_header_opened);
        CommonUtils.setColorWithoutMutation(uisettings.getSectionBarColor(), viewgroup1.getBackground());
        viewgroup1.getBackground().setAlpha(120);
        viewgroup1.setBackgroundResource(com.biznessapps.layout.R.drawable.rs_container_closed);
        CommonUtils.setColorWithoutMutation(uisettings.getSectionBarColor(), viewgroup1.getBackground());
        viewgroup1.getBackground().setAlpha(120);
        viewgroup = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.arrow_navigation);
        viewgroup.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_up);
        CommonUtils.setColorWithoutMutation(uisettings.getSectionTextColor(), viewgroup.getBackground());
        viewgroup.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_down);
        CommonUtils.setColorWithoutMutation(uisettings.getSectionTextColor(), viewgroup.getBackground());
    }
}
