// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.os.Handler;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.player.PlayerStateListener;

// Referenced classes of package com.biznessapps.music:
//            MusicListFragment, TracksAdapter, AlbumsAdapter

class this._cls1
    implements Runnable
{

    final taSetChanged this$1;

    public void run()
    {
        if (MusicListFragment.access$000(_fld0))
        {
            if (MusicListFragment.access$100(_fld0) != null)
            {
                MusicListFragment.access$100(_fld0).notifyDataSetChanged();
            }
        } else
        if (MusicListFragment.access$200(_fld0) != null)
        {
            MusicListFragment.access$200(_fld0).notifyDataSetChanged();
            return;
        }
    }

    init>()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/music/MusicListFragment$1

/* anonymous class */
    class MusicListFragment._cls1 extends PlayerStateListener
    {

        final MusicListFragment this$0;

        public void onStateChanged(int i)
        {
            AppHandlers.getUiHandler().post(new MusicListFragment._cls1._cls1());
        }

            
            {
                this$0 = MusicListFragment.this;
                super();
            }
    }

}
