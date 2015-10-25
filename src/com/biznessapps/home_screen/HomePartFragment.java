// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.biznessapps.api.navigation.NavigationManager;
import com.biznessapps.more.Tab;
import java.util.ArrayList;
import java.util.List;

public class HomePartFragment extends Fragment
{

    private int columnCount;
    private boolean hasMoreButtonNavigation;
    private ViewGroup root;
    private int rowCount;
    private List tabs;

    public HomePartFragment()
    {
    }

    private void addRow(ViewGroup viewgroup, List list, int i)
    {
        NavigationManager navigationmanager = new NavigationManager(getActivity(), false);
        navigationmanager.setRowTabsItems(list);
        navigationmanager.addLayoutTo(viewgroup);
        navigationmanager.setTabsLimit(i);
        navigationmanager.updateTabs();
        navigationmanager.resetTabsSelection();
    }

    private void initTabs()
    {
        ArrayList arraylist = new ArrayList();
        FrameLayout framelayout = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.bottom_navig_conrol_container_row1);
        FrameLayout framelayout1 = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.bottom_navig_conrol_container_row2);
        FrameLayout framelayout2 = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.bottom_navig_conrol_container_row3);
        FrameLayout framelayout3 = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.bottom_navig_conrol_container_row4);
        arraylist.add(framelayout);
        arraylist.add(framelayout1);
        arraylist.add(framelayout2);
        arraylist.add(framelayout3);
        int i = 0;
        do
        {
            if (i >= arraylist.size() || i >= rowCount)
            {
                for (int j = 0; j < rowCount; j++)
                {
                    if (tabs.size() <= columnCount * j)
                    {
                        continue;
                    }
                    int l = (j + 1) * columnCount;
                    int i1 = tabs.size();
                    i = l;
                    if (l > tabs.size())
                    {
                        i = tabs.size();
                    }
                    int k = i;
                    if (hasMoreButtonNavigation)
                    {
                        k = i;
                        if (j == rowCount - 1)
                        {
                            k = tabs.size();
                        }
                    }
                    ArrayList arraylist1 = new ArrayList(tabs.subList(columnCount * j, k));
                    for (i = 0; i < l - i1; i++)
                    {
                        arraylist1.add(new Tab());
                    }

                    addRow((FrameLayout)arraylist.get(j), new ArrayList(arraylist1), columnCount);
                }

                return;
            } else
            {
                ((FrameLayout)arraylist.get(i)).setVisibility(0);
                i++;
                continue;
            }
        } while (true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.home_part_layout, null);
        initTabs();
        return root;
    }

    public void setColumnCount(int i)
    {
        columnCount = i;
    }

    public void setHasMoreButtonNavigation(boolean flag)
    {
        hasMoreButtonNavigation = flag;
    }

    public void setRowCount(int i)
    {
        rowCount = i;
    }

    public void setTabs(List list)
    {
        tabs = list;
    }
}
