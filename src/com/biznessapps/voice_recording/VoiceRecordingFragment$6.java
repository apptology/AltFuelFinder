// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import com.biznessapps.utils.StringUtils;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment

class val.saveButton
    implements TextWatcher
{

    final VoiceRecordingFragment this$0;
    final Button val$saveButton;

    public void afterTextChanged(Editable editable)
    {
        if (editable != null && StringUtils.isNotEmpty(editable.toString()))
        {
            val$saveButton.setEnabled(true);
            return;
        } else
        {
            val$saveButton.setEnabled(false);
            return;
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = final_voicerecordingfragment;
        val$saveButton = Button.this;
        super();
    }
}
