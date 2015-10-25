// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;

// Referenced classes of package com.biznessapps.widgets:
//            CommonStyleableComponent, CommonNavigationButton

public class CommonNavigationBar extends FrameLayout
{

    private String defaultNavigationButtonValue;
    private String title;
    private TextView tvTitle;
    private CommonNavigationButton vgDefaultNavigationButton;
    private ViewGroup vgLeftNavigationButtonGroup;
    private int vgLeftNavigationButtonGroupResId;
    private ViewGroup vgRightNavigationButtonGroup;
    private int vgRightNavigationButtonGroupResId;
    private ViewGroup vgRoot;

    public CommonNavigationBar(Context context)
    {
        this(context, null);
    }

    public CommonNavigationBar(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public CommonNavigationBar(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initAttrs(attributeset);
        initUI();
    }

    private void applyStyle(ViewGroup viewgroup, UiSettings uisettings)
    {
        int i = 0;
        while (i < getChildCount()) 
        {
            viewgroup = getChildAt(i);
            if (viewgroup instanceof ViewGroup)
            {
                applyStyle((ViewGroup)viewgroup, uisettings);
            } else
            if (viewgroup instanceof CommonStyleableComponent)
            {
                ((CommonStyleableComponent)viewgroup).applyStyle(uisettings);
            }
            i++;
        }
        CommonUtils.overrideMediumButtonColor(uisettings.getNavigationBarColor(), vgDefaultNavigationButton.getBackground());
    }

    private void initAttrs(AttributeSet attributeset)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.biznessapps.layout.R.styleable.CommonTitleBar);
        title = attributeset.getString(0);
        vgLeftNavigationButtonGroupResId = attributeset.getResourceId(1, 0);
        vgRightNavigationButtonGroupResId = attributeset.getResourceId(2, 0);
        defaultNavigationButtonValue = attributeset.getString(3);
        attributeset.recycle();
    }

    private void initUI()
    {
        vgRoot = (ViewGroup)View.inflate(getContext(), com.biznessapps.layout.R.layout.common_title_bar_layout, this);
        tvTitle = (TextView)vgRoot.findViewById(com.biznessapps.layout.R.id.tvTitle);
        if (title != null)
        {
            tvTitle.setText(title);
        }
        vgDefaultNavigationButton = (CommonNavigationButton)vgRoot.findViewById(com.biznessapps.layout.R.id.btDefaultRightNavigation);
        vgLeftNavigationButtonGroup = (ViewGroup)vgRoot.findViewById(com.biznessapps.layout.R.id.flLeftNavigationButtonGroup);
        if (vgLeftNavigationButtonGroupResId != 0)
        {
            vgLeftNavigationButtonGroup.setVisibility(0);
            View view = findViewById(vgLeftNavigationButtonGroupResId);
            if (view.getParent() != null)
            {
                ((ViewGroup)view.getParent()).removeView(view);
            }
            vgLeftNavigationButtonGroup.addView(view);
        } else
        {
            vgLeftNavigationButtonGroup.setVisibility(8);
        }
        vgRightNavigationButtonGroup = (ViewGroup)vgRoot.findViewById(com.biznessapps.layout.R.id.flRightNavigationButtonGroup);
        if (vgRightNavigationButtonGroupResId != 0)
        {
            vgRightNavigationButtonGroup.setVisibility(0);
            vgDefaultNavigationButton.setVisibility(8);
        } else
        {
            vgRightNavigationButtonGroup.setVisibility(8);
            vgDefaultNavigationButton.setVisibility(0);
        }
        updateUI();
    }

    private void updateUI()
    {
    }

    public void applyStyles(UiSettings uisettings)
    {
        applyTitleBarStyle(uisettings);
        applyStyle(this, uisettings);
    }

    public void applyTitleBarStyle(UiSettings uisettings)
    {
        initTitleBar(uisettings.getNavigationTextColor(), uisettings.getNavigationTextShadowColor(), uisettings.getNavigationBarColor(), uisettings.getNavTintOpacity(), uisettings.getGlobalHeaderUrl());
    }

    public void initTitleBar(int i, int j, int k, float f, String s)
    {
        TextView textview = (TextView)findViewById(com.biznessapps.layout.R.id.tab_title_text);
        if (textview != null)
        {
            if (StringUtils.isNotEmpty(title))
            {
                textview.setText(Html.fromHtml(title));
            }
            textview.setTextColor(i);
            textview.setShadowLayer(1.2F, 1.2F, 1.2F, j);
            textview.setVisibility(0);
        }
        setBackgroundColor(k);
        if (StringUtils.isNotEmpty(s))
        {
            com.biznessapps.utils.google.caching.ImageWorker.TintContainer tintcontainer = new com.biznessapps.utils.google.caching.ImageWorker.TintContainer();
            tintcontainer.setTintColor(k);
            tintcontainer.setTintOpacity(f);
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadImage(s, this, tintcontainer);
            if (s.contains("custom"))
            {
                s = getLayoutParams();
                if (s instanceof android.widget.FrameLayout.LayoutParams)
                {
                    ((android.widget.FrameLayout.LayoutParams)s).gravity = 16;
                } else
                if (s instanceof android.widget.LinearLayout.LayoutParams)
                {
                    ((android.widget.LinearLayout.LayoutParams)s).gravity = 16;
                }
                j = AppCore.getInstance().getDeviceWidth();
                if (AppCore.getInstance().isTablet())
                {
                    i = 8;
                } else
                {
                    i = 5;
                }
                i = j / i;
                s.width = -1;
                s.height = i;
            }
            return;
        } else
        {
            setBackgroundDrawable(ViewUtils.getTitleBg(k));
            return;
        }
    }

    public void setTitle(String s)
    {
        title = s;
    }
}
