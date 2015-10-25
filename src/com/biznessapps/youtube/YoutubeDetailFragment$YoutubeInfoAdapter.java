// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import java.util.List;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeDetailFragment

public class this._cls0 extends AbstractAdapter
{

    final YoutubeDetailFragment this$0;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        this._cls0 _lcls0;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new layoutItemResourceId(null);
            viewgroup.layoutItemResourceId = (TextView)view.findViewById(com.biznessapps.layout..layoutItemResourceId);
            viewgroup.layoutItemResourceId = (TextView)view.findViewById(com.biznessapps.layout..layoutItemResourceId);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (layoutItemResourceId)view.getTag();
        }
        _lcls0 = (layoutItemResourceId)getItem(i);
        if (_lcls0 != null)
        {
            ((getItem) (viewgroup)).getItem.setText(_lcls0.Title());
            ((Title) (viewgroup)).Title.setText(_lcls0.LabelValue());
            if (_lcls0.Color())
            {
                view.setBackgroundDrawable(getListItemDrawable(_lcls0.ItemColor()));
                setTextColorToView(_lcls0.ItemTextColor(), new TextView[] {
                    ((ItemTextColor) (viewgroup)).ItemTextColor, ((ItemTextColor) (viewgroup)).ItemTextColor
                });
            }
        }
        return view;
    }

    public (Context context, List list, UiSettings uisettings)
    {
        this$0 = YoutubeDetailFragment.this;
        super(context, list, com.biznessapps.layout..this._fld0, uisettings);
    }
}
