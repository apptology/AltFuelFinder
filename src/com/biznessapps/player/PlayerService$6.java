// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.media.MediaPlayer;

// Referenced classes of package com.biznessapps.player:
//            PlayerService

class this._cls0
    implements android.media.rorListener
{

    final PlayerService this$0;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        mediaplayer.stop();
        setState(2);
        return true;
    }

    er()
    {
        this$0 = PlayerService.this;
        super();
    }
}
