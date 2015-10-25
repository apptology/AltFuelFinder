// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.util.SparseArray;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.golfcourse.model.PlayerScore;
import com.biznessapps.golfcourse.model.Score;
import com.biznessapps.storage.StorageException;
import java.util.HashMap;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            OnScorePuttsSelectedListener, HoleDetailFragment

class this._cls0
    implements OnScorePuttsSelectedListener
{

    final HoleDetailFragment this$0;

    public void onSelected(ayerHoleScoreTag ayerholescoretag, int i, int j)
    {
        Player player;
        boolean flag;
        if (ayerholescoretag != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        player = Player.getPlayer(ayerholescoretag.player.getId());
        if (i == 0 && j == 0)
        {
            if (ayerholescoretag.score != null)
            {
                ((PlayerScore)HoleDetailFragment.access$200(HoleDetailFragment.this).scores.get(player)).holeScores.put(ayerholescoretag.holeNumber, null);
                try
                {
                    GolfDatabase.getInstance().deleteScore(ayerholescoretag.score);
                }
                // Misplaced declaration of an exception variable
                catch (ayerHoleScoreTag ayerholescoretag)
                {
                    ayerholescoretag.printStackTrace();
                }
            }
        } else
        {
            if (ayerholescoretag.score == null)
            {
                ayerholescoretag.score = new Score();
                ayerholescoretag.score.gameID = HoleDetailFragment.access$200(HoleDetailFragment.this).id;
                ayerholescoretag.score.playerID = ayerholescoretag.player.getId();
                ayerholescoretag.score.holeNumber = ayerholescoretag.holeNumber;
                ((PlayerScore)HoleDetailFragment.access$200(HoleDetailFragment.this).scores.get(player)).holeScores.put(ayerholescoretag.holeNumber, ayerholescoretag.score);
            }
            ayerholescoretag.score.score = i;
            ayerholescoretag.score.putts = j;
            try
            {
                GolfDatabase.getInstance().addScore(ayerholescoretag.score);
            }
            // Misplaced declaration of an exception variable
            catch (ayerHoleScoreTag ayerholescoretag)
            {
                ayerholescoretag.printStackTrace();
            }
        }
        HoleDetailFragment.access$300(HoleDetailFragment.this);
    }

    ayerHoleScoreTag()
    {
        this$0 = HoleDetailFragment.this;
        super();
    }
}
