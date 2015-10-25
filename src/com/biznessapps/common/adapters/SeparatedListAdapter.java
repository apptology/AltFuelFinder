// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.biznessapps.common.adapters:
//            AbstractAdapter

public class SeparatedListAdapter extends AbstractAdapter
{

    public static final int TYPE_SECTION_HEADER = 0;
    public final ArrayAdapter headers;
    private int sectionBarColorId;
    private int sectionBarTextColorId;
    public final Map sections = new LinkedHashMap();

    public SeparatedListAdapter(Context context, int i, UiSettings uisettings)
    {
        super(context, new ArrayList(), i, uisettings);
        headers = new ArrayAdapter(context, i);
        sectionBarColorId = uisettings.getSectionBarColor();
        sectionBarTextColorId = uisettings.getSectionTextColor();
    }

    public void addSection(String s, Adapter adapter)
    {
        String s1 = Html.fromHtml(s).toString();
        headers.add(s1);
        sections.put(s, adapter);
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public void clear()
    {
        headers.clear();
        sections.clear();
        notifyDataSetInvalidated();
    }

    public int getCount()
    {
        int i = 0;
        for (Iterator iterator = sections.values().iterator(); iterator.hasNext();)
        {
            i += ((Adapter)iterator.next()).getCount() + 1;
        }

        return i;
    }

    public CommonListEntity getItem(int i)
    {
        for (Iterator iterator = sections.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Adapter adapter = (Adapter)sections.get(s);
            int j = adapter.getCount() + 1;
            if (i == 0)
            {
                return (CommonListEntity)s;
            }
            if (i < j)
            {
                return (CommonListEntity)adapter.getItem(i - 1);
            }
            i -= j;
        }

        return null;
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemViewType(int i)
    {
        boolean flag = true;
        Iterator iterator = sections.keySet().iterator();
        int j = i;
        Object obj;
        for (i = ((flag) ? 1 : 0); iterator.hasNext(); i += ((Adapter) (obj)).getViewTypeCount())
        {
            obj = (String)iterator.next();
            obj = (Adapter)sections.get(obj);
            int k = ((Adapter) (obj)).getCount() + 1;
            if (j == 0)
            {
                return 0;
            }
            if (j < k)
            {
                return ((Adapter) (obj)).getItemViewType(j - 1) + i;
            }
            j -= k;
        }

        return -1;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        boolean flag = false;
        int l = getContext().getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.section_header_height);
        Object obj = sections.keySet().iterator();
        int j = i;
        i = ((flag) ? 1 : 0);
label0:
        do
        {
            Object obj1;
            int k;
label1:
            {
label2:
                {
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break label0;
                    }
                    obj1 = (String)((Iterator) (obj)).next();
                    obj1 = (Adapter)sections.get(obj1);
                    k = ((Adapter) (obj1)).getCount() + 1;
                    if (j != 0)
                    {
                        break label1;
                    }
                    obj = (String)headers.getItem(i);
                    view = headers.getView(i, view, viewgroup);
                    if (view instanceof TextView)
                    {
                        ((TextView)view).setTextColor(sectionBarTextColorId);
                        ((TextView)view).setBackgroundColor(sectionBarColorId);
                        if (!StringUtils.isEmpty(((String) (obj))))
                        {
                            break label2;
                        }
                        ((TextView)view).setMaxHeight(1);
                    }
                    return view;
                }
                ((TextView)view).setMaxHeight(l);
                return view;
            }
            if (j < k)
            {
                return ((Adapter) (obj1)).getView(j - 1, view, viewgroup);
            }
            j -= k;
            i++;
        } while (true);
        return null;
    }

    public int getViewTypeCount()
    {
        int i = 1;
        for (Iterator iterator = sections.values().iterator(); iterator.hasNext();)
        {
            i += ((Adapter)iterator.next()).getViewTypeCount();
        }

        return i;
    }

    public boolean hasStableIds()
    {
        return false;
    }

    public boolean isEmpty()
    {
        return getCount() == 0;
    }

    public boolean isEnabled(int i)
    {
        return getItemViewType(i) != 0;
    }
}
