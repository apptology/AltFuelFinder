// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.progressbar;


// Referenced classes of package com.biznessapps.widgets.progressbar:
//            ProgressButton

public static final class  extends Enum
{

    private static final PAUSED $VALUES[];
    public static final PAUSED PAUSED;
    public static final PAUSED PENDING;
    public static final PAUSED PLAYING;
    public static final PAUSED WAITING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/biznessapps/widgets/progressbar/ProgressButton$States, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        WAITING = new <init>("WAITING", 0);
        PENDING = new <init>("PENDING", 1);
        PLAYING = new <init>("PLAYING", 2);
        PAUSED = new <init>("PAUSED", 3);
        $VALUES = (new .VALUES[] {
            WAITING, PENDING, PLAYING, PAUSED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
