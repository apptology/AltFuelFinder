// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.phone;

import android.os.Handler;
import android.telephony.PhoneStateListener;
import com.biznessapps.player.PlayerServiceAccessor;

// Referenced classes of package com.biznessapps.phone:
//            PhoneStateReceiver

private static class <init> extends PhoneStateListener
{
    private static class AppPhoneHolder
    {

        private static final PhoneStateReceiver.AppPhoneStateListener instance = new PhoneStateReceiver.AppPhoneStateListener(null);



        private AppPhoneHolder()
        {
        }
    }


    private static final int MUSIC_START_DELAY = 2000;
    private volatile boolean isCallActive;
    private volatile boolean wasPlayerActive;

    public static <init> getInstance()
    {
        return AppPhoneHolder.instance;
    }

    public void onCallStateChanged(int i, String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (PhoneStateReceiver.access$200() == null) goto _L2; else goto _L1
_L1:
        if (i != 1 && i != 2) goto _L4; else goto _L3
_L3:
        if (!isCallActive && PhoneStateReceiver.access$200().isInState(1))
        {
            PhoneStateReceiver.access$200().pause();
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
        if (isCallActive && PhoneStateReceiver.access$200().isInState(3) && wasPlayerActive)
        {
            (new Handler()).postDelayed(new Runnable() {

                final PhoneStateReceiver.AppPhoneStateListener this$0;

                public void run()
                {
                    com.biznessapps.player.MusicItem musicitem = PhoneStateReceiver.access$200().getCurrentSong();
                    PhoneStateReceiver.access$200().play(musicitem);
                }

            
            {
                this$0 = PhoneStateReceiver.AppPhoneStateListener.this;
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

    private _cls1.this._cls0()
    {
        isCallActive = false;
        wasPlayerActive = false;
    }

    wasPlayerActive(wasPlayerActive wasplayeractive)
    {
        this();
    }
}
