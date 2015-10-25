// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.net.Uri;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.golfcourse:
//            OnScoreBoardCaptureListener, ScoreBoardFragment

class val.player
    implements OnScoreBoardCaptureListener
{

    final ScoreBoardFragment this$0;
    final Player val$player;

    public void onCaptured(Uri uri)
    {
        if (uri == null)
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.r));
            return;
        }
        String s = String.format("%s: %s\n%s:%s", new Object[] {
            getString(com.biznessapps.layout.t.getString), ScoreBoardFragment.access$200(ScoreBoardFragment.this).getCourse().name, getString(com.biznessapps.layout.t.getString), CommonUtils.getDateString(ScoreBoardFragment.access$200(ScoreBoardFragment.this).startDate, "MMM dd, yyyy")
        });
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/png");
        if (!StringUtils.isEmpty(val$player.email))
        {
            intent.putExtra("android.intent.extra.EMAIL", new String[] {
                val$player.email
            });
        }
        intent.putExtra("android.intent.extra.SUBJECT", getString(com.biznessapps.layout.t.getString));
        intent.putExtra("android.intent.extra.TEXT", s);
        intent.putExtra("android.intent.extra.STREAM", uri);
        startActivity(Intent.createChooser(intent, "Email to player"));
    }

    stener()
    {
        this$0 = final_scoreboardfragment;
        val$player = Player.this;
        super();
    }
}
