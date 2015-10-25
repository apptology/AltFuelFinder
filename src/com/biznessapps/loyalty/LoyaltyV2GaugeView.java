// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.biznessapps.api.UiSettings;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2Entity, LoyaltyV2Perk, LoyaltyV2PerkIconView

public class LoyaltyV2GaugeView extends FrameLayout
{

    private static final float GAUGE_CIRCLE_BAR_END_ANGLE = 330F;
    private static final float GAUGE_CIRCLE_BAR_START_ANGLE = 210F;
    private static final float GAUGE_CIRCLE_TOTAL_ANGLE = 240F;
    private static final int IGNOREABLE_DIFF_ANGLE = 5;
    private static final int SAME_POINT_PERK_STEP_ANGLE = 50;
    private Bitmap mAvailablePerkBitmap;
    private int mGaugeCircleBarWidth;
    private int mGaugeHeight;
    private int mGaugePaddingX;
    private int mGaugePaddingY;
    private int mGaugeWidth;
    private LoyaltyV2Entity mLoyaltyEntity;
    private Paint mPaint;
    private int mPerkIconWidth;
    private UiSettings mUISettings;

    public LoyaltyV2GaugeView(Context context)
    {
        super(context);
        mPaint = new Paint();
        initView();
    }

    public LoyaltyV2GaugeView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mPaint = new Paint();
        initView();
    }

    public LoyaltyV2GaugeView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mPaint = new Paint();
        initView();
    }

    private void drawGaugeCircleBar(Canvas canvas)
    {
        if (mUISettings == null)
        {
            return;
        } else
        {
            int i = mGaugeCircleBarWidth / 2;
            mPaint.setColor(getResources().getColor(com.biznessapps.layout.R.color.gray));
            RectF rectf = new RectF(mGaugePaddingX + i, mGaugePaddingY + i, (mGaugePaddingX + mGaugeWidth) - i, (mGaugePaddingY + mGaugeHeight) - i);
            canvas.drawArc(rectf, -210F, 240F, false, mPaint);
            float f = Math.max(-30F, 210F - ((float)mLoyaltyEntity.getAwardedValue() / (float)mLoyaltyEntity.getMaxPerkValue()) * 240F);
            mPaint.setColor(mUISettings.getButtonBgColor());
            canvas.drawArc(rectf, -210F, 210F - f, false, mPaint);
            return;
        }
    }

    private void initView()
    {
        mAvailablePerkBitmap = BitmapFactory.decodeResource(getResources(), com.biznessapps.layout.R.drawable.loyalty_icon_perk_available);
        mPerkIconWidth = mAvailablePerkBitmap.getWidth();
        mGaugeCircleBarWidth = mPerkIconWidth / 3;
    }

    private int relayoutGauge(float f, float f1, float f2, float f3, int i)
    {
        List list;
        if (mLoyaltyEntity != null)
        {
            if ((list = mLoyaltyEntity.getDefinedLoyaltyPerks()) != null && list.size() != 0 && i < list.size())
            {
                float f5 = 0.0F;
                LoyaltyV2PerkIconView loyaltyv2perkiconview = null;
                int k = 0;
                int j = i;
                while (j < list.size()) 
                {
                    LoyaltyV2Perk loyaltyv2perk = (LoyaltyV2Perk)list.get(j);
                    float f6 = f3 - ((float)loyaltyv2perk.totalPoints / (float)mLoyaltyEntity.getMaxPerkValue()) * 240F;
                    float f4 = f6;
                    if (f6 < 0.0F)
                    {
                        f4 = f6 + 360F;
                    }
                    f6 = Math.abs(f5 - f4);
                    if (f5 != 0.0F && f6 < 5F)
                    {
                        i = k + 1;
                        android.widget.FrameLayout.LayoutParams layoutparams;
                        boolean flag;
                        if (loyaltyv2perkiconview != null)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        Assert.assertTrue(flag);
                        layoutparams = (android.widget.FrameLayout.LayoutParams)loyaltyv2perkiconview.getLayoutParams();
                        layoutPerk(loyaltyv2perk, layoutparams.leftMargin + mPerkIconWidth / 2, layoutparams.topMargin + mPerkIconWidth / 2, (float)mPerkIconWidth * 0.5F - (float)(mGaugeCircleBarWidth / 2), f3 - (float)(i * 50), true);
                    } else
                    {
                        i = 0;
                        loyaltyv2perkiconview = layoutPerk(loyaltyv2perk, f, f1, f2, f4, true);
                        f5 = f4;
                    }
                    j++;
                    k = i;
                }
                return list.size() - 1;
            }
        }
        return i;
    }

    public void dispatchDraw(Canvas canvas)
    {
        drawGaugeCircleBar(canvas);
        super.dispatchDraw(canvas);
    }

    public LoyaltyV2PerkIconView layoutPerk(LoyaltyV2Perk loyaltyv2perk, float f, float f1, float f2, float f3, boolean flag)
    {
        LoyaltyV2PerkIconView loyaltyv2perkiconview = new LoyaltyV2PerkIconView(getContext());
        loyaltyv2perkiconview.setPerk(loyaltyv2perk, mUISettings);
        f3 = (float)((double)(f3 / 180F) * 3.1415926535897931D);
        int i = (int)((double)f + (double)f2 * Math.cos(f3));
        int j = mPerkIconWidth / 2;
        int k = (int)((double)f1 - (double)f2 * Math.sin(f3));
        int l = mPerkIconWidth / 2;
        loyaltyv2perk = new android.widget.FrameLayout.LayoutParams(-2, -2);
        loyaltyv2perk.leftMargin = i - j;
        loyaltyv2perk.topMargin = k - l;
        loyaltyv2perkiconview.setLayoutParams(loyaltyv2perk);
        if (flag)
        {
            addView(loyaltyv2perkiconview);
            return loyaltyv2perkiconview;
        } else
        {
            addView(loyaltyv2perkiconview, 0);
            return loyaltyv2perkiconview;
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (i == 0 || j == 0)
        {
            return;
        } else
        {
            relayoutGauge();
            return;
        }
    }

    public void relayoutGauge()
    {
        int i = getMeasuredWidth();
        int j = getMeasuredHeight();
        mGaugeWidth = (int)((double)i - (double)mPerkIconWidth * 1.5D);
        mGaugeHeight = (int)((double)j - (double)mPerkIconWidth * 1.5D);
        mGaugePaddingX = (getMeasuredWidth() - mGaugeWidth) / 2;
        mGaugePaddingY = (getMeasuredWidth() - mGaugeWidth) / 2;
        if (mGaugeWidth <= 0 || mGaugeHeight <= 0)
        {
            return;
        } else
        {
            removeAllViews();
            relayoutGauge(i / 2, j / 2, mGaugeWidth / 2 - mGaugeCircleBarWidth / 2, 210F, 0);
            (new Handler()).post(new Runnable() {

                final LoyaltyV2GaugeView this$0;

                public void run()
                {
                    requestLayout();
                }

            
            {
                this$0 = LoyaltyV2GaugeView.this;
                super();
            }
            });
            return;
        }
    }

    public void setLoyaltyEntity(LoyaltyV2Entity loyaltyv2entity)
    {
        mLoyaltyEntity = loyaltyv2entity;
        relayoutGauge();
    }

    public void setUiSettings(UiSettings uisettings)
    {
        mUISettings = uisettings;
        mPaint.setStyle(android.graphics.Paint.Style.STROKE);
        mPaint.setStrokeWidth(mGaugeCircleBarWidth);
        mPaint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        mPaint.setDither(false);
    }
}
