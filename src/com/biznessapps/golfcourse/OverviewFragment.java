// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.style.BZSectionStyle;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonListFragment, OverviewAdapter

public class OverviewFragment extends GolfCourseCommonListFragment
{

    public static final String INTENT_PARAM_KEY_GAME_ID = "game_id";
    private Game mGame;
    private TextView mTVPar;
    private TextView mTVTotalTees;
    private ViewGroup mVGDescription;

    public OverviewFragment()
    {
    }

    private void plugListView(Activity activity)
    {
        ArrayList arraylist = new ArrayList();
        Course course = mGame.getCourse();
        for (int i = 0; i < course.getHoleList().size(); i++)
        {
            Hole hole = (Hole)course.getHoleList().valueAt(i);
            CommonListEntity commonlistentity = new CommonListEntity();
            commonlistentity.setObject(hole);
            arraylist.add(ViewUtils.getWrappedItem(commonlistentity, arraylist, settings));
        }

        adapter = new OverviewAdapter(activity, arraylist, settings, mGame.getCourse().getUnitType());
        listView.setAdapter(adapter);
        listView.setVisibility(0);
    }

    private void updateUI()
    {
        if (mGame != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s;
        s = (new StringBuilder()).append(getString(com.biznessapps.layout.R.string.pars)).append(": ").append(String.valueOf(mGame.getCourse().getTotalPars())).toString();
        mTVPar.setText(s);
        s = (new StringBuilder()).append(String.valueOf(mGame.getCourse().getTotalTees())).append(" ").toString();
        switch (mGame.getCourse().getUnitType())
        {
        default:
            break;

        case 0: // '\0'
            break; /* Loop/switch isn't completed */

        case 1: // '\001'
            break;
        }
        break MISSING_BLOCK_LABEL_175;
_L4:
        mTVTotalTees.setText(s);
        if (adapter != null)
        {
            adapter.notifyDataSetChanged();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        s = (new StringBuilder()).append(s).append(getString(com.biznessapps.layout.R.string.total_yards)).toString();
          goto _L4
        s = (new StringBuilder()).append(s).append(getString(com.biznessapps.layout.R.string.total_meters)).toString();
          goto _L4
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_overview_layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        initListViewListener();
        mVGDescription = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.llDescription);
        mTVPar = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvPars);
        mTVTotalTees = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvTotalTees);
        BZSectionStyle.getInstance(getActivity()).apply(settings, mVGDescription);
        updateUI();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        loadData();
    }

    public void onDestroyView()
    {
        super.onDestroyView();
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        super.onListItemClick(adapterview, view, i, l);
        adapterview = (Hole)((CommonListEntity)adapter.getItem(i)).getObject();
        view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
        view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        view.putExtra("TAB_SPECIAL_ID", tabId);
        view.putExtra("BG_URL_EXTRA", defineBgUrl(getHoldActivity().getIntent()));
        view.putExtra("TAB_FRAGMENT", "GOLF_DETAIL_HOLE_FRAGMENT");
        view.putExtra("game_id", mGame.id);
        view.putExtra("hole_number", ((Hole) (adapterview)).holeNumber);
        startFragment(com.biznessapps.layout.R.layout.golf_course_hole_details_layout, view);
    }

    public void onResume()
    {
        super.onResume();
    }

    public void onStop()
    {
        super.onStop();
    }

    protected void preDataLoading(Activity activity)
    {
        boolean flag1 = true;
        super.preDataLoading(activity);
        activity = getFragmentArgments();
        boolean flag;
        if (activity != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (activity != null)
        {
            long l = activity.getLong("game_id", -1L);
            if (l != -1L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            mGame = Game.getGame(l);
            if (mGame != null)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
        }
        updateUI();
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
