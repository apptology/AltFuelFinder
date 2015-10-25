// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.os.RemoteException;
import java.util.List;

// Referenced classes of package com.biznessapps.player:
//            PlayerService, MusicItem, PlayerState

class tub extends tub
{

    final PlayerService this$0;

    public void addUrlQueue(MusicItem musicitem)
        throws RemoteException
    {
        PlayerService.this.addUrlQueue(musicitem);
    }

    public void addUrlsQueue(List list)
        throws RemoteException
    {
        PlayerService.this.addUrlsQueue(list);
    }

    public void clear()
        throws RemoteException
    {
        PlayerService.this.clear();
    }

    public void clearQueue()
        throws RemoteException
    {
        PlayerService.this.clearQueue();
    }

    public long duration()
        throws RemoteException
    {
        return PlayerService.this.duration();
    }

    public int getCurrentPosition()
        throws RemoteException
    {
        return PlayerService.this.getCurrentPosition();
    }

    public MusicItem getCurrentSong()
        throws RemoteException
    {
        return PlayerService.access$000(PlayerService.this);
    }

    public List getSongs()
        throws RemoteException
    {
        return PlayerService.this.getSongs();
    }

    public PlayerState getState()
        throws RemoteException
    {
        return getPlayerState();
    }

    public boolean isInState(int i)
        throws RemoteException
    {
        return PlayerService.this.isInState(i);
    }

    public void pause()
        throws RemoteException
    {
        PlayerService.this.pause();
    }

    public void play(MusicItem musicitem)
        throws RemoteException
    {
        PlayerService.this.play(musicitem);
    }

    public long position()
        throws RemoteException
    {
        return PlayerService.this.position();
    }

    public void seek(long l)
        throws RemoteException
    {
        PlayerService.this.seek(l);
    }

    public void setCurrentPosition(int i)
        throws RemoteException
    {
        PlayerService.this.setCurrentPosition(i);
    }

    public void stop()
        throws RemoteException
    {
        PlayerService.this.stop();
    }

    tub()
    {
        this$0 = PlayerService.this;
        super();
    }
}
