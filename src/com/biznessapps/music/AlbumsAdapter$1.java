// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.view.View;
import android.widget.ImageView;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;

// Referenced classes of package com.biznessapps.music:
//            AlbumsAdapter, AlbumEntity, TracksAdapter

class val.arrowImage
    implements android.view.ener
{

    final AlbumsAdapter this$0;
    final ImageView val$arrowImage;
    final AlbumEntity val$item;
    final RefreshableListView val$tracksListView;

    public void onClick(View view)
    {
        boolean flag;
        if (!val$item.isExtended())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            view = new TracksAdapter(getContext(), ViewUtils.wrapWithItemSettings(val$item.getTracks(), AlbumsAdapter.access$000(AlbumsAdapter.this)), AlbumsAdapter.access$100(AlbumsAdapter.this));
            view.setShowDuration();
            view.setListener(AlbumsAdapter.access$200(AlbumsAdapter.this));
            val$tracksListView.setVisibility(0);
            val$tracksListView.setAdapter(view);
            AlbumsAdapter.access$300(val$tracksListView);
            val$tracksListView.setVisibility(0);
            val$arrowImage.setBackgroundResource(com.biznessapps.layout._up);
            val$item.setExtended(true);
            return;
        } else
        {
            val$tracksListView.setVisibility(8);
            val$arrowImage.setBackgroundResource(com.biznessapps.layout._down);
            val$item.setExtended(false);
            return;
        }
    }

    tView()
    {
        this$0 = final_albumsadapter;
        val$item = albumentity;
        val$tracksListView = refreshablelistview;
        val$arrowImage = ImageView.this;
        super();
    }
}
