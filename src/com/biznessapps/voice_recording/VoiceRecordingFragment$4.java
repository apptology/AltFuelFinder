// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.app.AlertDialog;
import android.view.View;
import android.widget.EditText;
import com.biznessapps.utils.StringUtils;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment

class val.dialog
    implements android.view.ecordingFragment._cls4
{

    final VoiceRecordingFragment this$0;
    final AlertDialog val$dialog;
    final EditText val$editText;

    public void onClick(View view)
    {
        view = val$editText.getText().toString();
        if (StringUtils.isNotEmpty(view))
        {
            VoiceRecordingFragment.access$1300(VoiceRecordingFragment.this, view);
            VoiceRecordingFragment.access$1200(VoiceRecordingFragment.this);
            val$dialog.cancel();
        }
        VoiceRecordingFragment.access$000().setCanUse(true);
    }

    cordLocker()
    {
        this$0 = final_voicerecordingfragment;
        val$editText = edittext;
        val$dialog = AlertDialog.this;
        super();
    }
}
