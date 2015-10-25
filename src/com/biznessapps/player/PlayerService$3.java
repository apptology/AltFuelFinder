// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.media.MediaPlayer;

// Referenced classes of package com.biznessapps.player:
//            PlayerService

class this._cls0
    implements android.media.eparedListener
{

    final PlayerService this$0;

    public void onPrepared(MediaPlayer mediaplayer)
    {
label0:
        {
            if (mediaplayer != null)
            {
                if (!PlayerService.access$700(PlayerService.this))
                {
                    break label0;
                }
                mediaplayer.start();
            }
            return;
        }
        mediaplayer.stop();
    }

    tener()
    {
        this$0 = PlayerService.this;
        super();
    }
}
