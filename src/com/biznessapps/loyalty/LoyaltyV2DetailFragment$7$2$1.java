// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.DialogInterface;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2DetailFragment, OnPerkItemRedeemClickListener, LoyaltyV2Perk, LoyaltyV2Entity

class this._cls2
    implements Runnable
{

    final ._cls0 this$2;

    public void run()
    {
        LoyaltyV2DetailFragment.access$700(_fld0, perk);
        LoyaltyV2DetailFragment.access$500(_fld0);
    }

    ._cls0()
    {
        this$2 = this._cls2.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV2DetailFragment$7

/* anonymous class */
    class LoyaltyV2DetailFragment._cls7
        implements OnPerkItemRedeemClickListener
    {

        final LoyaltyV2DetailFragment this$0;

        public void onRedeemClickListener(final LoyaltyV2Perk perk)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getHoldActivity());
            ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.loyalty_dialog);
            ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_title_view)).setText(getString(com.biznessapps.layout.R.string.loyalty_redeem_dialog_message));
            EditText edittext = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_secret_edittext);
            builder.setNegativeButton(com.biznessapps.layout.R.string.cancel, new LoyaltyV2DetailFragment._cls7._cls1());
            builder.setPositiveButton(com.biznessapps.layout.R.string.redeem, edittext. new LoyaltyV2DetailFragment._cls7._cls2());
            builder.setView(viewgroup);
            builder.setTitle(getHoldActivity().getString(com.biznessapps.layout.R.string.loyalty_dialog_title));
            builder.show();
        }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV2DetailFragment$7$1

/* anonymous class */
        class LoyaltyV2DetailFragment._cls7._cls1
            implements android.content.DialogInterface.OnClickListener
        {

            final LoyaltyV2DetailFragment._cls7 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

                    
                    {
                        this$1 = LoyaltyV2DetailFragment._cls7.this;
                        super();
                    }
        }

    }


    // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2

/* anonymous class */
    class LoyaltyV2DetailFragment._cls7._cls2
        implements android.content.DialogInterface.OnClickListener
    {

        final LoyaltyV2DetailFragment._cls7 this$1;
        final LoyaltyV2Perk val$perk;
        final EditText val$secretEditText;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            i = LoyaltyV2DetailFragment.access$300(this$0).getAwardedValue();
            int j = perk.totalPoints;
            dialoginterface = secretEditText.getText().toString();
            LoyaltyV2DetailFragment.access$600(this$0, false, dialoginterface, i - j, perk.getId(), new LoyaltyV2DetailFragment._cls7._cls2._cls1(), new LoyaltyV2DetailFragment._cls7._cls2._cls2());
        }

            
            {
                this$1 = final__pcls7;
                perk = loyaltyv2perk;
                secretEditText = EditText.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV2DetailFragment$7$2$2

/* anonymous class */
        class LoyaltyV2DetailFragment._cls7._cls2._cls2
            implements Runnable
        {

            final LoyaltyV2DetailFragment._cls7._cls2 this$2;

            public void run()
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
            }

                    
                    {
                        this$2 = LoyaltyV2DetailFragment._cls7._cls2.this;
                        super();
                    }
        }

    }

}
