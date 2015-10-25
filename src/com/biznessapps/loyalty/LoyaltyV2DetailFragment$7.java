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
//            OnPerkItemRedeemClickListener, LoyaltyV2DetailFragment, LoyaltyV2Perk, LoyaltyV2Entity

class this._cls0
    implements OnPerkItemRedeemClickListener
{

    final LoyaltyV2DetailFragment this$0;

    public void onRedeemClickListener(final LoyaltyV2Perk perk)
    {
        android.app.kListener klistener = new android.app.(getHoldActivity());
        ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.etApplicationContext);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.etApplicationContext)).setText(getString(com.biznessapps.layout.alog_message));
        final EditText secretEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.xt);
        klistener.ativeButton(com.biznessapps.layout., new android.content.DialogInterface.OnClickListener() {

            final LoyaltyV2DetailFragment._cls7 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$1 = LoyaltyV2DetailFragment._cls7.this;
                super();
            }
        });
        klistener.itiveButton(com.biznessapps.layout., new android.content.DialogInterface.OnClickListener() {

            final LoyaltyV2DetailFragment._cls7 this$1;
            final LoyaltyV2Perk val$perk;
            final EditText val$secretEditText;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                i = LoyaltyV2DetailFragment.access$300(this$0).getAwardedValue();
                int j = perk.totalPoints;
                dialoginterface = secretEditText.getText().toString();
                LoyaltyV2DetailFragment.access$600(this$0, false, dialoginterface, i - j, perk.getId(), new Runnable() {

                    final _cls2 this$2;

                    public void run()
                    {
                        LoyaltyV2DetailFragment.access$700(this$0, perk);
                        LoyaltyV2DetailFragment.access$500(this$0);
                    }

            
            {
                this$2 = _cls2.this;
                super();
            }
                }, new Runnable() {

                    final _cls2 this$2;

                    public void run()
                    {
                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
                    }

            
            {
                this$2 = _cls2.this;
                super();
            }
                });
            }

            
            {
                this$1 = LoyaltyV2DetailFragment._cls7.this;
                perk = loyaltyv2perk;
                secretEditText = edittext;
                super();
            }
        });
        klistener.w(viewgroup);
        klistener.le(getHoldActivity().getString(com.biznessapps.layout.tle));
        klistener.y_dialog_title();
    }

    _cls2.val.secretEditText()
    {
        this$0 = LoyaltyV2DetailFragment.this;
        super();
    }
}
