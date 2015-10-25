// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.widget.EditText;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanWallFragment

class this._cls0 extends AsyncCallback
{

    final FanWallFragment this$0;

    public void onError(String s, Throwable throwable)
    {
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.ured));
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.lly_posted));
        FanWallFragment.access$402(FanWallFragment.this, true);
        FanWallFragment.access$002(FanWallFragment.this, true);
        FanWallFragment.access$200(FanWallFragment.this).setText("");
        FanWallFragment.access$500(FanWallFragment.this);
    }

    ()
    {
        this$0 = FanWallFragment.this;
        super();
    }
}
