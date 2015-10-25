// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
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
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.storage.StorageException;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonListFragment, ListPlayerAdapter

public class ListPlayerFragment extends GolfCourseCommonListFragment
{

    private static final int EDIT_PLAYER_REQUEST_CODE = 101;
    public static final String INTENT_PARAM_KEY_SELECTED_GAME_ID = "selected_game_id";
    private static final int NEW_PLAYER_REQUEST_CODE = 100;
    private static final int SELECT_PLAYER_REQUEST_CODE = 102;
    private ImageView mAddPlayerButton;
    private android.view.View.OnClickListener mAddPlayerClickListener;
    private ImageView mDoneButton;
    private Game mGame;
    private List mPlayerList;
    private TextView mTVGuide;

    public ListPlayerFragment()
    {
        mPlayerList = new ArrayList();
        mAddPlayerClickListener = new android.view.View.OnClickListener() {

            final ListPlayerFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
                view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                view.putExtra("TAB_SPECIAL_ID", 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = ListPlayerFragment.this;
                super();
            }
        };
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
        CommonListEntity commonlistentity;
        for (Iterator iterator = mPlayerList.iterator(); iterator.hasNext(); arraylist.add(ViewUtils.getWrappedItem(commonlistentity, arraylist, settings)))
        {
            Player player = (Player)iterator.next();
            commonlistentity = new CommonListEntity();
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
            commonlistentity.setArrowVisible(true);
            commonlistentity.setObject(player);
        }

        adapter = new ListPlayerAdapter(activity, arraylist, settings);
        listView.setAdapter(adapter);
        listView.setVisibility(0);
        mTVGuide.setVisibility(4);
    }

    private void updateViews()
    {
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_list_player_layout;
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
        initViews(viewgroup);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        getActivity().getWindow().setSoftInputMode(32);
        listView.setItemsCanFocus(false);
        initListViewListener();
        mAddPlayerButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivAddPlayer);
        mAddPlayerButton.setOnClickListener(mAddPlayerClickListener);
        mDoneButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivDone);
        mDoneButton.setVisibility(8);
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
        onActivityResult(i, j, intent);
        if (j == -1 && i == 102)
        {
            boolean flag;
            if (mGame != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            intent = intent.getLongArrayExtra("selected_players_id");
            if (intent != null)
            {
                j = intent.length;
                for (i = 0; i < j; i++)
                {
                    long l = intent[i];
                    mGame.addPlayer(l);
                }

                try
                {
                    GolfDatabase.getInstance().updateGame(mGame);
                }
                // Misplaced declaration of an exception variable
                catch (Intent intent)
                {
                    intent.printStackTrace();
                }
            }
        }
        loadData();
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        onListItemClick(adapterview, view, i, l);
        adapterview = (Player)((CommonListEntity)adapter.getItem(i)).getObject();
        view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
        view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        view.putExtra("TAB_SPECIAL_ID", tabId);
        view.putExtra("BG_URL_EXTRA", defineBgUrl(getHoldActivity().getIntent()));
        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.edit_player));
        view.putExtra("golf_player_id", adapterview.getId());
        if (mGame != null)
        {
            view.putExtra("game_id", mGame.id);
        }
        view.putExtra("TAB_FRAGMENT", "GOLF_EDIT_PLAYER_FRAGMENT");
        startFragment(com.biznessapps.layout.R.layout.golf_course_edit_player_layout, view, 101);
    }

    protected void preDataLoading(Activity activity)
    {
        preDataLoading(activity);
        mPlayerList.clear();
        activity = getFragmentArgments();
        if (activity != null)
        {
            long l = activity.getLong("selected_game_id", -1L);
            Player player;
            if (l != -1L)
            {
                mGame = Game.getGame(l);
                activity = mGame.playerIdList;
            } else
            {
                activity = GolfDatabase.getInstance().getAllPlayersIds();
            }
            for (activity = activity.iterator(); activity.hasNext(); mPlayerList.add(player))
            {
                player = Player.getPlayer(((Long)activity.next()).longValue());
            }

        }
        updateViews();
    }

    protected void updateControlsWithData(Activity activity)
    {
        updateControlsWithData(activity);
        plugListView(activity);
    }

    protected boolean useSearchBar()
    {
        return false;
    }



}
