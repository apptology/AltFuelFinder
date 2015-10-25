// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;


// Referenced classes of package com.biznessapps.events:
//            EventEntity

public static final class  extends Enum
{

    private static final SA $VALUES[];
    public static final SA FR;
    public static final SA MO;
    public static final SA SA;
    public static final SA SU;
    public static final SA TH;
    public static final SA TU;
    public static final SA WE;

    public static  findDay(int i)
    {
         a[] = values();
        int k = a.length;
        for (int j = 0; j < k; j++)
        {
              = a[j];
            if (.ordinal() == i)
            {
                return ;
            }
        }

        return SU;
    }

    public static SU valueOf(String s)
    {
        return (SU)Enum.valueOf(com/biznessapps/events/EventEntity$RecurringDay, s);
    }

    public static SU[] values()
    {
        return (SU[])$VALUES.clone();
    }

    static 
    {
        SU = new <init>("SU", 0);
        MO = new <init>("MO", 1);
        TU = new <init>("TU", 2);
        WE = new <init>("WE", 3);
        TH = new <init>("TH", 4);
        FR = new <init>("FR", 5);
        SA = new <init>("SA", 6);
        $VALUES = (new .VALUES[] {
            SU, MO, TU, WE, TH, FR, SA
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
