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

class this._cls1 extends AsyncCallback
{

    final is._cls0 this$1;

    public void onError(String s, Throwable throwable)
    {
        super.onError(s, throwable);
        if (_fld0 != null)
        {
            EventV2DetailsActivity.access$2200(_fld0).removeAllViews();
        }
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        s = _fld0;
        if (s != null)
        {
            EventPhotosTabUtils.loadPhotosData(s, EventV2DetailsActivity.access$800(_fld0), EventV2DetailsActivity.access$1100(_fld0), EventV2DetailsActivity.access$1900(_fld0), EventV2DetailsActivity.access$2000(_fld0), EventV2DetailsActivity.access$2100(_fld0));
            EventV2DetailsActivity.access$2200(_fld0).removeAllViews();
        }
    }

    l.imageToSend()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/events/EventV2DetailsActivity$15

/* anonymous class */
    class EventV2DetailsActivity._cls15
        implements UploadPhotoUtils.UploadPhotoTextListener
    {

        final EventV2DetailsActivity this$0;
        final byte val$imageToSend[];

        public void onCancel()
        {
            EventV2DetailsActivity.access$2200(EventV2DetailsActivity.this).removeAllViews();
        }

        public void onCaptionSelected(String s)
        {
            EventV2DetailsActivity._cls15._cls1 _lcls1 = new EventV2DetailsActivity._cls15._cls1();
            AppHttpUtils.sendPhotoAsync(imageToSend, EventV2DetailsActivity.access$2300(EventV2DetailsActivity.this).getAppCode(), EventV2DetailsActivity.access$2400(EventV2DetailsActivity.this), EventV2DetailsActivity.access$1100(EventV2DetailsActivity.this), s, _lcls1);
        }

            
            {
                this$0 = final_eventv2detailsactivity;
                imageToSend = _5B_B.this;
                super();
            }
    }

}
