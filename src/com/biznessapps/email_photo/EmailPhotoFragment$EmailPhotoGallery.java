// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.email_photo;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.widgets.LoaderImageView;
import java.util.List;

// Referenced classes of package com.biznessapps.email_photo:
//            EmailPhotoFragment

public class this._cls0 extends AbstractAdapter
{

    final EmailPhotoFragment this$0;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        String s;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.utItemResourceId();
            viewgroup.mage((LoaderImageView)view.findViewById(com.biznessapps.layout.etLoaderImage));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.mage)view.getTag();
        }
        s = (String)getItem(i);
        try
        {
            Uri.parse(s);
            com.biznessapps.utils.google.caching.  = new com.biznessapps.utils.google.caching.mResourceId();
            .mResourceId(viewgroup.mage());
            .mResourceId(null);
            .mResourceId(s);
            .rc(true);
            .ype(2);
            .ormType(4);
            viewgroup.mage().setImageDrawable(s, );
        }
        // Misplaced declaration of an exception variable
        catch (ViewGroup viewgroup)
        {
            StorageKeeper.instance().removePhotos(s);
            return view;
        }
        return view;
    }

    public (Context context, List list, UiSettings uisettings)
    {
        this$0 = EmailPhotoFragment.this;
        super(context, list, com.biznessapps.layout.lery.this._fld0, uisettings);
    }
}
