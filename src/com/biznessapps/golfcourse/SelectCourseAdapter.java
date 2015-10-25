// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.style.BZStyleManager;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.io.PrintStream;
import java.util.List;
import junit.framework.Assert;

public class SelectCourseAdapter extends AbstractAdapter
{

    public SelectCourseAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.golf_course_select_course_item_layout, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = view;
        if (view == null)
        {
            viewgroup = inflater.inflate(layoutItemResourceId, null);
        }
        view = (CommonListEntity)getItem(i);
        Course course = (Course)view.getObject();
        boolean flag;
        if (course != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (view != null)
        {
            ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivThumbnail);
            TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvName);
            TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvHoles);
            TextView textview2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvPars);
            ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvStaticHoles)).setText(com.biznessapps.layout.R.string.holes_colon);
            ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvStaticPars)).setText((new StringBuilder()).append(getContext().getString(com.biznessapps.layout.R.string.pars)).append(":").toString());
            System.out.println((new StringBuilder()).append("!!!!!!!!!!!!!!!!!!!! course = ").append(course).toString());
            if (course != null)
            {
                if (!StringUtils.isEmpty(course.thumbUrl))
                {
                    imageFetcher.loadRoundedImage(course.thumbUrl, imageview);
                } else
                {
                    imageview.setImageResource(0);
                }
                textview.setText(course.name);
                if (course.getHoleList() == null)
                {
                    textview1.setText("0");
                } else
                {
                    textview1.setText(String.valueOf(course.getHoleList().size()));
                }
                textview2.setText(String.valueOf(course.getTotalPars()));
            } else
            {
                imageview.setImageResource(0);
                textview.setText("");
                textview1.setText("");
                textview2.setText("");
            }
            if (view.hasColor())
            {
                viewgroup.setBackgroundDrawable(getListItemDrawable(view.getItemColor()));
                BZStyleManager.getInstance(getContext()).applyColor(view.getItemTextColor(), (ViewGroup)viewgroup, new View[] {
                    imageview
                });
            }
        }
        return viewgroup;
    }
}
