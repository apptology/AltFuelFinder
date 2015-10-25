// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.DialogInterface;
import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2DetailFragment, LoyaltyV2Entity

class val.secretEditText
    implements android.content.tener
{

    final LoyaltyV2DetailFragment this$0;
    final EditText val$secretEditText;

    public void onClick(final DialogInterface dialog, int i)
    {
        String s = val$secretEditText.getText().toString();
        i = LoyaltyV2DetailFragment.access$300(LoyaltyV2DetailFragment.this).getAwardedValue();
        LoyaltyV2DetailFragment.access$600(LoyaltyV2DetailFragment.this, true, s, i, null, new Runnable() {

            final LoyaltyV2DetailFragment._cls5 this$1;
            final DialogInterface val$dialog;

            public void run()
            {
                LoyaltyV2DetailFragment.access$400(this$0);
                LoyaltyV2DetailFragment.access$500(this$0);
                dialog.dismiss();
            }

            
            {
                this$1 = LoyaltyV2DetailFragment._cls5.this;
                dialog = dialoginterface;
                super();
            }
        }, new Runnable() {

            final LoyaltyV2DetailFragment._cls5 this$1;
            final DialogInterface val$dialog;

            public void run()
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
                dialog.dismiss();
            }

            
            {
                this$1 = LoyaltyV2DetailFragment._cls5.this;
                dialog = dialoginterface;
                super();
            }
        });
    }

    _cls2.val.dialog()
    {
        this$0 = final_loyaltyv2detailfragment;
        val$secretEditText = EditText.this;
        super();
    }
}
