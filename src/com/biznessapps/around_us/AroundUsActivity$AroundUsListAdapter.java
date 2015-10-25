// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsActivity, AroundUsEntity

public class greenIconDrawable extends AbstractAdapter
{

    private String greenColor;
    private Drawable greenIconDrawable;
    private String purpleColor;
    private Drawable purpleIconDrawable;
    private String redColor;
    private Drawable redIconDrawable;
    final AroundUsActivity this$0;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        greenIconDrawable greenicondrawable;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new layoutItemResourceId(null);
            viewgroup.onView = (TextView)view.findViewById(com.biznessapps.layout.ptionView);
            viewgroup.iew = (TextView)view.findViewById(com.biznessapps.layout.ceView);
            viewgroup.iew = (TextView)view.findViewById(com.biznessapps.layout.ryView);
            viewgroup. = (ImageView)view.findViewById(com.biznessapps.layout.age);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = ()view.getTag();
        }
        greenicondrawable = ()getItem(i);
        ((getItem) (viewgroup)).iew.setText(greenicondrawable.e());
        ((e) (viewgroup)).onView.setText((new StringBuilder()).append("\u200E").append(Html.fromHtml(greenicondrawable.onView())).toString());
        LocationUtils.setDistanceValue(getContext(), ((getContext) (viewgroup)).iew, greenicondrawable);
        if (greenicondrawable.iew())
        {
            view.setBackgroundDrawable(getListItemDrawable(greenicondrawable.getListItemDrawable()));
            setTextColorToView(greenicondrawable.or(), new TextView[] {
                ((or) (viewgroup)).onView
            });
        }
        i = ViewUtils.getColor(greenicondrawable.onView());
        setTextColorToView(i, new TextView[] {
            ((setTextColorToView) (viewgroup)).iew, ((iew) (viewgroup)).iew
        });
        CommonUtils.overrideImageColor(i, ((iew) (viewgroup)).iew.getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(i, ((ImageView)view.findViewById(com.biznessapps.layout.ceView)).getBackground());
        if (StringUtils.isNotEmpty(greenicondrawable.iew()))
        {
            imageFetcher.loadCircledImage(greenicondrawable.age(), ((age) (viewgroup)).);
        }
        view.setClickable(false);
        return view;
    }

    public (Context context, List list, UiSettings uisettings)
    {
        this$0 = AroundUsActivity.this;
        super(context, list, com.biznessapps.layout.er.this._fld0, uisettings);
        redIconDrawable = getResources().getDrawable(com.biznessapps.layout.er.redIconDrawable);
        greenIconDrawable = getResources().getDrawable(com.biznessapps.layout.er.greenIconDrawable);
        purpleIconDrawable = getResources().getDrawable(com.biznessapps.layout.er.purpleIconDrawable);
        greenColor = AroundUsActivity.access$200(AroundUsActivity.this).getGreenColor();
        redColor = AroundUsActivity.access$200(AroundUsActivity.this).getRedColor();
        purpleColor = AroundUsActivity.access$200(AroundUsActivity.this).getPurpleColor();
        CommonUtils.overrideImageColor(ViewUtils.getColor(redColor), redIconDrawable);
        CommonUtils.overrideImageColor(ViewUtils.getColor(purpleColor), purpleIconDrawable);
        CommonUtils.overrideImageColor(ViewUtils.getColor(greenColor), greenIconDrawable);
    }
}
