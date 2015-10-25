// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.view.View;

// Referenced classes of package com.biznessapps.voice_recording:
//            VoiceRecordingAdapter, RecordEntity

class val.item
    implements android.view.RecordingAdapter._cls2
{

    final VoiceRecordingAdapter this$0;
    final RecordEntity val$item;

    public void onClick(View view)
    {
        VoiceRecordingAdapter.access$100(VoiceRecordingAdapter.this).onRemove(val$item);
    }

    RecordClickListener()
    {
        this$0 = final_voicerecordingadapter;
        val$item = RecordEntity.this;
        super();
    }
}
