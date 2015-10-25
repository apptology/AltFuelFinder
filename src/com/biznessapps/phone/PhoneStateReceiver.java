// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.phone;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.biznessapps.player.MusicPlayer;
import com.biznessapps.player.PlayerServiceAccessor;

public class PhoneStateReceiver extends BroadcastReceiver
{
    private static class AppPhoneStateListener extends PhoneStateListener
    {

        private static final int MUSIC_START_DELAY = 2000;
        private volatile boolean isCallActive;
        private volatile boolean wasPlayerActive;

        public static AppPhoneStateListener getInstance()
        {
            return AppPhoneHolder.instance;
        }

        public void onCallStateChanged(int i, String s)
        {
            this;
            JVM INSTR monitorenter ;
            if (PhoneStateReceiver.getPlayerServiceAccessor() == null) goto _L2; else goto _L1
_L1:
            if (i != 1 && i != 2) goto _L4; else goto _L3
_L3:
            if (!isCallActive && PhoneStateReceiver.getPlayerServiceAccessor().isInState(1))
            {
                PhoneStateReceiver.getPlayerServiceAccessor().pause();
                wasPlayerActive = true;
            }
            isCallActive = true;
_L2:
            this;
            JVM INSTR monitorexit ;
            return;
_L4:
            if (i != 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (isCallActive && PhoneStateReceiver.getPlayerServiceAccessor().isInState(3) && wasPlayerActive)
            {
                (new Handler()).postDelayed(new Runnable() {

                    final AppPhoneStateListener this$0;

                    public void run()
                    {
                        com.biznessapps.player.MusicItem musicitem = PhoneStateReceiver.getPlayerServiceAccessor().getCurrentSong();
                        PhoneStateReceiver.getPlayerServiceAccessor().play(musicitem);
                    }

            
            {
                this$0 = AppPhoneStateListener.this;
                super();
            }
                }, 2000L);
                wasPlayerActive = false;
            }
            isCallActive = false;
            if (true) goto _L2; else goto _L5
_L5:
            s;
            throw s;
        }

        private AppPhoneStateListener()
        {
            isCallActive = false;
            wasPlayerActive = false;
        }

    }

    private static class AppPhoneStateListener.AppPhoneHolder
    {

        private static final AppPhoneStateListener instance = new AppPhoneStateListener();



        private AppPhoneStateListener.AppPhoneHolder()
        {
        }
    }


    public PhoneStateReceiver()
    {
    }

    private static PlayerServiceAccessor getPlayerServiceAccessor()
    {
        return MusicPlayer.getInstance().getServiceAccessor();
    }

    public void onReceive(Context context, Intent intent)
    {
        try
        {
            context = (TelephonyManager)context.getSystemService("phone");
            intent = AppPhoneStateListener.getInstance();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("TAG!!!", "", context);
            return;
        }
        if (intent == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        context.listen(intent, 32);
    }

}
