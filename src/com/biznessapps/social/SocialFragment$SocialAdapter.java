// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.CommonUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

public class t> extends AbstractAdapter
{

    final SocialFragment this$0;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        final t> item;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new it>(null);
            viewgroup.el = (TextView)view.findViewById(com.biznessapps.layout.el);
            viewgroup.ton = (Button)view.findViewById(com.biznessapps.layout.ton);
            viewgroup.le = (TextView)view.findViewById(com.biznessapps.layout.le);
            viewgroup.nImage = (ImageView)view.findViewById(com.biznessapps.layout.nImage);
            ((nImage) (viewgroup)).ton.setTextColor(settings.getButtonTextColor());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((settings) (viewgroup)).ton.getBackground());
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ton)view.getTag();
        }
        item = (ton)getItem(i);
        if (item != null)
        {
            ((getItem) (viewgroup)).le.setText(item.Title());
            ((Title) (viewgroup)).el.setText(item.LabelValue());
            ((LabelValue) (viewgroup)).ton.setText(item.LabelValue());
            ((LabelValue) (viewgroup)).ton.setOnClickListener(new android.view.View.OnClickListener() {

                final SocialFragment.SocialAdapter this$1;
                final SocialFragment.SocialItem val$item;

                public void onClick(View view1)
                {
                    SocialFragment.access$400(this$0, item);
                }

            
            {
                this$1 = SocialFragment.SocialAdapter.this;
                item = socialitem;
                super();
            }
            });
            if (item.IconId() > 0)
            {
                ((IconId) (viewgroup)).nImage.setBackgroundResource(item.IconId());
                ((IconId) (viewgroup)).nImage.setVisibility(0);
                ((nImage) (viewgroup)).el.setVisibility(8);
                ((el) (viewgroup)).ton.setVisibility(0);
            } else
            {
                ((ton) (viewgroup)).nImage.setVisibility(8);
                ((nImage) (viewgroup)).el.setVisibility(0);
                ((el) (viewgroup)).ton.setVisibility(8);
            }
            if (item.Color())
            {
                view.setBackgroundDrawable(getListItemDrawable(item.ItemColor()));
                setTextColorToView(item.ItemTextColor(), new TextView[] {
                    ((ItemTextColor) (viewgroup)).le, ((le) (viewgroup)).el
                });
            }
        }
        return view;
    }

    public _cls1.val.item(Context context, List list, UiSettings uisettings)
    {
        this$0 = SocialFragment.this;
        super(context, list, com.biznessapps.layout.t>, uisettings);
    }
}
