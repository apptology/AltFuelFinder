// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment

public class this._cls0 extends Handler
{

    private static final int UPDATE_DURATION_COUNTER = 1;
    final VoiceRecordingFragment this$0;

    private String getSecInTimeFormat(int i)
    {
        String s;
        boolean flag;
        int j;
        if (i < 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = Math.abs(i);
        i = Math.abs(i) / 60;
        if (flag)
        {
            s = "-";
        } else
        {
            s = "";
        }
        return (new StringBuilder()).append(s).append(String.format("%02d:%02d", new Object[] {
            Integer.valueOf(i % 60), Integer.valueOf(j % 60)
        })).toString();
    }

    public void handleMessage(Message message)
    {
        int i;
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            i = ((Integer)message.obj).intValue();
            break;
        }
        VoiceRecordingFragment.access$1400(VoiceRecordingFragment.this).setText(getSecInTimeFormat(i));
    }

    public I()
    {
        this$0 = VoiceRecordingFragment.this;
        super();
    }
}
