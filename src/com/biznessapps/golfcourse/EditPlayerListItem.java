// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import com.biznessapps.common.components.WheelDelegate;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.golfcourse.model.Player;

public class EditPlayerListItem extends CommonListEntity
{

    private static final long serialVersionUID = 0xb9ad5e2ddb0e7b06L;
    public boolean isPickable;
    public boolean isRequired;
    public WheelDelegate picker;
    public Player player;

    public EditPlayerListItem(String s)
    {
        super(s);
        isPickable = false;
        isRequired = true;
    }
}
