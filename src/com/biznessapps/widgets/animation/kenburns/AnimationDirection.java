// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;


public final class AnimationDirection extends Enum
{

    private static final AnimationDirection $VALUES[];
    public static final AnimationDirection LEFT_TO_RIGHT;
    public static final AnimationDirection RIGHT_TO_LEFT;

    private AnimationDirection(String s, int i)
    {
        super(s, i);
    }

    public static AnimationDirection valueOf(String s)
    {
        return (AnimationDirection)Enum.valueOf(com/biznessapps/widgets/animation/kenburns/AnimationDirection, s);
    }

    public static AnimationDirection[] values()
    {
        return (AnimationDirection[])$VALUES.clone();
    }

    static 
    {
        LEFT_TO_RIGHT = new AnimationDirection("LEFT_TO_RIGHT", 0);
        RIGHT_TO_LEFT = new AnimationDirection("RIGHT_TO_LEFT", 1);
        $VALUES = (new AnimationDirection[] {
            LEFT_TO_RIGHT, RIGHT_TO_LEFT
        });
    }
}
