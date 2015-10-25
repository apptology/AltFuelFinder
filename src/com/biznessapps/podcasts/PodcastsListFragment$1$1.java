// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.podcasts;

import android.support.v4.app.FragmentActivity;
import com.biznessapps.player.PlayerStateListener;

// Referenced classes of package com.biznessapps.podcasts:
//            PodcastsListFragment, PodcastAdapter

class this._cls1
    implements Runnable
{

    final SetChanged this$1;

    public void run()
    {
        PodcastsListFragment.access$000(_fld0).notifyDataSetChanged();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/podcasts/PodcastsListFragment$1

/* anonymous class */
    class PodcastsListFragment._cls1 extends PlayerStateListener
    {

        final PodcastsListFragment this$0;

        public void onStateChanged(int i)
        {
            if (PodcastsListFragment.access$000(PodcastsListFragment.this) != null)
            {
                getActivity().runOnUiThread(new PodcastsListFragment._cls1._cls1());
            }
        }

            
            {
                this$0 = PodcastsListFragment.this;
                super();
            }
    }

}
