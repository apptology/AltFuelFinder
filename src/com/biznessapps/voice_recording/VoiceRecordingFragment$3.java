// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.media.MediaPlayer;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment

class this._cls0
    implements android.media.istener
{

    final VoiceRecordingFragment this$0;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        VoiceRecordingFragment.access$1000(VoiceRecordingFragment.this).stop();
        VoiceRecordingFragment.access$1102(VoiceRecordingFragment.this, null);
        VoiceRecordingFragment.access$1200(VoiceRecordingFragment.this);
    }

    ()
    {
        this$0 = VoiceRecordingFragment.this;
        super();
    }
}
