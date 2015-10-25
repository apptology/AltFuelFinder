// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.podcasts;

import com.biznessapps.rss.RssEntity;

// Referenced classes of package com.biznessapps.podcasts:
//            PodcastsListFragment

class this._cls0
    implements tClickListener
{

    final PodcastsListFragment this$0;

    public void onPlay(int i, RssEntity rssentity)
    {
        PodcastsListFragment.access$200(PodcastsListFragment.this, i, rssentity);
    }

    tClickListener()
    {
        this$0 = PodcastsListFragment.this;
        super();
    }
}
