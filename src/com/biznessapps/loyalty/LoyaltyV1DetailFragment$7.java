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

class val.columnImage
    implements android.view.Fragment._cls7
{

    final LoyaltyV1DetailFragment this$0;
    final dItem val$card;
    final ImageView val$columnImage;

    public void onClick(View view)
    {
        if (!val$card.isLocked() && val$card.isApproved() && val$card.isLast())
        {
            LoyaltyV1DetailFragment.access$102(LoyaltyV1DetailFragment.this, true);
            LoyaltyV1DetailFragment.access$200(LoyaltyV1DetailFragment.this);
        } else
        if (!val$card.isLocked() && !val$card.isApproved())
        {
            view = new android.app.(getHoldActivity());
            ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.etApplicationContext);
            ((TextView)viewgroup.findViewById(com.biznessapps.layout.etApplicationContext)).setText(getString(com.biznessapps.layout.log_message));
            final EditText secretEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.xt);
            view.ativeButton(com.biznessapps.layout., new android.content.DialogInterface.OnClickListener() {

                final LoyaltyV1DetailFragment._cls7 this$1;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                }

            
            {
                this$1 = LoyaltyV1DetailFragment._cls7.this;
                super();
            }
            });
            view.itiveButton(com.biznessapps.layout.s_title, new android.content.DialogInterface.OnClickListener() {

                final LoyaltyV1DetailFragment._cls7 this$1;
                final EditText val$secretEditText;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    String s = secretEditText.getText().toString();
                    i = LoyaltyV1DetailFragment.access$400(this$0).getApprovedCount();
                    LoyaltyV1DetailFragment.access$1300(this$0, true, s, i, "stamp", dialoginterface. new Runnable() {

                        final _cls2 this$2;
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
                    }, dialoginterface. new Runnable() {

                        final _cls2 this$2;
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
                    });
                }

            
            {
                this$1 = LoyaltyV1DetailFragment._cls7.this;
                secretEditText = edittext;
                super();
            }
            });
            view.w(viewgroup);
            view.le(getHoldActivity().getString(com.biznessapps.layout.tle));
            view.y_dialog_title();
            return;
        }
    }

    dItem()
    {
        this$0 = final_loyaltyv1detailfragment;
        val$card = ditem;
        val$columnImage = ImageView.this;
        super();
    }
}
