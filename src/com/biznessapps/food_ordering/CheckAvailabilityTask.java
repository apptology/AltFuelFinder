// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.LoadingDataInterface;
import com.biznessapps.api.UnModalAsyncTask;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.food_ordering.entities.OrderEntity;
import com.biznessapps.food_ordering.entities.OrderOptionEntity;
import com.biznessapps.food_ordering.parser.FoodOrderingParser;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.biznessapps.food_ordering:
//            FoodOrderingManager

public class CheckAvailabilityTask extends UnModalAsyncTask
{
    public static abstract class CustomRunnable
        implements Runnable
    {

        private List resulItems;

        public List getResulItems()
        {
            return resulItems;
        }

        public void setResulItems(List list)
        {
            resulItems = list;
        }

        public CustomRunnable()
        {
        }
    }


    private String appCode;
    private CustomRunnable cancelRunnable;
    private CustomRunnable customHandler;
    private String locationId;
    private List orderedItems;
    private CustomRunnable successRunnable;
    private String tabId;
    private long timeStamp;

    public CheckAvailabilityTask(Activity activity, List list, String s, long l, List list1, CustomRunnable customrunnable, 
            CustomRunnable customrunnable1, String s1, String s2)
    {
        super(activity, list);
        orderedItems = list1;
        locationId = s;
        timeStamp = l;
        successRunnable = customrunnable;
        cancelRunnable = customrunnable1;
        tabId = s1;
        appCode = s2;
    }

    private Map formCheckItemsMap(long l, String s, List list)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("location_id", s);
        Object obj = null;
        s = null;
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            com.biznessapps.food_ordering.entities.CategoryEntity.Item item = (com.biznessapps.food_ordering.entities.CategoryEntity.Item)iterator.next();
            list = ((List) (obj));
            if (obj == null)
            {
                list = item.getCategoryId();
            }
            obj = String.format("{\"category_id\":\"%s\",\"item_id\":\"%s\",\"size_id\":\"%s\",\"options\":[%s],\"quantity\":\"%d\",\"note\":\"%s\"}", new Object[] {
                list, item.getId(), item.getSizeValue(), item.getOptionsIds(), Integer.valueOf(item.getQuantity()), item.getNote()
            });
            if (s == null)
            {
                s = ((String) (obj));
                obj = list;
            } else
            {
                s = (new StringBuilder()).append(s).append(",").append(((String) (obj))).toString();
                obj = list;
            }
        }

        linkedhashmap.put("items", String.format("[%s]", new Object[] {
            s
        }));
        linkedhashmap.put("timestamp", (new StringBuilder()).append("").append(l).toString());
        linkedhashmap.put("app_code", appCode);
        linkedhashmap.put("tab_id", tabId);
        linkedhashmap.put("app_id", AppCore.getInstance().getAppSettings().getAppId());
        AppHttpUtils.addAdditionalParams(null, linkedhashmap);
        return linkedhashmap;
    }

    private List synchItems(Context context, List list, List list1)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list1.iterator();
