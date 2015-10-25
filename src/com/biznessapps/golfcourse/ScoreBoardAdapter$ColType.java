// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;


// Referenced classes of package com.biznessapps.golfcourse:
//            ScoreBoardAdapter

static final class  extends Enum
{

    private static final COL_NET_TOTAL $VALUES[];
    public static final COL_NET_TOTAL COL_CONTENT;
    public static final COL_NET_TOTAL COL_FIRST;
    public static final COL_NET_TOTAL COL_NET_TOTAL;
    public static final COL_NET_TOTAL COL_TOTAL;
    public static final COL_NET_TOTAL COL_TOTAL_IN;
    public static final COL_NET_TOTAL COL_TOTAL_OUT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/biznessapps/golfcourse/ScoreBoardAdapter$ColType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        COL_FIRST = new <init>("COL_FIRST", 0);
        COL_CONTENT = new <init>("COL_CONTENT", 1);
        COL_TOTAL_IN = new <init>("COL_TOTAL_IN", 2);
        COL_TOTAL_OUT = new <init>("COL_TOTAL_OUT", 3);
        COL_TOTAL = new <init>("COL_TOTAL", 4);
        COL_NET_TOTAL = new <init>("COL_NET_TOTAL", 5);
        $VALUES = (new .VALUES[] {
            COL_FIRST, COL_CONTENT, COL_TOTAL_IN, COL_TOTAL_OUT, COL_TOTAL, COL_NET_TOTAL
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
