// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import android.view.View;
import com.biznessapps.common.social.ui.OnSharingCompletedListener;
import com.biznessapps.common.social.ui.ShareComponent;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

class this._cls0
    implements android.view.ner
{

    final SocialFragment this$0;

    public void onClick(View view)
    {
        ShareComponent.showSharingOptionDialog(getHoldActivity(), new OnSharingCompletedListener() {

            final SocialFragment._cls2 this$1;

            public void onSharingCanceled()
            {
                SocialFragment.access$000(this$0);
            }

            public void onSharingCompleted(int i)
            {
                SocialFragment.access$000(this$0);
            }

            public void onSharingError(int i, String s, String s1)
            {
                SocialFragment.access$000(this$0);
            }

            
            {
                this$1 = SocialFragment._cls2.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = SocialFragment.this;
        super();
    }
}