label0:
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.biznessapps.food_ordering.entities.CategoryEntity.Item item = (com.biznessapps.food_ordering.entities.CategoryEntity.Item)iterator.next();
            list1 = list.iterator();
            Object obj;
            Object obj1;
            do
            {
                if (!list1.hasNext())
                {
                    continue label0;
                }
                obj = (OrderEntity)list1.next();
                obj1 = item.getCategoryId();
            } while (!item.getId().equalsIgnoreCase(((OrderEntity) (obj)).getId()) || obj1 == null || !((String) (obj1)).equalsIgnoreCase(((OrderEntity) (obj)).getCategoryId()));
            item.setTaxExempted(((OrderEntity) (obj)).isTaxExempted());
            item.setPrice(((OrderEntity) (obj)).getPrice());
            item.setTitle(((OrderEntity) (obj)).getTitle());
            item.setImageUrl(((OrderEntity) (obj)).getThumbnail());
            if (StringUtils.isNotEmpty(item.getSizeValue()))
            {
                boolean flag1 = false;
                boolean flag = false;
                if (((OrderEntity) (obj)).getSizes() != null)
                {
                    list1 = ((OrderEntity) (obj)).getSizes().iterator();
                    do
                    {
                        flag1 = flag;
                        if (!list1.hasNext())
                        {
                            break;
                        }
                        obj1 = (com.biznessapps.food_ordering.entities.OrderEntity.Size)list1.next();
                        if (item.getSizeValue().equalsIgnoreCase(((com.biznessapps.food_ordering.entities.OrderEntity.Size) (obj1)).getId()))
                        {
                            item.setPrice(((com.biznessapps.food_ordering.entities.OrderEntity.Size) (obj1)).getPrice());
                            item.setSize(((com.biznessapps.food_ordering.entities.OrderEntity.Size) (obj1)).getSizeName());
                            flag = true;
                        }
                    } while (true);
                }
                if (!flag1)
                {
                    continue;
                }
            }
            list1 = item.getSize();
            if (StringUtils.isNotEmpty(item.getSizeValue()))
            {
                list1 = String.format("%s: %s", new Object[] {
                    context.getString(com.biznessapps.layout.R.string.fo_size), list1
                });
            }
            item.setDescription(context, list1, FoodOrderingManager.getInstance().getCart().getFormattedValue(item.getPriceWithoutOptions()));
            obj1 = item.getOptions();
            if (!((List) (obj1)).isEmpty())
            {
                list1 = new ArrayList();
                obj = ((OrderEntity) (obj)).getOptions();
                obj1 = ((List) (obj1)).iterator();
label1:
                do
                {
                    if (!((Iterator) (obj1)).hasNext())
                    {
                        break;
                    }
                    OrderOptionEntity orderoptionentity = (OrderOptionEntity)((Iterator) (obj1)).next();
                    Iterator iterator1 = ((List) (obj)).iterator();
                    OrderOptionEntity orderoptionentity1;
                    do
                    {
                        if (!iterator1.hasNext())
                        {
                            continue label1;
                        }
                        orderoptionentity1 = (OrderOptionEntity)iterator1.next();
                    } while (!orderoptionentity.getId().equalsIgnoreCase(orderoptionentity1.getId()));
                    list1.add(orderoptionentity1);
                } while (true);
                item.setOptions(list1);
            }
            arraylist.add(item);
        } while (true);
        return arraylist;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient List doInBackground(Void avoid[])
    {
        avoid = formCheckItemsMap(timeStamp, locationId, orderedItems);
        avoid = DataSource.getInstance().getData("food_ordering_check_items.php", true, new Map[] {
            avoid
        });
        return synchItems(activity.getApplicationContext(), FoodOrderingParser.parseOrders(avoid), orderedItems);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((List)obj);
    }

    protected void onPostExecute(List list)
    {
label0:
        {
            super.onPostExecute(list);
            if (activity != null)
            {
                ((LoadingDataInterface)activity).getProgressBarContainer().removeAllViews();
                if (customHandler == null)
                {
                    break label0;
                }
                customHandler.setResulItems(list);
                customHandler.run();
            }
            return;
        }
        int i = orderedItems.size();
        int j = list.size();
        if (i == j)
        {
            successRunnable.setResulItems(list);
            successRunnable.run();
            return;
        }
        if (j >= 1)
        {
            ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.fo_one_or_more_no_available_items));
            successRunnable.setResulItems(list);
            successRunnable.run();
            return;
        }
        if (cancelRunnable != null)
        {
            cancelRunnable.run();
            return;
        } else
        {
            ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.fo_no_available_items));
            return;
        }
    }

    protected void placeProgressBar()
    {
        ((LoadingDataInterface)activity).getProgressBarContainer().addView(progressBar);
    }

    public void setCustomHandling(CustomRunnable customrunnable)
    {
        customHandler = customrunnable;
    }
}
