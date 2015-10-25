// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;


// Referenced classes of package com.biznessapps.golfcourse:
//            ScoreBoardAdapter

static class wType
{

    static final int $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[];
    static final int $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType[];

    static 
    {
        $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType = new int[lType.values().length];
        try
        {
            $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[lType.COL_TOTAL_OUT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[lType.COL_TOTAL_IN.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[lType.COL_TOTAL.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[lType.COL_NET_TOTAL.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[lType.COL_CONTENT.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType = new int[wType.values().length];
        try
        {
            $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType[wType.ROW_PAR.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType[wType.ROW_HANDICAP.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType[wType.ROW_PLAYER.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
