// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.os.Message;
import android.widget.ImageView;
import android.widget.ProgressBar;

// Referenced classes of package com.biznessapps.widgets:
//            LoaderImageView

class this._cls0
    implements android.os.rImageView._cls1
{

    final LoaderImageView this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 34
    //                   1 77
    //                   2 117;
           goto _L1 _L2 _L3 _L4
_L1:
        return true;
_L2:
        LoaderImageView.access$100(LoaderImageView.this).setImageDrawable(LoaderImageView.access$000(LoaderImageView.this));
        LoaderImageView.access$100(LoaderImageView.this).setVisibility(0);
        LoaderImageView.access$200(LoaderImageView.this).setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L3:
        LoaderImageView.access$100(LoaderImageView.this).setImageDrawable(LoaderImageView.access$000(LoaderImageView.this));
        LoaderImageView.access$100(LoaderImageView.this).setVisibility(0);
        LoaderImageView.access$200(LoaderImageView.this).setVisibility(8);
_L4:
        LoaderImageView.access$100(LoaderImageView.this).setVisibility(0);
        LoaderImageView.access$200(LoaderImageView.this).setVisibility(8);
        if (true) goto _L1; else goto _L5
_L5:
    }

    ()
    {
        this$0 = LoaderImageView.this;
        super();
    }
}
