// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.view.ViewGroup;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity, EventPhotosTabUtils

class val.imageToSend
    implements toTextListener
{

    final EventV2DetailsActivity this$0;
    final byte val$imageToSend[];

    public void onCancel()
    {
        EventV2DetailsActivity.access$2200(EventV2DetailsActivity.this).removeAllViews();
    }

    public void onCaptionSelected(String s)
    {
        AsyncCallback asynccallback = new AsyncCallback() {

            final EventV2DetailsActivity._cls15 this$1;

            public void onError(String s1, Throwable throwable)
            {
                super.onError(s1, throwable);
                if (this$0 != null)
                {
                    EventV2DetailsActivity.access$2200(this$0).removeAllViews();
                }
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s1)
            {
                s1 = this$0;
                if (s1 != null)
                {
                    EventPhotosTabUtils.loadPhotosData(s1, EventV2DetailsActivity.access$800(this$0), EventV2DetailsActivity.access$1100(this$0), EventV2DetailsActivity.access$1900(this$0), EventV2DetailsActivity.access$2000(this$0), EventV2DetailsActivity.access$2100(this$0));
                    EventV2DetailsActivity.access$2200(this$0).removeAllViews();
                }
            }

            
            {
                this$1 = EventV2DetailsActivity._cls15.this;
                super();
            }
        };
        AppHttpUtils.sendPhotoAsync(val$imageToSend, EventV2DetailsActivity.access$2300(EventV2DetailsActivity.this).getAppCode(), EventV2DetailsActivity.access$2400(EventV2DetailsActivity.this), EventV2DetailsActivity.access$1100(EventV2DetailsActivity.this), s, asynccallback);
    }

    _cls1.this._cls1()
    {
        this$0 = final_eventv2detailsactivity;
        val$imageToSend = _5B_B.this;
        super();
    }
}
