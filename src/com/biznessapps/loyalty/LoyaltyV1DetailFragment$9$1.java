// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.DialogInterface;
import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1DetailFragment, LoyaltyV1Entity

class val.dialog
    implements Runnable
{

    final val.dialog this$1;
    final DialogInterface val$dialog;

    public void run()
    {
        LoyaltyV1DetailFragment.access$902(_fld0, 1);
        LoyaltyV1DetailFragment.access$300(_fld0);
        LoyaltyV1DetailFragment.access$1400(_fld0);
        val$dialog.dismiss();
    }

    l.secretEditText()
    {
        this$1 = final_secretedittext;
        val$dialog = DialogInterface.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV1DetailFragment$9

/* anonymous class */
    class LoyaltyV1DetailFragment._cls9
        implements android.content.DialogInterface.OnClickListener
    {

        final LoyaltyV1DetailFragment this$0;
        final EditText val$secretEditText;

        public void onClick(final DialogInterface dialog, int i)
        {
            i = LoyaltyV1DetailFragment.access$400(LoyaltyV1DetailFragment.this).getApprovedCount();
            String s = secretEditText.getText().toString();
            LoyaltyV1DetailFragment.access$1300(LoyaltyV1DetailFragment.this, false, s, i, "redeem", dialog. new LoyaltyV1DetailFragment._cls9._cls1(), new LoyaltyV1DetailFragment._cls9._cls2());
        }

            
            {
                this$0 = final_loyaltyv1detailfragment;
                secretEditText = EditText.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV1DetailFragment$9$2

/* anonymous class */
        class LoyaltyV1DetailFragment._cls9._cls2
            implements Runnable
        {

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
        }

    }

}
