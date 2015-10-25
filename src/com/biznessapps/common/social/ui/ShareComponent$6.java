// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;


// Referenced classes of package com.biznessapps.common.social.ui:
//            OnSharingOptionSelectedListener, ShareComponent

static final class lectedListener extends OnSharingOptionSelectedListener
{

    public void onSharingOptionSelected(int i)
    {
        switch (i)
        {
        default:
            return;

        case 1: // '\001'
            ShareComponent.shareImageViaEmail(activity, text, bitmap, bitmapPath, listener);
            return;

        case 2: // '\002'
            ShareComponent.shareImageViaSMS(activity, text, bitmap, bitmapPath, listener);
            return;

        case 4: // '\004'
            ShareComponent.shareImageViaFacebook(activity, text, bitmap, bitmapPath, listener);
            return;

        case 8: // '\b'
            ShareComponent.shareImageViaTwitter(activity, text, bitmap, bitmapPath, listener);
            return;

        case 16: // '\020'
            ShareComponent.shareImageViaGooglePlus(activity, text, bitmap, bitmapPath, listener);
            return;

        case 32: // ' '
            ShareComponent.saveImageToGallery(activity, text, bitmap, bitmapPath, listener);
            break;
        }
    }

    lectedListener()
    {
    }
}
