// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.podcasts;

import android.view.View;
import com.biznessapps.rss.RssEntity;

// Referenced classes of package com.biznessapps.podcasts:
//            PodcastAdapter

class val.item
    implements android.view.ner
{

    final PodcastAdapter this$0;
    final RssEntity val$item;
    final int val$position;

    public void onClick(View view)
    {
        if (PodcastAdapter.access$100(PodcastAdapter.this) != null)
        {
            PodcastAdapter.access$100(PodcastAdapter.this).onPlay(val$position, val$item);
        }
    }

    PodcastClickListener()
    {
        this$0 = final_podcastadapter;
        val$position = i;
        val$item = RssEntity.this;
        super();
    }
}
