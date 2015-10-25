// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.entities;

import android.content.Context;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.entities:
//            CategoryEntity, OrderOptionEntity

public static class options extends CommonListEntity
{

    private static final long serialVersionUID = 0xd70ff44e11fa00a9L;
    private String categoryId;
    private boolean isTaxExempted;
    private String note;
    private List options;
    private float price;
    private int quantity;
    private String size;
    private String sizeValue;

    public String getCategoryId()
    {
        return categoryId;
    }

    public String getNote()
    {
        return note;
    }

    public List getOptions()
    {
        return options;
    }

    public String getOptionsIds()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (!options.isEmpty())
        {
            int j = options.size();
            for (int i = 0; i < j; i++)
            {
                OrderOptionEntity orderoptionentity = (OrderOptionEntity)options.get(i);
                stringbuilder.append("").append(orderoptionentity.getId()).append("");
                if (i < j - 1)
                {
                    stringbuilder.append(", ");
                }
            }

        }
        return stringbuilder.toString();
    }

    public String getOptionsListNames()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (!options.isEmpty())
        {
            int j = options.size();
            for (int i = 0; i < j; i++)
            {
                stringbuilder.append(((OrderOptionEntity)options.get(i)).getName());
                if (i < j - 1)
                {
                    stringbuilder.append(", ");
                }
            }

        }
        return stringbuilder.toString();
    }

    public float getOptionsPrice()
    {
        float f1 = 0.0F;
        float f = 0.0F;
        if (options != null)
        {
            Iterator iterator = options.iterator();
            do
            {
                f1 = f;
                if (!iterator.hasNext())
                {
                    break;
                }
                f += ((OrderOptionEntity)iterator.next()).getCharges();
            } while (true);
        }
        return f1;
    }

    public float getPrice()
    {
        return price + getOptionsPrice();
    }

    public float getPriceWithoutOptions()
    {
        return price;
    }

    public int getQuantity()
    {
        return quantity;
    }

    public String getSize()
    {
        return size;
    }

    public String getSizeValue()
    {
        return sizeValue;
    }

    public boolean isTaxExempted()
    {
        return isTaxExempted;
    }

    public void setCategoryId(String s)
    {
        categoryId = s;
    }

    public void setDescription(Context context, String s, String s1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (s != null)
        {
            stringbuilder.append(s).append(" <br/> ");
        }
        stringbuilder.append(String.format("%s: %s", new Object[] {
            context.getString(com.biznessapps.layout.ce), s1
        }));
        description = stringbuilder.toString();
    }

    public void setNote(String s)
    {
        note = s;
    }

    public void setOptions(List list)
    {
        options = list;
    }

    public void setPrice(float f)
    {
        price = f;
    }

    public void setQuantity(int i)
    {
        quantity = i;
    }

    public void setSize(String s)
    {
        size = s;
    }

    public void setSizeValue(String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            sizeValue = s;
            return;
        } else
        {
            sizeValue = "";
            return;
        }
    }

    public void setTaxExempted(boolean flag)
    {
        isTaxExempted = flag;
    }

    public void updateOptions(OrderOptionEntity orderoptionentity, boolean flag)
    {
        if (flag)
        {
            options.add(orderoptionentity);
            return;
        } else
        {
            options.remove(orderoptionentity);
            return;
        }
    }

    public ()
    {
        sizeValue = "";
        note = "";
        options = new ArrayList();
    }
}
