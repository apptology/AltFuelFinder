// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.content.Intent;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanAddCommentsFragment

class this._cls0
    implements Runnable
{

    final FanAddCommentsFragment this$0;

    public void run()
    {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        FanAddCommentsFragment.access$502(FanAddCommentsFragment.this, CommonUtils.createEmptyImageFile(getApplicationContext()));
        if (FanAddCommentsFragment.access$500(FanAddCommentsFragment.this) != null)
        {
            intent.putExtra("output", FanAddCommentsFragment.access$500(FanAddCommentsFragment.this));
        }
        startActivityForResult(intent, 2);
    }

    ()
    {
        this$0 = FanAddCommentsFragment.this;
        super();
    }
}
