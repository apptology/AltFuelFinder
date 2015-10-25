// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.view.View;
import android.widget.ImageView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment

class this._cls0
    implements android.view.ecordingFragment._cls1
{

    final VoiceRecordingFragment this$0;

    public void onClick(View view)
    {
        view = VoiceRecordingFragment.access$000();
        view;
        JVM INSTR monitorenter ;
        if (!VoiceRecordingFragment.access$000().canUse()) goto _L2; else goto _L1
_L1:
        VoiceRecordingFragment.access$000().setCanUse(false);
        if (!VoiceRecordingFragment.access$100(VoiceRecordingFragment.this))
        {
            break MISSING_BLOCK_LABEL_65;
        }
        VoiceRecordingFragment.access$200(VoiceRecordingFragment.this);
_L4:
        CommonUtils.setColorWithoutMutation(VoiceRecordingFragment.access$400(VoiceRecordingFragment.this).getButtonBgColor(), VoiceRecordingFragment.access$500(VoiceRecordingFragment.this).getBackground());
_L2:
        return;
        VoiceRecordingFragment.access$300(VoiceRecordingFragment.this);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        view;
        JVM INSTR monitorexit ;
        throw exception;
    }

    cordLocker()
    {
        this$0 = VoiceRecordingFragment.this;
        super();
    }
}
