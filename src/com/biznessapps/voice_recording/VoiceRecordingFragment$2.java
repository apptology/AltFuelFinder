// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import com.biznessapps.email_photo.EmailPhotoEntity;
import com.biznessapps.utils.ViewUtils;
import java.io.File;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment, RecordEntity

class this._cls0
    implements ecordClickListener
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

    public void onRemove(final RecordEntity item)
    {
        String s = getString(com.biznessapps.layout.agment.getString);
        ViewUtils.showDialog(getHoldActivity(), s, new Runnable() {

            final VoiceRecordingFragment._cls2 this$1;
            final RecordEntity val$item;

            public void run()
            {
                VoiceRecordingFragment.access$700(this$0, item.getName());
            }

            
            {
                this$1 = VoiceRecordingFragment._cls2.this;
                item = recordentity;
                super();
            }
        });
    }

    public void onShare(RecordEntity recordentity)
    {
        recordentity = new File(recordentity.getFilePath());
        ViewUtils.email(getHoldActivity(), VoiceRecordingFragment.access$600(VoiceRecordingFragment.this).getEmail(), VoiceRecordingFragment.access$600(VoiceRecordingFragment.this).getSubject(), "", recordentity);
    }

    _cls1.val.item()
    {
        this$0 = VoiceRecordingFragment.this;
        super();
    }
}
