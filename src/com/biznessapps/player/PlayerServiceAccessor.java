// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import java.util.List;

// Referenced classes of package com.biznessapps.player:
//            BaseServiceAccessor, IPlayerService, PlayerService, MusicItem, 
//            PlayerState

public class PlayerServiceAccessor extends BaseServiceAccessor
{

    private static final String COMMON_EXCEPTION = "Exception";
    private static final String REMOTE_EXCEPTION = "RemoteException";
    private static final String TAG = "ServiceAccessor";

    public PlayerServiceAccessor(Context context)
    {
        super(context);
    }

    public void addUrlQueue(MusicItem musicitem)
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).addUrlQueue(musicitem);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (MusicItem musicitem)
        {
            Log.e("ServiceAccessor", "RemoteException", musicitem);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (MusicItem musicitem)
        {
            Log.e("ServiceAccessor", "Exception", musicitem);
        }
    }

    public void addUrlsQueue(List list)
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).addUrlsQueue(list);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            Log.e("ServiceAccessor", "RemoteException", list);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            Log.e("ServiceAccessor", "Exception", list);
        }
    }

    public void clear()
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).clear();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
        }
    }

    public void clearQueue()
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).clearQueue();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
        }
    }

    protected volatile IInterface createServiceStub(IBinder ibinder)
    {
        return createServiceStub(ibinder);
    }

    protected IPlayerService createServiceStub(IBinder ibinder)
    {
        return IPlayerService.Stub.asInterface(ibinder);
    }

    public int getCurrentPosition()
    {
        int i = 0;
        try
        {
            if (getService() != null)
            {
                i = ((IPlayerService)getService()).getCurrentPosition();
            }
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return 0;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
            return 0;
        }
        return i;
    }

    public MusicItem getCurrentSong()
    {
        MusicItem musicitem = null;
        try
        {
            if (getService() != null)
            {
                musicitem = ((IPlayerService)getService()).getCurrentSong();
            }
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return null;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
            return null;
        }
        return musicitem;
    }

    public long getDuration()
    {
        long l = 0L;
        try
        {
            if (getService() != null)
            {
                l = ((IPlayerService)getService()).duration();
            }
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return 0L;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
            return 0L;
        }
        return l;
    }

    public PlayerState getPlayerState()
    {
        PlayerState playerstate = null;
        try
        {
            if (getService() != null)
            {
                playerstate = ((IPlayerService)getService()).getState();
            }
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return null;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
            return null;
        }
        return playerstate;
    }

    public long getPosition()
    {
        long l = 0L;
        try
        {
            if (getService() != null)
            {
                l = ((IPlayerService)getService()).position();
            }
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return 0L;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
            return 0L;
        }
        return l;
    }

    protected Class getServiceClass()
    {
        return com/biznessapps/player/PlayerService;
    }

    public List getSongs()
    {
        List list = null;
        try
        {
            if (getService() != null)
            {
                list = ((IPlayerService)getService()).getSongs();
            }
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return null;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
            return null;
        }
        return list;
    }

    public boolean isCurrentSong(String s)
    {
        MusicItem musicitem;
        if (s != null)
        {
            if ((musicitem = getCurrentSong()) != null && musicitem.getUrl() != null && musicitem.getUrl().equals(s))
            {
                return true;
            }
        }
        return false;
    }

    public boolean isInState(int i)
    {
        boolean flag;
        try
        {
            flag = ((IPlayerService)getService()).isInState(i);
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return false;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
            return false;
        }
        return flag;
    }

    public void pause()
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).pause();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
        }
    }

    public void play(MusicItem musicitem)
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).play(musicitem);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (MusicItem musicitem)
        {
            Log.e("ServiceAccessor", "RemoteException", musicitem);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (MusicItem musicitem)
        {
            Log.e("ServiceAccessor", "Exception", musicitem);
        }
    }

    public void seek(long l)
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).seek(l);
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
        }
    }

    public void setCurrentPosition(int i)
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).setCurrentPosition(i);
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
        }
    }

    public void stop()
    {
        try
        {
            if (getService() != null)
            {
                ((IPlayerService)getService()).stop();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("ServiceAccessor", "RemoteException", remoteexception);
            return;
        }
        catch (Exception exception)
        {
            Log.e("ServiceAccessor", "Exception", exception);
        }
    }
}
