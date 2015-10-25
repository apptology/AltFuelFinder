// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.style.BZListViewStyle;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.golfcourse:
//            OnMenuSelectListener

public class ScoreBoardMenu extends FrameLayout
{

    private OnMenuSelectListener mListener;
    private android.view.View.OnClickListener mMenuItemClickListener;
    private TextView mTVCurrentGame;
    private TextView mTVMainMenu;
    private TextView mTVNewGame;
    private TextView mTVNotes;
    private TextView mTVOverview;
    private TextView mTVPlayers;
    protected UiSettings mUiSettings;
    private ViewGroup mVGListView;
    private ViewGroup mVGRoot;

    public ScoreBoardMenu(Context context, UiSettings uisettings)
    {
        super(context);
        mMenuItemClickListener = new android.view.View.OnClickListener() {

            final ScoreBoardMenu this$0;

            public void onClick(View view)
            {
                if (mListener != null)
                {
                    mListener.onMenuSelected(view.getId());
                }
            }

            
            {
                this$0 = ScoreBoardMenu.this;
                super();
            }
        };
        mUiSettings = uisettings;
        init();
    }

    private void init()
    {
        initUI();
    }

    private void initUI()
    {
        mVGRoot = (ViewGroup)View.inflate(getContext(), com.biznessapps.layout.R.layout.golf_course_game_screen_drawer_menu_layout, null);
        addView(mVGRoot);
        mVGListView = (ViewGroup)mVGRoot.findViewById(com.biznessapps.layout.R.id.listView);
        mTVCurrentGame = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.tvCurrentGame);
        mTVCurrentGame.setOnClickListener(mMenuItemClickListener);
        mTVNewGame = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.tvNewGame);
        mTVNewGame.setOnClickListener(mMenuItemClickListener);
        mTVNotes = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.tvNotes);
        mTVNotes.setOnClickListener(mMenuItemClickListener);
        mTVPlayers = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.tvPlayers);
        mTVPlayers.setOnClickListener(mMenuItemClickListener);
        mTVOverview = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.tvOverview);
        mTVOverview.setOnClickListener(mMenuItemClickListener);
        mTVMainMenu = (TextView)mVGRoot.findViewById(com.biznessapps.layout.R.id.tvMainMenu);
        mTVMainMenu.setOnClickListener(mMenuItemClickListener);
        loadUniversalStrings(mVGRoot);
        ViewUtils.setRootBgColor(mVGRoot, mUiSettings);
        BZListViewStyle.getInstance(getContext()).apply(mUiSettings, mVGListView);
    }

    public void hideMenu(int i)
    {
        mVGRoot.findViewById(i).setVisibility(8);
    }

    protected void loadUniversalStrings(ViewGroup viewgroup)
    {
        mTVCurrentGame.setText(com.biznessapps.layout.R.string.current_game);
        mTVNewGame.setText(com.biznessapps.layout.R.string.new_game);
        mTVNotes.setText(com.biznessapps.layout.R.string.notes);
        mTVPlayers.setText(com.biznessapps.layout.R.string.players);
        mTVOverview.setText(com.biznessapps.layout.R.string.overview);
        mTVMainMenu.setText(com.biznessapps.layout.R.string.main_menu);
    }

    public void setOnMenuSelectedListener(OnMenuSelectListener onmenuselectlistener)
    {
        mListener = onmenuselectlistener;
    }

    public void showMenu(int i)
    {
        mVGRoot.findViewById(i).setVisibility(0);
    }

}
