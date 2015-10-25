// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.widgets.LoaderImageView;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2Perk

public class LoyaltyV2PerkIconView extends FrameLayout
{

    private int mAvailableColor;
    private ImageView mIVInsideBorder;
    private ImageView mIVOutsideBorder;
    private ImageView mIVOverlay;
    private LoaderImageView mIVPerkIcon;
    private LoyaltyV2Perk mPerk;
    private RotateAnimation mRotateAnimation;
    private int mUnavailableColor;
    private ViewGroup mVGBorder;

    public LoyaltyV2PerkIconView(Context context)
    {
        super(context);
        initView();
    }

    public LoyaltyV2PerkIconView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initView();
    }

    public LoyaltyV2PerkIconView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initView();
    }

    private void initView()
    {
        ViewGroup viewgroup = (ViewGroup)inflate(getContext(), com.biznessapps.layout.R.layout.loyalty_v2_perk_icon, this);
        mVGBorder = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgBorder);
        mIVOutsideBorder = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivOutsideBorder);
        mIVInsideBorder = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivInsideBorder);
        mIVOverlay = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivOverlay);
        mIVPerkIcon = (LoaderImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivPerkIcon);
    }

    private void startRotatingAnimation()
    {
        if (mRotateAnimation == null)
        {
            mRotateAnimation = new RotateAnimation(0.0F, 360F, 1, 0.5F, 1, 0.5F);
            mRotateAnimation.setRepeatCount(-1);
            mRotateAnimation.setInterpolator(new LinearInterpolator());
            mRotateAnimation.setDuration(3000L);
            mVGBorder.startAnimation(mRotateAnimation);
        }
    }

    private void stopRotatingAnimation()
    {
        if (mRotateAnimation != null)
        {
            mRotateAnimation.cancel();
        }
        mRotateAnimation = null;
    }

    public void setPerk(LoyaltyV2Perk loyaltyv2perk, UiSettings uisettings)
    {
        int i;
        boolean flag;
        if (loyaltyv2perk != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        i = uisettings.getButtonBgColor();
        mPerk = loyaltyv2perk;
        mAvailableColor = i;
        mUnavailableColor = -1;
        loyaltyv2perk = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        loyaltyv2perk.setView(mIVPerkIcon);
        loyaltyv2perk.setTint(null);
        loyaltyv2perk.setUrl(mPerk.gaugeIcon);
        loyaltyv2perk.setImageSrc(true);
        loyaltyv2perk.setImageType(1);
        loyaltyv2perk.setLoadCallback(new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

            final LoyaltyV2PerkIconView this$0;

            public void onImageLoaded(String s, Bitmap bitmap, View view)
            {
                ((LoaderImageView)view).setImageBitmap(bitmap, true);
                updateUI();
            }

            
            {
                this$0 = LoyaltyV2PerkIconView.this;
                super();
            }
        });
        mIVPerkIcon.setImageDrawable(mPerk.gaugeIcon, loyaltyv2perk);
        updateUI();
    }

    public void updateUI()
    {
        mIVOverlay.setVisibility(8);
        if (mPerk.isAvailable)
        {
            mIVOutsideBorder.setImageResource(com.biznessapps.layout.R.drawable.loyalty_icon_perk_available);
            mIVInsideBorder.setImageResource(com.biznessapps.layout.R.drawable.loyalty_icon_perk_available);
            if (mPerk.isConsumed)
            {
                mIVOverlay.setImageResource(com.biznessapps.layout.R.drawable.loyalty_icon_perk_available_consumed_overlay);
                mIVOverlay.setVisibility(0);
                stopRotatingAnimation();
            } else
            {
                startRotatingAnimation();
            }
            BZImageViewStyle.getInstance(getContext()).apply(mAvailableColor, mIVInsideBorder);
            return;
        }
        if (mPerk.isConsumed)
        {
            mIVOverlay.setImageResource(com.biznessapps.layout.R.drawable.loyalty_icon_perk_unavailable_consumed_overlay);
            mIVOverlay.setVisibility(0);
        }
        mIVOutsideBorder.setImageResource(com.biznessapps.layout.R.drawable.loyalty_icon_perk_unavailable);
        mIVInsideBorder.setImageResource(com.biznessapps.layout.R.drawable.loyalty_icon_perk_unavailable);
        BZImageViewStyle.getInstance(getContext()).apply(mUnavailableColor, mIVInsideBorder);
        stopRotatingAnimation();
    }
}
