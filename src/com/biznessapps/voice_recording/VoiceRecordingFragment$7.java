// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import java.util.Comparator;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingFragment, RecordEntity

class this._cls0
    implements Comparator
{

    final VoiceRecordingFragment this$0;

    public int compare(RecordEntity recordentity, RecordEntity recordentity1)
    {
        if (recordentity.getFileDate() < recordentity1.getFileDate())
        {
            return 1;
        }
        return recordentity.getFileDate() != recordentity1.getFileDate() ? -1 : 0;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((RecordEntity)obj, (RecordEntity)obj1);
    }

    ()
    {
        this$0 = VoiceRecordingFragment.this;
        super();
    }
}
