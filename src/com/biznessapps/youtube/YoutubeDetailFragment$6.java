// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.biznessapps.player.PlayerServiceAccessor;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeDetailFragment

class this._cls0
    implements android.view.Fragment._cls6
{

    final YoutubeDetailFragment this$0;

    public void onClick(View view)
    {
        if (YoutubeDetailFragment.access$700(YoutubeDetailFragment.this) == null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        YoutubeDetailFragment.access$800(YoutubeDetailFragment.this).stop();
        view = new Intent("android.intent.action.VIEW");
        view.setData(Uri.parse(YoutubeDetailFragment.access$700(YoutubeDetailFragment.this)));
        startActivity(view);
        return;
        view;
    }

    ()
    {
        this$0 = YoutubeDetailFragment.this;
        super();
    }
}
