// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.golfcourse.model.Score;

// Referenced classes of package com.biznessapps.golfcourse:
//            HoleDetailFragment

class score
{

    public int holeNumber;
    public Player player;
    public Score score;
    final HoleDetailFragment this$0;

    public (Player player1, int i, Score score1)
    {
        this$0 = HoleDetailFragment.this;
        super();
        player = player1;
        holeNumber = i;
        score = score1;
    }
}
