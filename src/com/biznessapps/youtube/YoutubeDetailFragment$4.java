// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import android.view.View;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeDetailFragment

class this._cls0
    implements android.view.Fragment._cls4
{

    final YoutubeDetailFragment this$0;

    public void onClick(View view)
    {
        if (YoutubeDetailFragment.access$400(YoutubeDetailFragment.this))
        {
            YoutubeDetailFragment.access$500(YoutubeDetailFragment.this);
            return;
        } else
        {
            (new lowCommentingTask(YoutubeDetailFragment.this, null)).execute(new Void[0]);
            return;
        }
    }

    lowCommentingTask()
    {
        this$0 = YoutubeDetailFragment.this;
        super();
    }
}
