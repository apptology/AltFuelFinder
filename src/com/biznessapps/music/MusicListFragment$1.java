// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.os.Handler;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.player.PlayerStateListener;

// Referenced classes of package com.biznessapps.music:
//            MusicListFragment, TracksAdapter, AlbumsAdapter

class  extends PlayerStateListener
{

    final MusicListFragment this$0;

    public void onStateChanged(int i)
    {
        AppHandlers.getUiHandler().post(new Runnable() {

            final MusicListFragment._cls1 this$1;

            public void run()
            {
                if (MusicListFragment.access$000(this$0))
                {
                    if (MusicListFragment.access$100(this$0) != null)
                    {
                        MusicListFragment.access$100(this$0).notifyDataSetChanged();
                    }
                } else
                if (MusicListFragment.access$200(this$0) != null)
                {
                    MusicListFragment.access$200(this$0).notifyDataSetChanged();
                    return;
                }
            }

            
            {
                this$1 = MusicListFragment._cls1.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = MusicListFragment.this;
        super();
    }
}
