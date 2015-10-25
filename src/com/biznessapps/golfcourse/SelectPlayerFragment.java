// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonListFragment, ListPlayerAdapter

public class SelectPlayerFragment extends GolfCourseCommonListFragment
{

    public static final String INTENT_PARAM_KEY_EXCEPT_PLAYER_IDS = "except_players_id";
    public static final String INTENT_PARAM_KEY_SELECTED_PLAYER_IDS = "selected_players_id";
    public static final String INTENT_RESULT_PARAM_KEY_PLAYER_IDS = "selected_players_id";
    private static final int NEW_PLAYER_REQUEST_CODE = 100;
    private ImageView mAddPlayerButton;
    private android.view.View.OnClickListener mAddPlayerClickListener;
    private int mDeselectedIconResId;
    private ImageView mDoneButton;
    private android.view.View.OnClickListener mDoneClickListener;
    private List mPlayerList;
    private int mSelectedIconResId;
    private List mSelectedPlayerIds;
    private TextView mTVGuide;

    public SelectPlayerFragment()
    {
        mSelectedPlayerIds = new ArrayList();
        mSelectedIconResId = com.biznessapps.layout.R.drawable.ic_check_mark_checked;
        mDeselectedIconResId = com.biznessapps.layout.R.drawable.ic_check_mark_unchecked;
        mAddPlayerClickListener = new android.view.View.OnClickListener() {

            final SelectPlayerFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
                view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                view.putExtra("TAB_SPECIAL_ID", SelectPlayerFragment.this.R$string);
                view.putExtra("BG_URL_EXTRA", defineBgUrl(getHoldActivity().getIntent()));
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.new_player));
                view.putExtra("TAB_FRAGMENT", "GOLF_EDIT_PLAYER_FRAGMENT");
                startFragment(com.biznessapps.layout.R.layout.golf_course_edit_player_layout, view, 100);
            }

            
            {
                this$0 = SelectPlayerFragment.this;
                super();
            }
        };
        mDoneClickListener = new android.view.View.OnClickListener() {

            final SelectPlayerFragment this$0;

            public void onClick(View view)
            {
                if (size != null)
                {
                    view = getIntent();
                    ArrayList arraylist = new ArrayList();
                    for (int i = 0; i < size.getCount(); i++)
                    {
                        CommonListEntity commonlistentity = (CommonListEntity)size.getItem(i);
                        Player player = (Player)commonlistentity.getObject();
                        if (commonlistentity.getImageId() == mSelectedIconResId)
                        {
                            arraylist.add(Long.valueOf(player.getId()));
                        }
                    }

                    if (!arraylist.isEmpty())
                    {
                        long al[] = new long[arraylist.size()];
                        for (int j = 0; j < arraylist.size(); j++)
                        {
                            al[j] = ((Long)arraylist.get(j)).longValue();
                        }

                        view.putExtra("selected_players_id", al);
                    }
                    finishFragment(-1, view);
                    return;
                } else
                {
                    finishFragment();
                    return;
                }
            }

            
            {
                this$0 = SelectPlayerFragment.this;
                super();
            }
        };
    }

    private boolean isSelected(long l)
    {
        if (mSelectedPlayerIds == null)
        {
            return false;
        }
        for (Iterator iterator = mSelectedPlayerIds.iterator(); iterator.hasNext();)
        {
            if (((Long)iterator.next()).longValue() == l)
            {
                return true;
            }
        }

        return false;
    }

    private void plugListView(Activity activity)
    {
        if (mPlayerList.size() == 0)
        {
            listView.setVisibility(4);
            mTVGuide.setVisibility(0);
            return;
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = mPlayerList.iterator();
        while (iterator.hasNext()) 
        {
            Player player = (Player)iterator.next();
            CommonListEntity commonlistentity = new CommonListEntity();
            commonlistentity.setTitle(player.name);
            String s1 = String.valueOf(player.handicap);
            String s = s1;
            if (player.handicap > 0)
            {
                s = (new StringBuilder()).append("+").append(s1).toString();
            }
            commonlistentity.setDescription(String.format("%s: %s", new Object[] {
                getString(com.biznessapps.layout.R.string.handicap), s
            }));
            commonlistentity.setArrowVisible(false);
            commonlistentity.setObject(player);
            if (isSelected(player.getId()))
            {
                commonlistentity.setImageId(mSelectedIconResId);
            } else
            {
                commonlistentity.setImageId(mDeselectedIconResId);
            }
            arraylist.add(ViewUtils.getWrappedItem(commonlistentity, arraylist, settings));
        }
        adapter = new ListPlayerAdapter(activity, arraylist, settings);
        listView.setAdapter(adapter);
        listView.setVisibility(0);
        mTVGuide.setVisibility(4);
    }

    private boolean remove(long l)
    {
        if (mSelectedPlayerIds == null)
        {
            return false;
        }
        for (int i = 0; i < mSelectedPlayerIds.size(); i++)
        {
            if (((Long)mSelectedPlayerIds.get(i)).longValue() == l)
            {
                mSelectedPlayerIds.remove(i);
                return true;
            }
        }

        return false;
    }

    private void updateViews()
    {
        mDoneButton.setVisibility(0);
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_select_player_layout;
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

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(mAddPlayerButton));
        return arraylist;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        listView.setItemsCanFocus(false);
        initListViewListener();
        mAddPlayerButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivAddPlayer);
        mAddPlayerButton.setOnClickListener(mAddPlayerClickListener);
        mDoneButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivDone);
        mDoneButton.setOnClickListener(mDoneClickListener);
        mTVGuide = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvGuide);
        loadUniversalStrings(viewgroup);
        BZTextViewStyle.getInstance(getActivity()).apply(settings.getFeatureTextColor(), mTVGuide);
        updateViews();
    }

    protected void loadUniversalStrings(ViewGroup viewgroup)
    {
        mTVGuide.setText(com.biznessapps.layout.R.string.tap_plus_button_add_player);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        loadData();
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        super.onListItemClick(adapterview, view, i, l);
        adapterview = (CommonListEntity)adapter.getItem(i);
        view = (Player)adapterview.getObject();
        if (adapterview.getImageId() == mSelectedIconResId)
        {
            adapterview.setImageId(mDeselectedIconResId);
            mSelectedPlayerIds.remove(Long.valueOf(view.getId()));
        } else
        {
            adapterview.setImageId(mSelectedIconResId);
            mSelectedPlayerIds.add(Long.valueOf(view.getId()));
        }
        adapter.notifyDataSetChanged();
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        mPlayerList = GolfDatabase.getInstance().getAllPlayers();
        activity = getFragmentArgments();
        if (activity != null)
        {
            long al[] = activity.getLongArray("selected_players_id");
            if (al != null)
            {
                int k = al.length;
                for (int i = 0; i < k; i++)
                {
                    long l1 = al[i];
                    mSelectedPlayerIds.add(Long.valueOf(l1));
                }

            }
            activity = activity.getLongArray("except_players_id");
            if (activity != null)
            {
                int l = activity.length;
label0:
                for (int j = 0; j < l; j++)
                {
                    long l2 = activity[j];
                    Iterator iterator = mPlayerList.iterator();
                    Player player;
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            continue label0;
                        }
                        player = (Player)iterator.next();
                    } while (player.getId() != l2);
                    mPlayerList.remove(player);
                }

            }
        }
        updateViews();
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
