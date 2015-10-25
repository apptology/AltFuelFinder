// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.os.Handler;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.player.PlayerStateListener;

// Referenced classes of package com.biznessapps.music:
//            MusicDetailFragment

class init> extends PlayerStateListener
{

    final MusicDetailFragment this$0;

    public void onStateChanged(int i)
    {
        AppHandlers.getUiHandler().post(new Runnable() {

            final MusicDetailFragment._cls1 this$1;

            public void run()
            {
                MusicDetailFragment.access$000(this$0);
            }

            
            {
                this$1 = MusicDetailFragment._cls1.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = MusicDetailFragment.this;
        super();
    }
}
