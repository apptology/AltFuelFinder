// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.storage.StorageException;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            EditPlayerFragment

class this._cls0
    implements android.view.yerFragment._cls4
{

    final EditPlayerFragment this$0;

    public void onClick(View view)
    {
        Assert.assertTrue(EditPlayerFragment.access$300(EditPlayerFragment.this));
        if (EditPlayerFragment.access$400(EditPlayerFragment.this) != -1L)
        {
            view = Game.getGame(EditPlayerFragment.access$400(EditPlayerFragment.this));
            view.deletePlayer(EditPlayerFragment.access$200(EditPlayerFragment.this).getId());
            try
            {
                GolfDatabase.getInstance().updateGame(view);
            }
            // Misplaced declaration of an exception variable
            catch (View view) { }
        } else
        {
            Player.deletePlayer(EditPlayerFragment.access$200(EditPlayerFragment.this).getId(), true);
        }
        finishFragment(-1, null);
    }

    ()
    {
        this$0 = EditPlayerFragment.this;
        super();
    }
}
