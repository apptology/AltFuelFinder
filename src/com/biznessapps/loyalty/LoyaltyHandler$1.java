// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.biznessapps.utils.ApiUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyHandler

class val.tabId
    implements Runnable
{

    final LoyaltyHandler this$0;
    final android.app.er val$alertBuilder;
    final int val$loyaltyId;
    final String val$tabId;

    public void run()
    {
        AlertDialog alertdialog = val$alertBuilder.create();
        alertdialog.setCancelable(false);
        alertdialog.setButton(-1, LoyaltyHandler.access$000(LoyaltyHandler.this).getString(com.biznessapps.layout..this._fld0), new android.content.DialogInterface.OnClickListener() {

            final LoyaltyHandler._cls1 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface = new Bundle();
                dialoginterface.putString("ITEM_ID", String.valueOf(loyaltyId));
                ApiUtils.openTab(LoyaltyHandler.access$000(this$0), tabId, null, null, dialoginterface);
            }

            
            {
                this$1 = LoyaltyHandler._cls1.this;
                super();
            }
        });
        alertdialog.setButton(-2, LoyaltyHandler.access$000(LoyaltyHandler.this).getString(com.biznessapps.layout..this._fld0), new android.content.DialogInterface.OnClickListener() {

            final LoyaltyHandler._cls1 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$1 = LoyaltyHandler._cls1.this;
                super();
            }
        });
        alertdialog.show();
    }

    _cls2.this._cls1()
    {
        this$0 = final_loyaltyhandler;
        val$alertBuilder = er;
        val$loyaltyId = i;
        val$tabId = String.this;
        super();
    }
}
