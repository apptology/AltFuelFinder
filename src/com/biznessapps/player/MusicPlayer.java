// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.content.Context;

// Referenced classes of package com.biznessapps.player:
//            PlayerServiceAccessor

public class MusicPlayer
{

    private static MusicPlayer instance;
    private static PlayerServiceAccessor playerServiceAccessor;
    private Context context;

    public MusicPlayer()
    {
    }

    public static MusicPlayer getInstance()
    {
        if (instance == null)
        {
            instance = new MusicPlayer();
        }
        return instance;
    }

    public void destroy()
    {
        playerServiceAccessor = null;
    }

    public PlayerServiceAccessor getServiceAccessor()
    {
        return playerServiceAccessor;
    }

    public void init(Context context1)
    {
        context = context1;
        if (playerServiceAccessor == null)
        {
            playerServiceAccessor = new PlayerServiceAccessor(context1);
        }
    }

    public boolean isInited()
    {
        return context != null && playerServiceAccessor != null;
    }
}
