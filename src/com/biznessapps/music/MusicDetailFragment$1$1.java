// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.os.Handler;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.player.PlayerStateListener;

// Referenced classes of package com.biznessapps.music:
//            MusicDetailFragment

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        MusicDetailFragment.access$000(_fld0);
    }

    it>()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/music/MusicDetailFragment$1

/* anonymous class */
    class MusicDetailFragment._cls1 extends PlayerStateListener
    {

        final MusicDetailFragment this$0;

        public void onStateChanged(int i)
        {
            AppHandlers.getUiHandler().post(new MusicDetailFragment._cls1._cls1());
        }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
    }

}
