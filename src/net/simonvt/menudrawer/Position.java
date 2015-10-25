// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;


public final class Position extends Enum
{

    private static final Position $VALUES[];
    public static final Position BOTTOM;
    public static final Position LEFT;
    public static final Position RIGHT;
    public static final Position TOP;

    private Position(String s, int i)
    {
        super(s, i);
    }

    public static Position valueOf(String s)
    {
        return (Position)Enum.valueOf(net/simonvt/menudrawer/Position, s);
    }

    public static Position[] values()
    {
        return (Position[])$VALUES.clone();
    }

    static 
    {
        LEFT = new Position("LEFT", 0);
        TOP = new Position("TOP", 1);
        RIGHT = new Position("RIGHT", 2);
        BOTTOM = new Position("BOTTOM", 3);
        $VALUES = (new Position[] {
            LEFT, TOP, RIGHT, BOTTOM
        });
    }
}
