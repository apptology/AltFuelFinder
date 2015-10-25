// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;


public class IncompatibleRatioException extends RuntimeException
{

    private static final long serialVersionUID = 0x35951203a2a5bde6L;

    public IncompatibleRatioException()
    {
        super("Can't perform Ken Burns effect on rects with distinct aspect ratios!");
    }
}
