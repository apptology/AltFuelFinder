// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;


// Referenced classes of package com.biznessapps.utils:
//            CommonUtils, ImageScaleType

static class 
{

    static final int $SwitchMap$com$biznessapps$utils$ImageScaleType[];

    static 
    {
        $SwitchMap$com$biznessapps$utils$ImageScaleType = new int[ImageScaleType.values().length];
        try
        {
            $SwitchMap$com$biznessapps$utils$ImageScaleType[ImageScaleType.SCALE_FIT_X.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$biznessapps$utils$ImageScaleType[ImageScaleType.SCALE_FIT_Y.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$biznessapps$utils$ImageScaleType[ImageScaleType.SCALE_FIT_XY.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$biznessapps$utils$ImageScaleType[ImageScaleType.SCALE_FIT_PROPER.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
