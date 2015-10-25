// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyCommonEntity, LoyaltyV1Entity, LoyaltyV2Entity

public class LoyaltyAdapter extends AbstractAdapter
{

    public LoyaltyAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.loyalty_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        com.biznessapps.common.adapters.ListItemHolder.CommonItem commonitem;
        LoyaltyCommonEntity loyaltycommonentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            commonitem = new com.biznessapps.common.adapters.ListItemHolder.CommonItem();
            commonitem.setFrameContainer((ViewGroup)view.findViewById(com.biznessapps.layout.R.id.info_item_container));
            commonitem.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.title_text));
            commonitem.setImageView((ImageView)view.findViewById(com.biznessapps.layout.R.id.row_icon));
            commonitem.setRightArrowView((ImageView)view.findViewById(com.biznessapps.layout.R.id.right_arrow_view));
            view.setTag(commonitem);
        } else
        {
            commonitem = (com.biznessapps.common.adapters.ListItemHolder.CommonItem)view.getTag();
        }
        loyaltycommonentity = (LoyaltyCommonEntity)getItem(i);
        if (loyaltycommonentity != null)
        {
            TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.checkin_text_even);
            textview.setVisibility(0);
            commonitem.getTextViewTitle().setText(Html.fromHtml(loyaltycommonentity.getTitle()));
            if (StringUtils.isNotEmpty(loyaltycommonentity.getImageUrl()))
            {
                commonitem.getImageView().setTag(loyaltycommonentity.getImageUrl());
                imageFetcher.loadRoundedBackground(loyaltycommonentity.getImageUrl(), commonitem.getImageView(), new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

                    final LoyaltyAdapter this$0;

                    public void onImageLoaded(String s, Bitmap bitmap, View view1)
                    {
                        view1 = (ImageView)view1;
                        String s1 = (String)view1.getTag();
                        if (s1 == null)
                        {
                            view1.setVisibility(8);
                        } else
                        if (s1.equals(s))
                        {
                            view1.setImageBitmap(bitmap);
                            return;
                        }
                    }

            
            {
                this$0 = LoyaltyAdapter.this;
                super();
            }
                });
                commonitem.getImageView().setVisibility(0);
            } else
            if (loyaltycommonentity.getImageId() > 0)
            {
                commonitem.getImageView().setBackgroundResource(loyaltycommonentity.getImageId());
                commonitem.getImageView().setVisibility(0);
            } else
            {
                commonitem.getImageView().setVisibility(8);
            }
            if (loyaltycommonentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(loyaltycommonentity.getItemColor()));
                CommonUtils.overrideImageColor(loyaltycommonentity.getItemTextColor(), textview.getCompoundDrawables()[0]);
                setTextColorToView(loyaltycommonentity.getItemTextColor(), new TextView[] {
                    commonitem.getTextViewTitle(), textview
                });
            }
            if (loyaltycommonentity instanceof LoyaltyV1Entity)
            {
                textview.setText(String.format("%d/%d", new Object[] {
                    Integer.valueOf(loyaltycommonentity.getAwardedValue()), Integer.valueOf(loyaltycommonentity.getTotalValue())
                }));
            } else
            {
                Assert.assertTrue(loyaltycommonentity instanceof LoyaltyV2Entity);
                LoyaltyV2Entity loyaltyv2entity = (LoyaltyV2Entity)loyaltycommonentity;
                textview.setText(String.format("%d %s", new Object[] {
                    Integer.valueOf(loyaltyv2entity.getAwardedValue()), loyaltyv2entity.perkUnitType
                }));
            }
        }
        checkPositioning(i, view, viewgroup);
        return view;
    }
}
