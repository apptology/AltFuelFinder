// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.app.Service;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.player:
//            MusicItem, PlayerStateListener, PlayerState

public class PlayerService extends Service
{

    private static List listeners = new ArrayList();
    private int currentPosition;
    private MusicItem currentSong;
    private boolean isActive;
    private MediaPlayer mediaPlayer;
    private android.media.MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener;
    private android.media.MediaPlayer.OnCompletionListener onCompletionListener;
    private android.media.MediaPlayer.OnErrorListener onErrorListener;
    private android.media.MediaPlayer.OnPreparedListener onPreparedListener;
    private PlayerState playerState;
    private List queue;

    public PlayerService()
    {
        queue = new ArrayList();
        currentPosition = 0;
        currentSong = null;
        isActive = true;
        onPreparedListener = new android.media.MediaPlayer.OnPreparedListener() {

            final PlayerService this$0;

            public void onPrepared(MediaPlayer mediaplayer)
            {
label0:
                {
                    if (mediaplayer != null)
                    {
                        if (!isActive)
                        {
                            break label0;
                        }
                        mediaplayer.start();
                    }
                    return;
                }
                mediaplayer.stop();
            }

            
            {
                this$0 = PlayerService.this;
                super();
            }
        };
        onBufferingUpdateListener = new android.media.MediaPlayer.OnBufferingUpdateListener() {

            final PlayerService this$0;

            public void onBufferingUpdate(MediaPlayer mediaplayer, int i)
            {
            }

            
            {
                this$0 = PlayerService.this;
                super();
            }
        };
        onCompletionListener = new android.media.MediaPlayer.OnCompletionListener() {

            final PlayerService this$0;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                mediaplayer.stop();
                setState(2);
                Log.d("PreviewMediaPlayer", "onCompletion OK");
                this;
                JVM INSTR monitorenter ;
                int i = 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = PlayerService.this;
                super();
            }
        };
        onErrorListener = new android.media.MediaPlayer.OnErrorListener() {

            final PlayerService this$0;

            public boolean onError(MediaPlayer mediaplayer, int i, int j)
            {
                mediaplayer.stop();
                setState(2);
                return true;
            }

            
            {
                this$0 = PlayerService.this;
                super();
            }
        };
    }

    public static void addListener(PlayerStateListener playerstatelistener)
    {
        if (!listeners.contains(playerstatelistener))
        {
            listeners.add(playerstatelistener);
        }
    }

    private void initPlayer()
    {
        if (mediaPlayer != null)
        {
            mediaPlayer.release();
            mediaPlayer = null;
        }
        mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioStreamType(3);
        mediaPlayer.setOnPreparedListener(onPreparedListener);
        mediaPlayer.setOnBufferingUpdateListener(onBufferingUpdateListener);
        mediaPlayer.setOnCompletionListener(onCompletionListener);
        mediaPlayer.setOnErrorListener(onErrorListener);
        setState(2);
    }

    public static void removeListener(PlayerStateListener playerstatelistener)
    {
        listeners.remove(playerstatelistener);
    }

    private void updateCurrentPosition(MusicItem musicitem)
    {
        if (musicitem != null && StringUtils.isNotEmpty(musicitem.getUrl()) && !musicitem.isSingle())
        {
            boolean flag1 = true;
            Iterator iterator = queue.iterator();
            MusicItem musicitem1;
            boolean flag;
            do
            {
                flag = flag1;
                musicitem1 = musicitem;
                if (!iterator.hasNext())
                {
                    break;
                }
                musicitem1 = (MusicItem)iterator.next();
                if (!musicitem1.getUrl().equalsIgnoreCase(musicitem.getUrl()))
                {
                    continue;
                }
                flag = false;
                break;
            } while (true);
            if (flag)
            {
                queue.add(musicitem1);
            }
            currentPosition = queue.indexOf(musicitem1);
        }
    }

    public void addUrlQueue(MusicItem musicitem)
    {
        if (!queue.contains(musicitem))
        {
            queue.add(musicitem);
        }
    }

    public void addUrlsQueue(List list)
    {
        this;
        JVM INSTR monitorenter ;
        clearQueue();
        for (list = list.iterator(); list.hasNext(); addUrlQueue((MusicItem)list.next())) { }
        break MISSING_BLOCK_LABEL_43;
        list;
        throw list;
        this;
        JVM INSTR monitorexit ;
    }

    public void clear()
    {
        isActive = false;
        clearQueue();
        stop();
    }

    public void clearQueue()
    {
        currentPosition = 0;
        queue.clear();
    }

    public long duration()
    {
        return (long)mediaPlayer.getDuration();
    }

    protected void firePlayerPauseEvent()
    {
    }

    protected void firePlayerStartEvent(MusicItem musicitem)
    {
        for (Iterator iterator = listeners.iterator(); iterator.hasNext(); ((PlayerStateListener)iterator.next()).onStart(musicitem)) { }
    }

    protected void firePlayerStopEvent()
    {
    }

    protected void firePlayingEvent()
    {
    }

    protected void fireStateChangedEvent(int i)
    {
        for (Iterator iterator = listeners.iterator(); iterator.hasNext(); ((PlayerStateListener)iterator.next()).onStateChanged(i)) { }
    }

    public int getCurrentPosition()
    {
        return currentPosition;
    }

    protected PlayerState getPlayerState()
    {
        return playerState;
    }

    public List getSongs()
    {
        return queue;
    }

    public boolean isInState(int i)
    {
        return playerState.getState() == i;
    }

    public IBinder onBind(Intent intent)
    {
        return new IPlayerService.Stub() {

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
                return currentSong;
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

            
            {
                this$0 = PlayerService.this;
                super();
            }
        };
    }

    public void onCreate()
    {
        onCreate();
        playerState = new PlayerState();
        initPlayer();
    }

    public void onDestroy()
    {
        if (mediaPlayer != null)
        {
            mediaPlayer.release();
        }
    }

    public void pause()
    {
        if (mediaPlayer.isPlaying())
        {
            mediaPlayer.pause();
        }
        setState(3);
    }

    public void play(final MusicItem musicItem)
    {
        isActive = true;
        (new Thread(new Runnable() {

            final PlayerService this$0;
            final MusicItem val$musicItem;

            public void run()
            {
                updateCurrentPosition(musicItem);
                try
                {
                    if (playerState.getState() == 3)
                    {
                        mediaPlayer.start();
                        setState(1);
                        return;
                    }
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                    return;
                }
                if (playerState.getState() == 1)
                {
                    mediaPlayer.pause();
                    setState(3);
                    return;
                }
                initPlayer();
                MusicItem musicitem = null;
                if (musicItem == null || !musicItem.isSingle()) goto _L2; else goto _L1
_L1:
                musicitem = musicItem;
_L4:
                if (musicitem == null)
                {
                    break; /* Loop/switch isn't completed */
                }
                currentSong = musicitem;
                mediaPlayer.setDataSource(musicitem.getUrl());
                setState(5);
                mediaPlayer.prepare();
                mediaPlayer.start();
                firePlayerStartEvent(musicitem);
                setState(1);
                return;
_L2:
                if (!queue.isEmpty())
                {
                    musicitem = (MusicItem)queue.get(currentPosition);
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                this$0 = PlayerService.this;
                musicItem = musicitem;
                super();
            }
        })).start();
    }

    public long position()
    {
        if (isInState(4))
        {
            return -1L;
        } else
        {
            return (long)mediaPlayer.getCurrentPosition();
        }
    }

    public void seek(long l)
    {
        mediaPlayer.seekTo((int)l);
    }

    public void setCurrentPosition(int i)
    {
        if (i < 0)
        {
            currentPosition = queue.size() - 1;
            return;
        } else
        {
            currentPosition = i;
            return;
        }
    }

    protected void setState(int i)
    {
        playerState.setState(i);
        fireStateChangedEvent(i);
    }

    public void stop()
    {
        try
        {
            if (mediaPlayer.isPlaying())
            {
                mediaPlayer.stop();
            }
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
        }
        setState(2);
    }




/*
    static MusicItem access$002(PlayerService playerservice, MusicItem musicitem)
    {
        playerservice.currentSong = musicitem;
        return musicitem;
    }

*/








/*
    static int access$602(PlayerService playerservice, int i)
    {
        playerservice.currentPosition = i;
        return i;
    }

*/


/*
    static int access$608(PlayerService playerservice)
    {
        int i = playerservice.currentPosition;
        playerservice.currentPosition = i + 1;
        return i;
    }

*/

}
