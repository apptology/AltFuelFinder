// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;


// Referenced classes of package com.biznessapps.golfcourse:
//            ScoreBoardAdapter

static final class  extends Enum
{

    private static final ROW_PLAYER $VALUES[];
    public static final ROW_PLAYER ROW_HANDICAP;
    public static final ROW_PLAYER ROW_PAR;
    public static final ROW_PLAYER ROW_PLAYER;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/biznessapps/golfcourse/ScoreBoardAdapter$RowType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        ROW_PAR = new <init>("ROW_PAR", 0);
        ROW_HANDICAP = new <init>("ROW_HANDICAP", 1);
        ROW_PLAYER = new <init>("ROW_PLAYER", 2);
        $VALUES = (new .VALUES[] {
            ROW_PAR, ROW_HANDICAP, ROW_PLAYER
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
