// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.golfcourse.model.Game;

public class GameListLayoutItem extends CommonListEntity
{

    private static final long serialVersionUID = 0xc8c3f6be3fffa3ffL;
    public Game game;

    public GameListLayoutItem(Game game1)
    {
        game = game1;
    }
}
