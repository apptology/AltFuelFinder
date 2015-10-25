// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.DialogInterface;
import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2DetailFragment, LoyaltyV2Entity

class val.dialog
    implements Runnable
{

    final val.dialog this$1;
    final DialogInterface val$dialog;

    public void run()
    {
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.message));
        val$dialog.dismiss();
    }

    l.secretEditText()
    {
        this$1 = final_secretedittext;
        val$dialog = DialogInterface.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV2DetailFragment$5

/* anonymous class */
    class LoyaltyV2DetailFragment._cls5
        implements android.content.DialogInterface.OnClickListener
    {

        final LoyaltyV2DetailFragment this$0;
        final EditText val$secretEditText;

        public void onClick(final DialogInterface dialog, int i)
        {
            String s = secretEditText.getText().toString();
            i = LoyaltyV2DetailFragment.access$300(LoyaltyV2DetailFragment.this).getAwardedValue();
            LoyaltyV2DetailFragment.access$600(LoyaltyV2DetailFragment.this, true, s, i, null, new LoyaltyV2DetailFragment._cls5._cls1(), dialog. new LoyaltyV2DetailFragment._cls5._cls2());
        }

            
            {
                this$0 = final_loyaltyv2detailfragment;
                secretEditText = EditText.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV2DetailFragment$5$1

/* anonymous class */
        class LoyaltyV2DetailFragment._cls5._cls1
            implements Runnable
        {

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
        }

    }

}
