// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.content.Intent;
import android.view.View;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity

class this._cls0
    implements android.view.ctivity._cls5
{

    final EventV2DetailsActivity this$0;

    public void onClick(View view)
    {
        ViewUtils.openChoosePhotoDialog(EventV2DetailsActivity.this, new Runnable() {

            final EventV2DetailsActivity._cls5 this$1;

            public void run()
            {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                EventV2DetailsActivity.access$902(this$0, CommonUtils.createEmptyImageFile(getApplicationContext()));
                if (EventV2DetailsActivity.access$900(this$0) != null)
                {
                    intent.putExtra("output", EventV2DetailsActivity.access$900(this$0));
                }
                startActivityForResult(intent, 2);
            }

            
            {
                this$1 = EventV2DetailsActivity._cls5.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = EventV2DetailsActivity.this;
        super();
    }
}
