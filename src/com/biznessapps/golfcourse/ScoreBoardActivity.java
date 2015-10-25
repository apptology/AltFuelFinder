// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.ImageView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonShareableFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.storage.StorageException;
import com.biznessapps.utils.ViewUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import junit.framework.Assert;
import net.simonvt.menudrawer.MenuDrawer;

// Referenced classes of package com.biznessapps.golfcourse:
//            ScoreBoardMenu, ScoreBoardFragment, AddNoteFragment, ListPlayerFragment, 
//            SelectPlayerFragment, EditPlayerFragment, OverviewFragment, HoleDetailFragment, 
//            OnMenuSelectListener, GolfCourseCommonFragmentInterface

public class ScoreBoardActivity extends CommonShareableFragmentActivity
{
    class FragmentStackItem
    {

        GolfCourseCommonFragmentInterface fragment;
        int fragmentId;
        Intent intent;
        int requestCode;
        final ScoreBoardActivity this$0;

        public FragmentStackItem(int i, GolfCourseCommonFragmentInterface golfcoursecommonfragmentinterface, int j, Intent intent1)
        {
            this$0 = ScoreBoardActivity.this;
            super();
            requestCode = -1;
            fragmentId = i;
            fragment = golfcoursecommonfragmentinterface;
            requestCode = j;
            intent = intent1;
        }
    }


    public static final String INTENT_PARAM_KEY_CURRENT_GAME_ID = "current_game_id";
    public static final String INTENT_PARAM_KEY_STAY_ON_SCOREBOARD = "stay_on_scoreboard";
    public static final int INTENT_RESULT_CODE_ADD_NOTE = 102;
    public static final int INTENT_RESULT_CODE_HOLE_DETAILS = 104;
    public static final int INTENT_RESULT_CODE_LIST_PLAYER = 101;
    public static final int INTENT_RESULT_CODE_OVERVIEW = 103;
    public static final int RESULT_NEW_GAME = 200;
    private AddNoteFragment mAddNoteFragment;
    private ScoreBoardMenu mDrawerMenu;
    private android.view.View.OnClickListener mDrawerMenuClickListener;
    private EditPlayerFragment mEditPlayerFragment;
    private Game mGame;
    private HoleDetailFragment mHoleDetailFragment;
    private ImageView mIVDrawerMenu;
    private ListPlayerFragment mListPlayerFragment;
    public MenuDrawer mMenuDrawer;
    private OnMenuSelectListener mMenuSelectListener;
    private OverviewFragment mOverviewFragment;
    private ScoreBoardFragment mScoreBoardFragment;
    private SelectPlayerFragment mSelectPlayerFragment;
    private CommonFragment mSelectedFragment;
    private Stack mStackFragments;

