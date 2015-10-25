// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.entities;

import android.text.Html;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.entities:
//            RestaurantEntity, TaxEntity

public class CartEntity
    implements Serializable
{

    public static final int DELIVERY = 1;
    public static final int DINE_IN = 3;
    public static final int TAKEOUT = 2;
    private static final long serialVersionUID = 0x92f6bc51620ddffbL;
    private String categoryId;
    private String clientToken;
    private float convenienceFee;
    private String currency;
    private String currencySign;
    private float deliveryFee;
    private int deliveryOption;
    private List items;
    private long timeStamp;
    private float tip;
    private float totalCharges;
    private float totalItemsPrice;

    public CartEntity()
    {
        currency = "USD";
        currencySign = "$";
        items = new ArrayList();
    }

    public void addToCart(CategoryEntity.Item item)
    {
        items.add(item);
        updateValues();
    }

    public void addToCart(List list)
    {
        CategoryEntity.Item item;
        for (list = list.iterator(); list.hasNext(); items.add(item))
        {
            item = (CategoryEntity.Item)list.next();
        }

        updateValues();
    }

    public void clear()
    {
        tip = 0.0F;
        deliveryOption = 0;
        items.clear();
    }

    public String getCategoryId()
    {
        return categoryId;
    }

    public String getClientToken()
    {
        return clientToken;
    }

    public float getConvenienceFee()
    {
        return FoodOrderingManager.getInstance().getRestaurantEntity().getConvenienceFee();
    }

    public String getCurrency()
    {
        return currency;
    }

    public String getCurrencySign()
    {
        return currencySign;
    }

    public float getDeliveryFee()
    {
        return deliveryFee;
    }

    public float getDeliveryMin()
    {
        return FoodOrderingManager.getInstance().getRestaurantEntity().getDeliveryMin();
    }

    public int getDeliveryOption()
    {
        return deliveryOption;
    }

    public String getFormattedValue(float f)
    {
        return Html.fromHtml(String.format("%s %.2f", new Object[] {
            currencySign, Float.valueOf(f)
        })).toString();
    }

    public List getItems()
    {
        return items;
    }

    public String getItemsPrice()
    {
        float f = 0.0F;
        for (Iterator iterator = items.iterator(); iterator.hasNext();)
        {
            CategoryEntity.Item item = (CategoryEntity.Item)iterator.next();
            f += (float)item.getQuantity() * FOUtils.getRoundValue(item.getPrice());
        }

        return Html.fromHtml(String.format("%s %.2f", new Object[] {
            currencySign, Float.valueOf(f)
        })).toString();
    }

    public long getTimeStamp()
    {
        return timeStamp;
    }

    public float getTipValue()
    {
        return FOUtils.getRoundValue((totalItemsPrice * tip) / 100F);
    }

    public float getTotalCharges()
    {
        return totalCharges;
    }

    public boolean isEmpty()
    {
        return items.isEmpty();
    }

    public boolean isMeetDeliveryMinumum()
    {
        return totalItemsPrice >= FoodOrderingManager.getInstance().getRestaurantEntity().getDeliveryMin();
    }

    public void removeFromCart(CategoryEntity.Item item)
    {
        items.remove(item);
        updateValues();
    }

    public void setCategoryId(String s)
    {
        categoryId = s;
    }

    public void setClientToken(String s)
    {
        clientToken = s;
    }

    public void setCurrency(String s)
    {
        currency = s;
    }

    public void setCurrencySign(String s)
    {
        currencySign = s;
    }

    public void setDeliveryOption(int i)
    {
        boolean flag;
        if (deliveryOption != i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        deliveryOption = i;
        if (flag)
        {
            updateValues();
        }
    }

    public void setTimeStamp(long l)
    {
        timeStamp = l;
    }

    public void setTip(float f)
    {
        tip = f;
    }

    public void updateValues()
    {
        RestaurantEntity restaurantentity = FoodOrderingManager.getInstance().getRestaurantEntity();
        if (restaurantentity != null)
        {
            totalItemsPrice = 0.0F;
            for (Iterator iterator = items.iterator(); iterator.hasNext();)
            {
                CategoryEntity.Item item = (CategoryEntity.Item)iterator.next();
                totalItemsPrice = totalItemsPrice + (float)item.getQuantity() * FOUtils.getRoundValue(item.getPrice());
            }

            float f6 = FOUtils.getRoundValue((totalItemsPrice * tip) / 100F);
            convenienceFee = restaurantentity.getConvenienceFee();
            float f;
            float f1;
            float f2;
            if (deliveryOption == 1)
            {
                f = restaurantentity.getFreeDeliveryAmount();
                Iterator iterator1;
                CategoryEntity.Item item1;
                if (f > 0.0F && totalItemsPrice >= f)
                {
                    deliveryFee = 0.0F;
                } else
                {
                    deliveryFee = restaurantentity.getDeliveryFee();
                }
            } else
            {
                deliveryFee = 0.0F;
            }
            f1 = 0.0F;
            f2 = 0.0F;
            f = 0.0F;
            iterator1 = items.iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                item1 = (CategoryEntity.Item)iterator1.next();
                if (!item1.isTaxExempted())
                {
                    f += (float)item1.getQuantity() * FOUtils.getRoundValue(item1.getPrice());
                }
            } while (true);
            Iterator iterator2 = FoodOrderingManager.getInstance().getTaxes().iterator();
            while (iterator2.hasNext()) 
            {
                TaxEntity taxentity = (TaxEntity)iterator2.next();
                if (taxentity.getType() == 1)
                {
                    f1 += taxentity.getAmount();
                    taxentity.setCaclulatedTax(taxentity.getAmount());
                } else
                {
                    float f4 = 0.0F;
                    float f5 = 0.0F;
                    float f3 = f4;
                    if (restaurantentity.isConvenienceFeeTaxable())
                    {
                        f3 = f4;
                        if (convenienceFee > 0.0F)
                        {
                            f3 = FOUtils.getRoundValue((convenienceFee * taxentity.getAmount()) / 100F);
                        }
                    }
                    f4 = f5;
                    if (deliveryOption == 1)
                    {
                        f4 = f5;
                        if (restaurantentity.isDeliveryFeeTaxable())
                        {
                            f4 = f5;
                            if (deliveryFee > 0.0F)
                            {
                                f4 = FOUtils.getRoundValue((deliveryFee * taxentity.getAmount()) / 100F);
                            }
                        }
                    }
                    f3 = FOUtils.getRoundValue((taxentity.getAmount() * f) / 100F) + f3 + f4;
                    taxentity.setCaclulatedTax(f3);
                    f2 += f3;
                }
                taxentity.setCurrencySign(currencySign);
            }
            totalCharges = 0.0F;
            totalCharges = totalCharges + totalItemsPrice;
            totalCharges = totalCharges + convenienceFee;
            totalCharges = totalCharges + deliveryFee;
            totalCharges = totalCharges + (f2 + f1);
            totalCharges = totalCharges + f6;
        }
    }
}
