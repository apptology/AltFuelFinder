// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.search;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.news.SearchEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.search:
//            GlobalSearchFragment

private class inflater extends AbstractAdapter
{

    final GlobalSearchFragment this$0;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        byte byte0 = 8;
        SearchEntity searchentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new it>(null);
            viewgroup.tent = (TextView)view.findViewById(com.biznessapps.layout.tent);
            viewgroup.mbnailView = (ImageView)view.findViewById(com.biznessapps.layout.mbnailView);
            viewgroup.htArrowView = (ImageView)view.findViewById(com.biznessapps.layout.htArrowView);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (htArrowView)view.getTag();
        }
        searchentity = (SearchEntity)getItem(i);
        if (searchentity != null)
        {
            ((getItem) (viewgroup)).tent.setText(Html.fromHtml(searchentity.getText()));
            boolean flag1 = StringUtils.isNotEmpty(searchentity.getThumbnail());
            boolean flag = true;
            i = ((flag) ? 1 : 0);
            if (StringUtils.isNotEmpty(searchentity.getNewsType()))
            {
                i = ((flag) ? 1 : 0);
                if (StringUtils.isEmpty(searchentity.getLink()))
                {
                    i = 0;
                }
            }
            ImageView imageview = ((tent) (viewgroup)).htArrowView;
            if (i != 0)
            {
                i = 0;
            } else
            {
                i = 8;
            }
            imageview.setVisibility(i);
            imageview = ((htArrowView) (viewgroup)).mbnailView;
            i = byte0;
            if (flag1)
            {
                i = 0;
            }
            imageview.setVisibility(i);
            imageFetcher.loadRoundedBackground(searchentity.getThumbnail(), ((dedBackground) (viewgroup)).mbnailView);
            if (searchentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(searchentity.getItemColor()));
                setTextColorToView(searchentity.getItemTextColor(), new TextView[] {
                    ((setTextColorToView) (viewgroup)).tent
                });
            }
        }
        return view;
    }

    public (Context context, List list, UiSettings uisettings)
    {
        this$0 = GlobalSearchFragment.this;
        super(context, list, com.biznessapps.layout.this._fld0, uisettings);
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
    }
}