    public ScoreBoardActivity()
    {
        mSelectedFragment = null;
        mStackFragments = new Stack();
        mDrawerMenuClickListener = new android.view.View.OnClickListener() {

            final ScoreBoardActivity this$0;

            public void onClick(View view)
            {
                mMenuDrawer.toggleMenu();
            }

            
            {
                this$0 = ScoreBoardActivity.this;
                super();
            }
        };
        mMenuSelectListener = new OnMenuSelectListener() {

            final ScoreBoardActivity this$0;

            public void onMenuSelected(int i)
            {
                Intent intent;
                intent = new Intent(ScoreBoardActivity.this, com/biznessapps/common/activities/SingleFragmentActivity);
                intent.putExtra("TAB_UNIQUE_ID", getTabId());
                intent.putExtra("TAB_SPECIAL_ID", 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = ScoreBoardActivity.this;
                super();
            }
        };
    }

    private void initDrawerMenu()
    {
        mMenuDrawer = MenuDrawer.attach(this, 0);
        mMenuDrawer.setContentView(com.biznessapps.layout.R.layout.golf_course_home_screen_layout);
        mMenuDrawer.setDropShadowEnabled(false);
        mMenuDrawer.closeMenu(true);
        mDrawerMenu = new ScoreBoardMenu(this, settings);
        mMenuDrawer.setMenuView(mDrawerMenu);
        mMenuDrawer.setMenuSize((AppCore.getInstance().getDeviceWidth() / 3) * 2);
        mDrawerMenu.setOnMenuSelectedListener(mMenuSelectListener);
        updateDrawerMenu();
    }

    private void initUI()
    {
        mIVDrawerMenu = (ImageView)findViewById(com.biznessapps.layout.R.id.ivDrawer);
        mIVDrawerMenu.setOnClickListener(mDrawerMenuClickListener);
        ViewUtils.setRootBgColor(getBackgroundView(), settings);
        ViewUtils.setRootBgColor(mMenuDrawer.getMenuView(), settings);
        BZImageViewStyle.getInstance(this).apply(settings.getNavigationTextColor(), mIVDrawerMenu);
        updateUI();
    }

    private void popupFromStack()
    {
        long l;
        FragmentStackItem fragmentstackitem = (FragmentStackItem)mStackFragments.lastElement();
        if (fragmentstackitem == null)
        {
            return;
        }
        l = fragmentstackitem.fragmentId;
        if (l != (long)com.biznessapps.layout.R.layout.golf_course_board_screen_layout) goto _L2; else goto _L1
_L1:
        mScoreBoardFragment = null;
_L4:
        mStackFragments.pop();
        return;
_L2:
        if (l == (long)com.biznessapps.layout.R.layout.golf_course_add_note_layout)
        {
            mAddNoteFragment = null;
        } else
        if (l == (long)com.biznessapps.layout.R.layout.golf_course_list_player_layout)
        {
            mListPlayerFragment = null;
        } else
        if (l == (long)com.biznessapps.layout.R.layout.golf_course_select_player_layout)
        {
            mSelectPlayerFragment = null;
        } else
        if (l == (long)com.biznessapps.layout.R.layout.golf_course_edit_player_layout)
        {
            mEditPlayerFragment = null;
        } else
        if (l == (long)com.biznessapps.layout.R.layout.golf_course_overview_layout)
        {
            mOverviewFragment = null;
        } else
        if (l == (long)com.biznessapps.layout.R.layout.golf_course_hole_details_layout)
        {
            mHoleDetailFragment = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private GolfCourseCommonFragmentInterface showFragment(int i, Intent intent)
    {
        Object obj = null;
        boolean flag;
        if (i == com.biznessapps.layout.R.layout.golf_course_board_screen_layout)
        {
            if (mScoreBoardFragment == null)
            {
                mScoreBoardFragment = new ScoreBoardFragment();
            }
            obj = mScoreBoardFragment;
        } else
        if (i == com.biznessapps.layout.R.layout.golf_course_add_note_layout)
        {
            if (mAddNoteFragment == null)
            {
                mAddNoteFragment = new AddNoteFragment();
            }
            obj = mAddNoteFragment;
        } else
        if (i == com.biznessapps.layout.R.layout.golf_course_list_player_layout)
        {
            if (mListPlayerFragment == null)
            {
                mListPlayerFragment = new ListPlayerFragment();
            }
            obj = mListPlayerFragment;
        } else
        if (i == com.biznessapps.layout.R.layout.golf_course_select_player_layout)
        {
            if (mSelectPlayerFragment == null)
            {
                mSelectPlayerFragment = new SelectPlayerFragment();
            }
            obj = mSelectPlayerFragment;
        } else
        if (i == com.biznessapps.layout.R.layout.golf_course_edit_player_layout)
        {
            if (mEditPlayerFragment == null)
            {
                mEditPlayerFragment = new EditPlayerFragment();
            }
            obj = mEditPlayerFragment;
        } else
        if (i == com.biznessapps.layout.R.layout.golf_course_overview_layout)
        {
            if (mOverviewFragment == null)
            {
                mOverviewFragment = new OverviewFragment();
            }
            obj = mOverviewFragment;
        } else
        if (i == com.biznessapps.layout.R.layout.golf_course_hole_details_layout)
        {
            if (mHoleDetailFragment == null)
            {
                mHoleDetailFragment = new HoleDetailFragment();
            }
            obj = mHoleDetailFragment;
        }
        if (obj != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        showFragment((CommonFragment)obj, intent);
        return ((GolfCourseCommonFragmentInterface) (obj));
    }

    private void showFragment(CommonFragment commonfragment, Intent intent)
    {
        if (mSelectedFragment == commonfragment)
        {
            return;
        } else
        {
            mSelectedFragment = commonfragment;
            FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
            commonfragment.setArguments(intent.getExtras());
            fragmenttransaction.replace(com.biznessapps.layout.R.id.vgContainer, mSelectedFragment);
            fragmenttransaction.commit();
            return;
        }
    }

    private void updateDrawerMenu()
    {
        if (mGame.recentHoleNumber == 0)
        {
            mDrawerMenu.hideMenu(com.biznessapps.layout.R.id.tvCurrentGame);
            return;
        } else
        {
            mDrawerMenu.showMenu(com.biznessapps.layout.R.id.tvCurrentGame);
            return;
        }
    }

    private void updateUI()
    {
        updateDrawerMenu();
    }

    public void finishFragment(int i, Intent intent)
    {
        if (mStackFragments.size() == 1)
        {
            isActive = false;
            finish();
            return;
        } else
        {
            int j = ((FragmentStackItem)mStackFragments.lastElement()).requestCode;
            popupFromStack();
            FragmentStackItem fragmentstackitem = (FragmentStackItem)mStackFragments.lastElement();
            showFragment((CommonFragment)fragmentstackitem.fragment, fragmentstackitem.intent);
            ((CommonFragment)fragmentstackitem.fragment).onActivityResult(j, i, intent);
            return;
        }
    }

    public View getBackgroundView()
    {
        return null;
    }

    protected int getLayoutId()
    {
        return 0;
    }

    protected boolean hasNavigationMenu()
    {
        return false;
    }

    protected boolean hasTitleBar()
    {
        return true;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        boolean flag1;
        boolean flag3;
        flag3 = true;
        onActivityResult(i, j, intent);
        updateDrawerMenu();
        flag1 = false;
        if (i != 102) goto _L2; else goto _L1
_L1:
        boolean flag;
        flag = flag1;
        if (j == -1)
        {
            boolean flag2;
            if (intent != null)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            Assert.assertTrue(flag2);
            intent = intent.getExtras();
            if (intent != null)
            {
                flag2 = flag3;
            } else
            {
                flag2 = false;
            }
            Assert.assertTrue(flag2);
            intent = intent.getString("note");
            mGame.notes = intent;
            flag = true;
        }
_L4:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        GolfDatabase.getInstance().updateGame(mGame);
        return;
_L2:
        flag = flag1;
        if (i != 103)
        {
            flag = flag1;
            if (i == 104)
            {
                flag = flag1;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        intent;
        intent.printStackTrace();
        return;
    }

    public void onBackPressed()
    {
        boolean flag1 = true;
        boolean flag = true;
        if (mSelectedFragment != null)
        {
            Iterator iterator = backPressedListeners.iterator();
            do
            {
                flag1 = flag;
                if (!iterator.hasNext())
                {
                    break;
                }
                if (((com.biznessapps.common.activities.CommonFragmentActivity.BackPressed)iterator.next()).onBackPressed())
                {
                    flag = false;
                }
            } while (true);
        }
        if (flag1)
        {
            finishFragment(0, null);
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        onConfigurationChanged(configuration);
        mMenuDrawer.invalidate();
    }

    public void onCreate(Bundle bundle)
    {
label0:
        {
            onCreate(bundle);
            boolean flag = getIntent().getBooleanExtra("stay_on_scoreboard", false);
            initUI();
            bundle = new Intent();
            Bundle bundle1 = new Bundle();
            bundle1.putLong("TAB_UNIQUE_ID", getTabId());
            bundle1.putString("TAB_SPECIAL_ID", tabId);
            bundle1.putString("BG_URL_EXTRA", defineBgUrl());
            bundle1.putString("TAB_LABEL", "");
            bundle1.putString("TAB_FRAGMENT", "GOLF_OVERVIEW_FRAGMENT");
            bundle1.putLong("current_game_id", mGame.id);
            bundle.putExtras(bundle1);
            startFragment(com.biznessapps.layout.R.layout.golf_course_board_screen_layout, bundle, -1);
            if (!flag)
            {
                if (mGame.recentHoleNumber != 0)
                {
                    break label0;
                }
                bundle = new Intent();
                Bundle bundle2 = new Bundle();
                bundle2.putLong("TAB_UNIQUE_ID", getTabId());
                bundle2.putString("TAB_SPECIAL_ID", tabId);
                bundle2.putString("BG_URL_EXTRA", defineBgUrl());
                bundle2.putString("TAB_LABEL", getString(com.biznessapps.layout.R.string.overview));
                bundle2.putString("TAB_FRAGMENT", "GOLF_OVERVIEW_FRAGMENT");
                bundle2.putLong("game_id", mGame.id);
                bundle.putExtras(bundle2);
                startFragment(com.biznessapps.layout.R.layout.golf_course_overview_layout, bundle, 103);
            }
            return;
        }
        mMenuSelectListener.onMenuSelected(com.biznessapps.layout.R.id.tvCurrentGame);
    }

    public void onDestroy()
    {
        try
        {
            GolfDatabase.getInstance().updateGame(mGame);
        }
        catch (StorageException storageexception)
        {
            storageexception.printStackTrace();
        }
        onDestroy();
    }

    public void onPause()
    {
        onPause();
    }

    protected void onPreInit()
    {
        boolean flag1 = true;
        long l = getIntent().getLongExtra("current_game_id", -1L);
        boolean flag;
        if (l != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        Game.clearCache();
        mGame = Game.getGame(l);
        if (mGame != null)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        initDrawerMenu();
    }

    public void onResume()
    {
        onResume();
        updateUI();
    }

    public void popupFragment(int i)
    {
        FragmentStackItem fragmentstackitem = (FragmentStackItem)mStackFragments.lastElement();
        if (fragmentstackitem != null)
        {
            for (; fragmentstackitem.fragmentId != i && mStackFragments.size() > 0; fragmentstackitem = (FragmentStackItem)mStackFragments.lastElement())
            {
                popupFromStack();
            }

        }
    }

    public void startFragment(int i, Intent intent, int j)
    {
        GolfCourseCommonFragmentInterface golfcoursecommonfragmentinterface = showFragment(i, intent);
        mStackFragments.push(new FragmentStackItem(i, golfcoursecommonfragmentinterface, j, intent));
    }




    // Unreferenced inner class com/biznessapps/golfcourse/ScoreBoardActivity$2$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final _cls2 this$1;

        public void run()
        {
            setResult(200);
            onMenuSelected(com.biznessapps.layout.R.id.tvMainMenu);
        }

            
            {
                this$1 = _cls2.this;
                super();
            }
    }

}
