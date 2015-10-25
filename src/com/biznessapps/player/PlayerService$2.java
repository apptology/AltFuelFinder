// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.media.MediaPlayer;
import java.util.List;

// Referenced classes of package com.biznessapps.player:
//            PlayerService, PlayerState, MusicItem

class val.musicItem
    implements Runnable
{

    final PlayerService this$0;
    final MusicItem val$musicItem;

    public void run()
    {
        PlayerService.access$100(PlayerService.this, val$musicItem);
        try
        {
            if (PlayerService.access$200(PlayerService.this).getState() == 3)
            {
                PlayerService.access$300(PlayerService.this).start();
                setState(1);
                return;
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (PlayerService.access$200(PlayerService.this).getState() == 1)
        {
            PlayerService.access$300(PlayerService.this).pause();
            setState(3);
            return;
        }
        PlayerService.access$400(PlayerService.this);
        MusicItem musicitem = null;
        if (val$musicItem == null || !val$musicItem.isSingle()) goto _L2; else goto _L1
_L1:
        musicitem = val$musicItem;
_L4:
        if (musicitem == null)
        {
            break; /* Loop/switch isn't completed */
        }
        PlayerService.access$002(PlayerService.this, musicitem);
        PlayerService.access$300(PlayerService.this).setDataSource(musicitem.getUrl());
        setState(5);
        PlayerService.access$300(PlayerService.this).prepare();
        PlayerService.access$300(PlayerService.this).start();
        firePlayerStartEvent(musicitem);
        setState(1);
        return;
_L2:
        if (!PlayerService.access$500(PlayerService.this).isEmpty())
        {
            musicitem = (MusicItem)PlayerService.access$500(PlayerService.this).get(PlayerService.access$600(PlayerService.this));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    ()
    {
        this$0 = final_playerservice;
        val$musicItem = MusicItem.this;
        super();
    }
}
