// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import junit.framework.Assert;

// Referenced classes of package com.biznessapps.common.social.ui:
//            OnSharingOptionSelectedListener, ShareComponent

static final class ectedListener extends OnSharingOptionSelectedListener
{

    public void onSharingOptionSelected(int i)
    {
        switch (i)
        {
        default:
            return;

        case 1: // '\001'
            ShareComponent.shareTextViaEmail(activity, text, listener);
            return;

        case 2: // '\002'
            ShareComponent.shareTextViaSMS(activity, text, listener);
            return;

        case 4: // '\004'
            ShareComponent.shareTextViaFacebook(activity, text, listener);
            return;

        case 8: // '\b'
            ShareComponent.shareTextViaTwitter(activity, text, listener);
            return;

        case 16: // '\020'
            ShareComponent.shareTextViaGooglePlus(activity, text, listener);
            return;

        case 32: // ' '
            break;
        }
        boolean flag;
        if ("It must be image sharing!" == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
    }

    ectedListener()
    {
    }
}
