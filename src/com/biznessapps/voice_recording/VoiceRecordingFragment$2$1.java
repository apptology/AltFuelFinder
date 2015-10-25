// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import com.biznessapps.email_photo.EmailPhotoEntity;
import com.biznessapps.utils.ViewUtils;
import java.io.File;

// Referenced classes of package com.biznessapps.voice_recording:
//            RecordEntity, VoiceRecordingFragment

class val.item
    implements Runnable
{

    final val.item this$1;
    final RecordEntity val$item;

    public void run()
    {
        VoiceRecordingFragment.access$700(_fld0, val$item.getName());
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$item = RecordEntity.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/voice_recording/VoiceRecordingFragment$2

/* anonymous class */
    class VoiceRecordingFragment._cls2
        implements VoiceRecordingAdapter.OnRecordClickListener
    {

        final VoiceRecordingFragment this$0;

        public void onPlay(RecordEntity recordentity)
        {
            if (recordentity.canPlay())
            {
                VoiceRecordingFragment.access$800(VoiceRecordingFragment.this, recordentity);
                return;
            } else
            {
                VoiceRecordingFragment.access$900(VoiceRecordingFragment.this);
                return;
            }
        }

        public void onRemove(RecordEntity recordentity)
        {
            String s = getString(com.biznessapps.layout.R.string.voice_removing);
            ViewUtils.showDialog(getHoldActivity(), s, recordentity. new VoiceRecordingFragment._cls2._cls1());
        }

        public void onShare(RecordEntity recordentity)
        {
            recordentity = new File(recordentity.getFilePath());
            ViewUtils.email(getHoldActivity(), VoiceRecordingFragment.access$600(VoiceRecordingFragment.this).getEmail(), VoiceRecordingFragment.access$600(VoiceRecordingFragment.this).getSubject(), "", recordentity);
        }

            
            {
                this$0 = VoiceRecordingFragment.this;
                super();
            }
    }

}
