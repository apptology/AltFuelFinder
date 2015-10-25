// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonListFragment, GameListLayoutItem, GameListAdapter, ScoreBoardActivity, 
//            CourseJsonParser

public class GameListFragment extends GolfCourseCommonListFragment
{

    private static final int LIST_PLAYER_REQUEST_CODE = 100;
    private static final int NEW_GAME_REQUEST_CODE = 101;
    private static final int SCOREBOARD_REQUEST_CODE = 102;
    private ImageView mAddGameButton;
    private ImageView mAddPlayerButton;
    private List mCourseList;
    private android.view.View.OnClickListener mGameButtonClickListener;
    private List mGameList;
    private android.view.View.OnClickListener mPlayerButtonClickListener;
    private Game mSelectedGameItem;
    private TextView mTVGuide;

    public GameListFragment()
    {
        mGameButtonClickListener = new android.view.View.OnClickListener() {

            final GameListFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
                view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                view.putExtra("TAB_SPECIAL_ID", 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = GameListFragment.this;
                super();
            }
        };
        mPlayerButtonClickListener = new android.view.View.OnClickListener() {

            final GameListFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
                view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                view.putExtra("TAB_SPECIAL_ID", 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = GameListFragment.this;
                super();
            }
        };
    }

    private void plugListView(Activity activity)
    {
        if (mGameList.size() == 0)
        {
            listView.setVisibility(4);
            mTVGuide.setVisibility(0);
            return;
        }
        items = new ArrayList();
        Game game;
        for (Iterator iterator = mGameList.iterator(); iterator.hasNext(); items.add(ViewUtils.getWrappedItem(new GameListLayoutItem(game), items, settings)))
        {
            game = (Game)iterator.next();
        }

        activity = new GameListAdapter(activity, items, settings);
        listView.setAdapter(activity);
        registerForContextMenu(listView);
        listView.setOnItemLongClickListener(new android.widget.AdapterView.OnItemLongClickListener() {

            final GameListFragment this$0;

            public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = (GameListLayoutItem)adapterview.getAdapter().getItem(i);
                mSelectedGameItem = ((GameListLayoutItem) (adapterview)).game;
                
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = GameListFragment.this;
                super();
            }
        });
        listView.setVisibility(0);
        mTVGuide.setVisibility(4);
    }

    protected boolean canUseCachedData()
    {
        return mCourseList != null;
    }

    protected String defineBgUrl()
    {
        if (mCourseList != null && mCourseList.size() > 0)
        {
            return ((Course)mCourseList.get(0)).getBackground();
        } else
        {
            return null;
        }
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_layout;
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
        listView.setItemsCanFocus(false);
        initListViewListener();
        mAddGameButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.btAddGame);
        mAddPlayerButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.btAddPlayer);
        mAddPlayerButton.setOnClickListener(mPlayerButtonClickListener);
        mAddGameButton.setOnClickListener(mGameButtonClickListener);
        mAddGameButton.setEnabled(false);
        mAddPlayerButton.setOnClickListener(mPlayerButtonClickListener);
        mAddPlayerButton.setEnabled(false);
        mTVGuide = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvGuide);
        loadUniversalStrings(viewgroup);
        BZImageViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getButtonBgColor()), titleBarRoot);
        BZTextViewStyle.getInstance(getActivity()).apply(settings.getFeatureTextColor(), mTVGuide);
    }

    protected void loadUniversalStrings(ViewGroup viewgroup)
    {
        mTVGuide.setText(com.biznessapps.layout.R.string.tap_plus_button_new_golf_game);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        onActivityResult(i, j, intent);
        loadData();
        if (i == 102 && j == 200)
        {
            mGameButtonClickListener.onClick(mAddGameButton);
        }
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        if (com.biznessapps.layout.R.id.action_delete_list_item == menuitem.getItemId())
        {
            boolean flag;
            if (mSelectedGameItem != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            Game.deleteGame(mSelectedGameItem.id);
            updateControlsWithData(getActivity());
            return true;
        } else
        {
            return onContextItemSelected(menuitem);
        }
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        getActivity().getMenuInflater().inflate(com.biznessapps.layout.R.menu.common_delete_list_item_menu, contextmenu);
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        onListItemClick(adapterview, view, i, l);
        adapterview = new Intent(getApplicationContext(), com/biznessapps/golfcourse/ScoreBoardActivity);
        adapterview.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        adapterview.putExtra("TAB_SPECIAL_ID", tabId);
        adapterview.putExtra("BG_URL_EXTRA", defineBgUrl());
        adapterview.putExtra("current_game_id", ((Game)mGameList.get(i)).id);
        startActivityForResult(adapterview, 102);
    }

    public void onResume()
    {
        onResume();
        updateControlsWithData(getActivity());
    }

    protected boolean tryParseData(String s)
    {
        if (s != null)
        {
            mCourseList = CourseJsonParser.getInstance().parseCourseList(getActivity(), s);
            if (mCourseList.size() != 0)
            {
                setBgUrl(((Course)mCourseList.get(0)).getBackground());
                cacher().saveData((new StringBuilder()).append("GolfCourseViewController").append(tabId).toString(), bgUrl);
                return true;
            }
        }
        return false;
    }

    protected void updateControlsWithData(Activity activity)
    {
        updateControlsWithData(activity);
        if (mCourseList != null && mCourseList.size() != 0)
        {
            mGameList = GolfDatabase.getInstance().getAllGames(true);
            plugListView(activity);
            if (mCourseList != null)
            {
                mAddGameButton.setEnabled(true);
                mAddPlayerButton.setEnabled(true);
                return;
            }
        }
    }

    protected boolean useSearchBar()
    {
        return false;
    }


/*
    static Game access$002(GameListFragment gamelistfragment, Game game)
    {
        gamelistfragment.mSelectedGameItem = game;
        return game;
    }

*/




}
