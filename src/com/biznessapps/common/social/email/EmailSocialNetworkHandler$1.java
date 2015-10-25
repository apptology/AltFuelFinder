// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.email;

import android.content.Context;
import android.content.DialogInterface;
import com.biznessapps.common.social.OnSocialLoginListener;

// Referenced classes of package com.biznessapps.common.social.email:
//            EmailSocialNetworkHandler

class this._cls0
    implements android.content.ner
{

    final EmailSocialNetworkHandler this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        EmailSocialNetworkHandler.access$200(EmailSocialNetworkHandler.this).onError(EmailSocialNetworkHandler.this, EmailSocialNetworkHandler.access$000(EmailSocialNetworkHandler.this).getString(com.biznessapps.layout.orkHandler), EmailSocialNetworkHandler.access$100(EmailSocialNetworkHandler.this).getString(com.biznessapps.layout.orkHandler));
    }

    ()
    {
        this$0 = EmailSocialNetworkHandler.this;
        super();
    }
}
