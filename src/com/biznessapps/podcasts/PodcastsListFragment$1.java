// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.podcasts;

import android.support.v4.app.FragmentActivity;
import com.biznessapps.player.PlayerStateListener;

// Referenced classes of package com.biznessapps.podcasts:
//            PodcastsListFragment, PodcastAdapter

class > extends PlayerStateListener
{

    final PodcastsListFragment this$0;

    public void onStateChanged(int i)
    {
        if (PodcastsListFragment.access$000(PodcastsListFragment.this) != null)
        {
            getActivity().runOnUiThread(new Runnable() {

                final PodcastsListFragment._cls1 this$1;

                public void run()
                {
                    PodcastsListFragment.access$000(this$0).notifyDataSetChanged();
                }

            
            {
                this$1 = PodcastsListFragment._cls1.this;
                super();
            }
            });
        }
    }

    _cls1.this._cls1()
    {
        this$0 = PodcastsListFragment.this;
        super();
    }
}
