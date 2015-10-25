// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1DetailFragment, LoyaltyV1Entity

class this._cls1
    implements android.content.ner
{

    final this._cls1 this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
    }

    l.columnImage()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV1DetailFragment$7

/* anonymous class */
    class LoyaltyV1DetailFragment._cls7
        implements android.view.View.OnClickListener
    {

        final LoyaltyV1DetailFragment this$0;
        final LoyaltyV1Entity.LoyaltyCardItem val$card;
        final ImageView val$columnImage;

        public void onClick(View view)
        {
            if (!card.isLocked() && card.isApproved() && card.isLast())
            {
                LoyaltyV1DetailFragment.access$102(LoyaltyV1DetailFragment.this, true);
                LoyaltyV1DetailFragment.access$200(LoyaltyV1DetailFragment.this);
            } else
            if (!card.isLocked() && !card.isApproved())
            {
                view = new android.app.AlertDialog.Builder(getHoldActivity());
                ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.loyalty_dialog);
                ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_title_view)).setText(getString(com.biznessapps.layout.R.string.loyalty_stamp_dialog_message));
                final EditText secretEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_secret_edittext);
                view.setNegativeButton(com.biznessapps.layout.R.string.cancel, new LoyaltyV1DetailFragment._cls7._cls1());
                view.setPositiveButton(com.biznessapps.layout.R.string.loyalty_dialog_yes_title, new LoyaltyV1DetailFragment._cls7._cls2());
                view.setView(viewgroup);
                view.setTitle(getHoldActivity().getString(com.biznessapps.layout.R.string.loyalty_dialog_title));
                view.show();
                return;
            }
        }

            
            {
                this$0 = final_loyaltyv1detailfragment;
                card = loyaltycarditem;
                columnImage = ImageView.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2

/* anonymous class */
        class LoyaltyV1DetailFragment._cls7._cls2
            implements android.content.DialogInterface.OnClickListener
        {

            final LoyaltyV1DetailFragment._cls7 this$1;
            final EditText val$secretEditText;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                String s = secretEditText.getText().toString();
                i = LoyaltyV1DetailFragment.access$400(this$0).getApprovedCount();
                LoyaltyV1DetailFragment.access$1300(this$0, true, s, i, "stamp", dialoginterface. new LoyaltyV1DetailFragment._cls7._cls2._cls1(), dialoginterface. new LoyaltyV1DetailFragment._cls7._cls2._cls2());
            }

                    
                    {
                        this$1 = LoyaltyV1DetailFragment._cls7.this;
                        secretEditText = edittext;
                        super();
                    }
        }


        // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$1

/* anonymous class */
        class LoyaltyV1DetailFragment._cls7._cls2._cls1
            implements Runnable
        {

            final LoyaltyV1DetailFragment._cls7._cls2 this$2;
            final DialogInterface val$dialog;

            public void run()
            {
                LoyaltyV1DetailFragment.access$300(this$0);
                columnImage.setBackgroundResource(com.biznessapps.layout.R.drawable.loyalty_coupon_icon_active);
                CommonUtils.overrideImageColor(LoyaltyV1DetailFragment.access$1000(this$0).getButtonBgColor(), columnImage.getBackground());
                LoyaltyV1DetailFragment.access$1102(this$0, false);
                LoyaltyV1DetailFragment.access$1200(this$0);
                dialog.dismiss();
            }

                    
                    {
                        this$2 = final__pcls2;
                        dialog = DialogInterface.this;
                        super();
                    }
        }


        // Unreferenced inner class com/biznessapps/loyalty/LoyaltyV1DetailFragment$7$2$2

/* anonymous class */
        class LoyaltyV1DetailFragment._cls7._cls2._cls2
            implements Runnable
        {

            final LoyaltyV1DetailFragment._cls7._cls2 this$2;
            final DialogInterface val$dialog;

            public void run()
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
                dialog.dismiss();
            }

                    
                    {
                        this$2 = final__pcls2;
                        dialog = DialogInterface.this;
                        super();
                    }
        }

    }

}
