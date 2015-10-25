// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.os.Message;
import android.widget.TextView;
import java.util.TimerTask;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment

public class currentDuration extends TimerTask
{

    private int currentDuration;
    final VoiceRecordingFragment this$0;

    public boolean cancel()
    {
        VoiceRecordingFragment.access$1400(VoiceRecordingFragment.this).setVisibility(4);
        return super.cancel();
    }

    public void run()
    {
        currentDuration = currentDuration + 1;
        VoiceRecordingFragment.access$1500(VoiceRecordingFragment.this).e(1, Integer.valueOf(currentDuration)).sendToTarget();
    }

    public ()
    {
        this$0 = VoiceRecordingFragment.this;
        super();
        currentDuration = -1;
        VoiceRecordingFragment.access$1400(VoiceRecordingFragment.this).setVisibility(0);
    }
}
