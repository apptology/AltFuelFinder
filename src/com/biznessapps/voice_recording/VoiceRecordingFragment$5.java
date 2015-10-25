// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.app.AlertDialog;
import android.view.View;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment

class val.dialog
    implements android.view.ecordingFragment._cls5
{

    final VoiceRecordingFragment this$0;
    final AlertDialog val$dialog;

    public void onClick(View view)
    {
        VoiceRecordingFragment.access$700(VoiceRecordingFragment.this, "test_template_name");
        VoiceRecordingFragment.access$1200(VoiceRecordingFragment.this);
        val$dialog.cancel();
        VoiceRecordingFragment.access$000().setCanUse(true);
    }

    cordLocker()
    {
        this$0 = final_voicerecordingfragment;
        val$dialog = AlertDialog.this;
        super();
    }
}
