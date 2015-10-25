// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.phone;

import com.biznessapps.player.PlayerServiceAccessor;

// Referenced classes of package com.biznessapps.phone:
//            PhoneStateReceiver

class this._cls0
    implements Runnable
{

    final this._cls0 this$0;

    public void run()
    {
        com.biznessapps.player.MusicItem musicitem = PhoneStateReceiver.access$200().getCurrentSong();
        PhoneStateReceiver.access$200().play(musicitem);
    }

    ()
    {
        this$0 = this._cls0.this;
        super();
    }
}
