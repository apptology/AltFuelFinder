// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.music:
//            MusicDetailFragment

class this._cls0
    implements com.biznessapps.common.activities..BackPressed
{

    final MusicDetailFragment this$0;

    public boolean onBackPressed()
    {
        return ViewUtils.canGoBack(MusicDetailFragment.access$100(MusicDetailFragment.this));
    }

    mentActivity.BackPressed()
    {
        this$0 = MusicDetailFragment.this;
        super();
    }
}
