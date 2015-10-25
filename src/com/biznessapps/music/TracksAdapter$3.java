// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.view.View;

// Referenced classes of package com.biznessapps.music:
//            TracksAdapter, PlaylistEntity

class val.item
    implements android.view.ener
{

    final TracksAdapter this$0;
    final PlaylistEntity val$item;

    public void onClick(View view)
    {
        TracksAdapter.access$100(TracksAdapter.this).onItemClick(val$item);
    }

    TrackClickListener()
    {
        this$0 = final_tracksadapter;
        val$item = PlaylistEntity.this;
        super();
    }
}
