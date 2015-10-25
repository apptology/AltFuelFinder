// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.email;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.utils.StringUtils;

// Referenced classes of package com.biznessapps.common.social.email:
//            EmailSocialNetworkHandler

class val.etEmail
    implements android.content.ner
{

    final EmailSocialNetworkHandler this$0;
    final EditText val$etEmail;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface = val$etEmail.getText().toString();
        if (StringUtils.isCorrectEmail(dialoginterface))
        {
            setEmailAccount(dialoginterface);
            EmailSocialNetworkHandler.access$300(EmailSocialNetworkHandler.this).onLoginCompleted(EmailSocialNetworkHandler.this);
            return;
        } else
        {
            EmailSocialNetworkHandler.access$600(EmailSocialNetworkHandler.this).onError(EmailSocialNetworkHandler.this, EmailSocialNetworkHandler.access$400(EmailSocialNetworkHandler.this).getString(com.biznessapps.layout.orkHandler), EmailSocialNetworkHandler.access$500(EmailSocialNetworkHandler.this).getString(com.biznessapps.layout.t));
            return;
        }
    }

    ()
    {
        this$0 = final_emailsocialnetworkhandler;
        val$etEmail = EditText.this;
        super();
    }
}
