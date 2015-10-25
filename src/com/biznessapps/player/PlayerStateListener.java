// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;


// Referenced classes of package com.biznessapps.player:
//            MusicItem

public class PlayerStateListener
{

    private MusicItem musicItem;

    public PlayerStateListener()
    {
    }

    public MusicItem getMusicItem()
    {
        return musicItem;
    }

    public void onError(int i)
    {
    }

    public void onPause()
    {
    }

    public void onStart(MusicItem musicitem)
    {
        musicItem = musicitem;
    }

    public void onStateChanged(int i)
    {
    }

    public void onStop()
    {
    }
}
