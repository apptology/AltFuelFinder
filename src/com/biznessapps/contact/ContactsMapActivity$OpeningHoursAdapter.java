// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.contact;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import java.util.List;

// Referenced classes of package com.biznessapps.contact:
//            ContactsMapActivity

public class this._cls0 extends AbstractAdapter
{

    final ContactsMapActivity this$0;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        this._cls0 _lcls0;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new layoutItemResourceId(null);
            viewgroup. = (TextView)view.findViewById(com.biznessapps.layout.l);
            viewgroup.l = (TextView)view.findViewById(com.biznessapps.layout.el);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (l)view.getTag();
        }
        _lcls0 = (l)getItem(i);
        if (_lcls0 != null)
        {
            ((getItem) (viewgroup))..setText(_lcls0.eftLabel());
            ((eftLabel) (viewgroup)).l.setText(_lcls0.ightLabel());
            if (_lcls0.olor())
            {
                view.setBackgroundDrawable(getListItemDrawable(_lcls0.temColor()));
                setTextColorToView(_lcls0.temTextColor(), new TextView[] {
                    ((temTextColor) (viewgroup))., (() (viewgroup)).l
                });
            }
        }
        return view;
    }

    public (Context context, List list, UiSettings uisettings)
    {
        this$0 = ContactsMapActivity.this;
        super(context, list, com.biznessapps.layout..this._fld0, uisettings);
    }
}
