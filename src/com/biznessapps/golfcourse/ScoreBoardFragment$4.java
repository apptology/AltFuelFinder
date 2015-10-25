// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.net.Uri;
import android.view.View;
import com.biznessapps.common.social.ui.OnSharingCompletedListener;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.golfcourse:
//            ScoreBoardFragment, OnScoreBoardCaptureListener

class this._cls0
    implements android.view.ardFragment._cls4
{

    final ScoreBoardFragment this$0;

    public void onClick(View view)
    {
        ScoreBoardFragment.access$400(ScoreBoardFragment.this, new OnScoreBoardCaptureListener() {

            final ScoreBoardFragment._cls4 this$1;

            public void onCaptured(Uri uri)
            {
                String s = String.format("%s: %s\n%s:%s", new Object[] {
                    getString(com.biznessapps.layout.R.string.course), ScoreBoardFragment.access$200(this$0).getCourse().name, getString(com.biznessapps.layout.R.string.played_date), CommonUtils.getDateString(ScoreBoardFragment.access$200(this$0).startDate, "MMM dd, yyyy")
                });
                ShareComponent.showSharingOptionDialog(getActivity(), 239, s, ScoreBoardFragment.access$000(this$0), uri, new OnSharingCompletedListener() {

                    final _cls1 this$2;

                    public void onSharingCanceled()
                    {
                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sharing_canceled));
                    }

                    public void onSharingCompleted(int i)
                    {
                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sharing_completed));
                    }

                    public void onSharingError(int i, String s, String s1)
                    {
                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.something_went_wrong));
                    }

            
            {
                this$2 = _cls1.this;
                super();
            }
                });
            }

            
            {
                this$1 = ScoreBoardFragment._cls4.this;
                super();
            }
        });
    }

    _cls1.this._cls1()
    {
        this$0 = ScoreBoardFragment.this;
        super();
    }
}
