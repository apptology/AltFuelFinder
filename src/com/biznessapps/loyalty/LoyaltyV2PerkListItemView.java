// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.utils.HeaderUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.widgets.LoaderImageView;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2PerkIconView, LoyaltyV2Perk, LoyaltyV2Entity, OnPerkItemRedeemClickListener

public class LoyaltyV2PerkListItemView extends FrameLayout
{

    private Button mBTRedeem;
    private LoyaltyV2Entity mEntity;
    private LoaderImageView mIVPerkThumbnail;
    private LoyaltyV2Perk mPerk;
    private LoyaltyV2PerkIconView mPerkIconView;
    private OnPerkItemRedeemClickListener mPerkItemRedeemClickListener;
    private android.view.View.OnClickListener mRedeemClickListener = new android.view.View.OnClickListener() {

        final LoyaltyV2PerkListItemView this$0;

        public void onClick(View view)
        {
            boolean flag;
            if (mPerk != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            if (mPerkItemRedeemClickListener != null)
            {
                mPerkItemRedeemClickListener.onRedeemClickListener(mPerk);
            }
        }

            
            {
                this$0 = LoyaltyV2PerkListItemView.this;
                super();
            }
    };
    private TextView mTVPerkDescription;
    private TextView mTVPerkName;
    private TextView mTVPerkPoint;
    private UiSettings mUiSettings;
    private ViewGroup mVGRoot;

    public LoyaltyV2PerkListItemView(Context context)
    {
        super(context);
        initView();
    }

    public LoyaltyV2PerkListItemView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initView();
    }

    private void applyStyle()
    {
        if (mUiSettings != null)
        {
            int i = mUiSettings.getOddRowColorTransparent();
            HeaderUtils.customizeContainer(mVGRoot, i, mUiSettings);
            HeaderUtils.imageContainerCustomization(mVGRoot, mUiSettings);
            ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.data_container);
            BZTextViewStyle.getInstance(getContext()).apply(Integer.valueOf(mUiSettings.getOddRowTextColor()), viewgroup);
            BZButtonStyle.getInstance(getContext()).apply(mUiSettings, mBTRedeem);
        }
    }

    private void initView()
    {
        mVGRoot = (ViewGroup)inflate(getContext(), com.biznessapps.layout.R.layout.loyalty_v2_perk_item_row, this);
        mIVPerkThumbnail = (LoaderImageView)mVGRoot.findViewById(com.biznessapps.layout.R.id.ivPerkThumbnail);
        mPerkIconView = (LoyaltyV2PerkIconView)mVGRoot.findViewById(com.biznessapps.layout.R.id.perkIconView);
        mTVPerkName = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.header);
        mTVPerkDescription = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.tvPerkDescription);
        mTVPerkPoint = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.tvPerkPoint);
        mBTRedeem = (Button)mVGRoot.findViewById(com.biznessapps.layout.R.id.btRedeem);
        mBTRedeem.setOnClickListener(mRedeemClickListener);
        applyStyle();
    }

    public void setOnRedeemClickListener(OnPerkItemRedeemClickListener onperkitemredeemclicklistener)
    {
        mPerkItemRedeemClickListener = onperkitemredeemclicklistener;
    }

    public void setPerk(LoyaltyV2Entity loyaltyv2entity, LoyaltyV2Perk loyaltyv2perk, UiSettings uisettings)
    {
        boolean flag;
        if (loyaltyv2perk != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        mEntity = loyaltyv2entity;
        mPerk = loyaltyv2perk;
        mUiSettings = uisettings;
        mPerkIconView.setPerk(mPerk, uisettings);
        applyStyle();
        if (SocialNetworkManager.getInstance(getContext()).checkLogin(true) && loyaltyv2perk.isAvailable && !loyaltyv2perk.isConsumed)
        {
            mBTRedeem.setVisibility(0);
        } else
        {
            mBTRedeem.setVisibility(8);
        }
        updateUI();
    }

    public void updateUI()
    {
        String s;
        if (StringUtils.isEmpty(mPerk.getImageUrl()))
        {
            mIVPerkThumbnail.setImageBitmap(com.biznessapps.layout.R.drawable.loyalty_white_border_round_rect, true);
            BZImageViewStyle.getInstance(getContext()).apply(Integer.valueOf(getResources().getColor(com.biznessapps.layout.R.color.light_grey)), mIVPerkThumbnail);
        } else
        {
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setView(mIVPerkThumbnail);
            imageloadparams.setTint(null);
            imageloadparams.setUrl(mPerk.getImageUrl());
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageFormType(2);
            imageloadparams.setImageType(1);
            mIVPerkThumbnail.setImageDrawable(mPerk.getImageUrl(), imageloadparams);
        }
        mTVPerkName.setText(mPerk.getTitle());
        mTVPerkDescription.setText(mPerk.getDescription());
        s = String.format("[%s %s]", new Object[] {
            Integer.valueOf(mPerk.totalPoints), mEntity.unitShortHand
        });
        mTVPerkPoint.setText(s);
    }


}
