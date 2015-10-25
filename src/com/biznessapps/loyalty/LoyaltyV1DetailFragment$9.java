// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.DialogInterface;
import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1DetailFragment, LoyaltyV1Entity

class val.secretEditText
    implements android.content.tener
{

    final LoyaltyV1DetailFragment this$0;
    final EditText val$secretEditText;

    public void onClick(final DialogInterface dialog, int i)
    {
        i = LoyaltyV1DetailFragment.access$400(LoyaltyV1DetailFragment.this).getApprovedCount();
        String s = val$secretEditText.getText().toString();
        LoyaltyV1DetailFragment.access$1300(LoyaltyV1DetailFragment.this, false, s, i, "redeem", new Runnable() {

            final LoyaltyV1DetailFragment._cls9 this$1;
            final DialogInterface val$dialog;

            public void run()
            {
                LoyaltyV1DetailFragment.access$902(this$0, 1);
                LoyaltyV1DetailFragment.access$300(this$0);
                LoyaltyV1DetailFragment.access$1400(this$0);
                dialog.dismiss();
            }

            
            {
                this$1 = LoyaltyV1DetailFragment._cls9.this;
                dialog = dialoginterface;
                super();
            }
        }, new Runnable() {

            final LoyaltyV1DetailFragment._cls9 this$1;
            final DialogInterface val$dialog;

            public void run()
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
                dialog.dismiss();
            }

            
            {
                this$1 = LoyaltyV1DetailFragment._cls9.this;
                dialog = dialoginterface;
                super();
            }
        });
    }

    _cls2.val.dialog()
    {
        this$0 = final_loyaltyv1detailfragment;
        val$secretEditText = EditText.this;
        super();
    }
}
