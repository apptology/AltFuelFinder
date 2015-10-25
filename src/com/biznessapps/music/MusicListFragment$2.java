// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.music:
//            MusicListFragment, PlaylistEntity

class this._cls0
    implements kClickListener
{

    final MusicListFragment this$0;

    public void onBuy(PlaylistEntity playlistentity)
    {
        ViewUtils.openLinkInBrowser(getApplicationContext(), playlistentity.getItune());
    }

    public void onItemClick(PlaylistEntity playlistentity)
    {
        MusicListFragment.access$400(MusicListFragment.this, playlistentity);
    }

    public void onPlay(PlaylistEntity playlistentity)
    {
        MusicListFragment.access$300(MusicListFragment.this, playlistentity);
    }

    kClickListener()
    {
        this$0 = MusicListFragment.this;
        super();
    }
}
