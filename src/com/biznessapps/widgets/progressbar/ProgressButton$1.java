// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.progressbar;


// Referenced classes of package com.biznessapps.widgets.progressbar:
//            ProgressButton

static class ates
{

    static final int $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[];

    static 
    {
        $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States = new int[ates.values().length];
        try
        {
            $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[ates.WAITING.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[ates.PENDING.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[ates.PLAYING.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$biznessapps$widgets$progressbar$ProgressButton$States[ates.PAUSED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
