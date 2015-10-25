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

class this._cls1
    implements android.content.lickListener
{

    final l.tabId this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface = new Bundle();
        dialoginterface.putString("ITEM_ID", String.valueOf(loyaltyId));
        ApiUtils.openTab(LoyaltyHandler.access$000(_fld0), tabId, null, null, dialoginterface);
    }

    l.tabId()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/loyalty/LoyaltyHandler$1

/* anonymous class */
    class LoyaltyHandler._cls1
        implements Runnable
    {

        final LoyaltyHandler this$0;
        final android.app.AlertDialog.Builder val$alertBuilder;
        final int val$loyaltyId;
        final String val$tabId;

        public void run()
        {
            AlertDialog alertdialog = alertBuilder.create();
            alertdialog.setCancelable(false);
            alertdialog.setButton(-1, LoyaltyHandler.access$000(LoyaltyHandler.this).getString(com.biznessapps.layout.R.string.go), new LoyaltyHandler._cls1._cls1());
            alertdialog.setButton(-2, LoyaltyHandler.access$000(LoyaltyHandler.this).getString(com.biznessapps.layout.R.string.close), new LoyaltyHandler._cls1._cls2());
            alertdialog.show();
        }

            
            {
                this$0 = final_loyaltyhandler;
                alertBuilder = builder;
                loyaltyId = i;
                tabId = String.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/loyalty/LoyaltyHandler$1$2

/* anonymous class */
        class LoyaltyHandler._cls1._cls2
            implements android.content.DialogInterface.OnClickListener
        {

            final LoyaltyHandler._cls1 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

                    
                    {
                        this$1 = LoyaltyHandler._cls1.this;
                        super();
                    }
        }

    }

}
