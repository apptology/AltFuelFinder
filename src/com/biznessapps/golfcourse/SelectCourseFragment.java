// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonListFragment, SelectCourseAdapter, CourseJsonParser

public class SelectCourseFragment extends GolfCourseCommonListFragment
{

    public static final String INTENT_RESULT_PARAM_KEY_COURSE = "course_id";
    private List mCourseList;
    private TextView mTVGuide;

    public SelectCourseFragment()
    {
    }

    private void plugListView(Activity activity)
    {
        int i = 0;
        boolean flag = false;
        if (mCourseList != null)
        {
            ArrayList arraylist = new ArrayList();
            Iterator iterator = mCourseList.iterator();
            i = ((flag) ? 1 : 0);
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Course course = (Course)iterator.next();
                if (course.isValid())
                {
                    i++;
                    CommonListEntity commonlistentity = new CommonListEntity();
                    commonlistentity.setObject(course);
                    arraylist.add(ViewUtils.getWrappedItem(commonlistentity, arraylist, settings));
                }
            } while (true);
            System.out.println((new StringBuilder()).append("!!!!!!!!!!!!!!!!!!!! mCourseList.size() = ").append(mCourseList.size()).toString());
            System.out.println((new StringBuilder()).append("!!!!!!!!!!!!!!!!!!!! mLayoutList.size() = ").append(arraylist.size()).toString());
            activity = new SelectCourseAdapter(activity, arraylist, settings);
            listView.setAdapter(activity);
            initListViewListener();
        }
        if (i == 0)
        {
            listView.setVisibility(4);
            mTVGuide.setVisibility(0);
            return;
        } else
        {
            listView.setVisibility(0);
            mTVGuide.setVisibility(4);
            return;
        }
    }

    protected boolean canUseCachedData()
    {
        return false;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_select_course_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("golfcourse.php?app_code=%s&platform=android&&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        mTVGuide = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvGuide);
        loadUniversalStrings(viewgroup);
        BZImageViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getButtonBgColor()), titleBarRoot);
        BZTextViewStyle.getInstance(getActivity()).apply(settings.getFeatureTextColor(), mTVGuide);
    }

    protected void loadUniversalStrings(ViewGroup viewgroup)
    {
        mTVGuide.setText(com.biznessapps.layout.R.string.nothing_found);
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        super.onListItemClick(adapterview, view, i, l);
        adapterview = (Course)((CommonListEntity)adapterview.getAdapter().getItem(i)).getObject();
        view = getIntent();
        view.putExtra("course_id", adapterview);
        finishFragment(0, view);
    }

    protected boolean tryParseData(String s)
    {
        if (s == null)
        {
            return false;
        } else
        {
            System.out.println((new StringBuilder()).append("!!!!!!!!!!!!!!!!!!!! dataToParse = ").append(s).toString());
            mCourseList = CourseJsonParser.getInstance().parseCourseList(getActivity(), s);
            return true;
        }
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }

    protected boolean useSearchBar()
    {
        return false;
    }
}
