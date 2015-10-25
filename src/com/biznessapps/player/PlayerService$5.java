// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.media.MediaPlayer;
import android.util.Log;
import java.util.List;

// Referenced classes of package com.biznessapps.player:
//            PlayerService, MusicItem

class this._cls0
    implements android.media.mpletionListener
{

    final PlayerService this$0;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        mediaplayer.stop();
        setState(2);
        Log.d("PreviewMediaPlayer", "onCompletion OK");
        this;
        JVM INSTR monitorenter ;
        PlayerService.access$608(PlayerService.this);
        if (PlayerService.access$600(PlayerService.this) >= PlayerService.access$500(PlayerService.this).size())
        {
            PlayerService.access$602(PlayerService.this, 0);
        }
        if (!PlayerService.access$500(PlayerService.this).isEmpty())
        {
            mediaplayer = (MusicItem)PlayerService.access$500(PlayerService.this).get(PlayerService.access$600(PlayerService.this));
            play(mediaplayer);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        mediaplayer;
        this;
        JVM INSTR monitorexit ;
        throw mediaplayer;
    }

    istener()
    {
        this$0 = PlayerService.this;
        super();
    }
}
