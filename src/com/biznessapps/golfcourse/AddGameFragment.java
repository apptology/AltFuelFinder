// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.common.components.OnTargetChangedListener;
import com.biznessapps.common.components.WheelDelegate;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.storage.StorageException;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.util.Date;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonFragment

public class AddGameFragment extends GolfCourseCommonFragment
{

    private static final String GAME_CREATED_DATE_FORMAT = "MMM dd, yyyy";
    public static final String INTENT_PARAM_KEY_COURSE = "course";
    public static final String INTENT_PARAM_KEY_GOLF_GAME_ID = "golf_game_id";
    public static final int INTENT_RESULT_CODE_ADD_NOTE = 102;
    public static final int INTENT_RESULT_CODE_SELECT_COURSE = 100;
    public static final int INTENT_RESULT_CODE_SELECT_PLAYER = 101;
    private WheelDelegate mDatePicker;
    private OnTargetChangedListener mDatePickerChangedListener;
    private ViewGroup mDatePickerView;
    private android.view.View.OnClickListener mDoneButtonClickListener;
    private Game mGame;
    private ImageView mIVDone;
    private android.view.View.OnClickListener mItemClickListener;
    private ViewGroup mScrollView;
    private TextView mTVNote;

    public AddGameFragment()
    {
        mItemClickListener = new android.view.View.OnClickListener() {

            final AddGameFragment this$0;

            public void onClick(View view)
            {
                long al[] = (CommonListEntity)view.getTag();
                view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
                view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                view.putExtra("TAB_SPECIAL_ID", putExtra);
                view.putExtra("BG_URL_EXTRA", defineBgUrl(getHoldActivity().getIntent()));
                if (al.getTitle().equals(getString(com.biznessapps.layout.R.string.golf_course)))
                {
                    view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.select_course));
                    view.putExtra("TAB_FRAGMENT", "GOLF_SELECT_COURSE_FRAGMENT");
                    startActivityForResult(view, 100);
                } else
                {
                    if (al.getTitle().equals(getString(com.biznessapps.layout.R.string.players)))
                    {
                        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.select_players));
                        if (mGame != null && mGame.playerIdList != null)
                        {
                            al = new long[mGame.playerIdList.size()];
                            for (int i = 0; i < mGame.playerIdList.size(); i++)
                            {
                                al[i] = ((Long)mGame.playerIdList.get(i)).longValue();
                            }

                            view.putExtra("selected_players_id", al);
                        }
                        view.putExtra("TAB_FRAGMENT", "GOLF_SELECT_PLAYER_FRAGMENT");
                        startActivityForResult(view, 101);
                        return;
                    }
                    if (al.getTitle().equals(getString(com.biznessapps.layout.R.string.notes)))
                    {
                        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.add_note));
                        view.putExtra("TAB_FRAGMENT", "GOLF_ADD_NOTE_FRAGMENT");
                        view.putExtra("note", mGame.notes);
                        startActivityForResult(view, 102);
                        return;
                    }
                    if (al.getTitle().equals(getString(com.biznessapps.layout.R.string.date)))
                    {
                        mDatePicker.show();
                        return;
                    }
                }
            }

            
            {
                this$0 = AddGameFragment.this;
                super();
            }
        };
        mDatePickerChangedListener = new OnTargetChangedListener() {

            final AddGameFragment this$0;

            public void onChanged(String s, String s1)
            {
                if (StringUtils.isEmpty(s1))
                {
                    mGame.startDate = 0L;
                    return;
                } else
                {
                    mGame.startDate = CommonUtils.getDate(s1, mDatePicker.getCalendarStringFormat()).getTime();
                    return;
                }
            }

            
            {
                this$0 = AddGameFragment.this;
                super();
            }
        };
        mDoneButtonClickListener = new android.view.View.OnClickListener() {

            final AddGameFragment this$0;

            public void onClick(View view)
            {
                if (mGame.courseId == -1L)
                {
                    ViewUtils.showDialog(getActivity(), com.biznessapps.layout.R.string.please_select_course);
                    return;
                }
                try
                {
                    view = GolfDatabase.getInstance().addCourse(mGame.getCourse());
                }
                // Misplaced declaration of an exception variable
                catch (View view)
                {
                    view.printStackTrace();
                    return;
                }
                mGame.courseId = ((Course) (view)).courseId;
                try
                {
                    GolfDatabase.getInstance().addGame(mGame);
                    getActivity().setResult(-1);
                    getActivity().finish();
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (View view)
                {
                    return;
                }
            }

            
            {
                this$0 = AddGameFragment.this;
                super();
            }
        };
    }

    private void plugListView(Activity activity)
    {
        mScrollView.removeAllViews();
        activity = new CommonListEntity(getString(com.biznessapps.layout.R.string.golf_course));
        if (mGame.getCourse() != null)
        {
            activity.setDescription(mGame.getCourse().name);
        }
        int j = 0 + 1;
        addListViewItem(0, ViewUtils.getWrappedItem(activity, 0, settings), mScrollView);
        activity = new CommonListEntity(getString(com.biznessapps.layout.R.string.players));
        activity.setDescription(String.format(Locale.getDefault(), "%d %s", new Object[] {
            Integer.valueOf(mGame.getPlayerCount()), getString(com.biznessapps.layout.R.string.players)
        }));
        int i = j + 1;
        addListViewItem(j, ViewUtils.getWrappedItem(activity, j, settings), mScrollView);
        activity = new CommonListEntity(getString(com.biznessapps.layout.R.string.notes));
        activity.setDescription(mGame.notes);
        activity.setArrowVisible(false);
        j = i + 1;
        addListViewItem(i, ViewUtils.getWrappedItem(activity, i, settings), mScrollView);
        activity = new CommonListEntity(getString(com.biznessapps.layout.R.string.date));
        activity.setDescription(CommonUtils.getDateString(mGame.startDate, "MMM dd, yyyy"));
        activity.setArrowVisible(false);
        mTVNote = addListViewItem(j, ViewUtils.getWrappedItem(activity, j, settings), mScrollView);
        mDatePicker.setTargetView(mTVNote);
        mDatePicker.setDate(mGame.startDate);
        mDatePicker.setOnTargetChangedListener(mDatePickerChangedListener);
    }

    public TextView addListViewItem(int i, CommonListEntity commonlistentity, ViewGroup viewgroup)
    {
        View view = View.inflate(getActivity(), com.biznessapps.layout.R.layout.common_layout_simple_list_item2, null);
        view.setTag(commonlistentity);
        view.setOnClickListener(mItemClickListener);
        TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvName);
        TextView textview1 = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvDescription);
        view.findViewById(com.biznessapps.layout.R.id.ivRightArrow).setVisibility(8);
        textview.setText(commonlistentity.getTitle());
        if (StringUtils.isEmpty(commonlistentity.getDescription()))
        {
            textview1.setText(commonlistentity.getHint());
        } else
        {
            textview1.setText(commonlistentity.getDescription());
        }
        if (commonlistentity.hasColor())
        {
            view.setBackgroundDrawable(new ColorDrawable(commonlistentity.getItemColor()));
            BZTextViewStyle.getInstance(getActivity()).apply(commonlistentity.getItemTextColor(), textview);
        }
        BZTextViewStyle.getInstance(getActivity()).apply(settings.getFeatureTextColor(), textview1);
        BZImageViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getButtonBgColor()), (ViewGroup)view);
        viewgroup.addView(view);
        return textview1;
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_add_game_layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        mScrollView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.llScrollView);
        mIVDone = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivDone);
        mIVDone.setOnClickListener(mDoneButtonClickListener);
        mDatePickerView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.date_picker);
        mDatePicker = new WheelDelegate(mDatePickerView, getActivity(), null, true);
        mDatePicker.setCalendarStringFormat("MMM dd, yyyy");
        BZImageViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getButtonBgColor()), titleBarRoot);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (intent == null)
        {
            return;
        }
        intent = intent.getExtras();
        if (intent == null) goto _L2; else goto _L1
_L1:
        if (i != 100) goto _L4; else goto _L3
_L3:
        intent = (Course)intent.getSerializable("course_id");
        if (intent != null)
        {
            mGame.setCourse(intent);
        }
_L2:
        plugListView(getActivity());
        return;
_L4:
        if (i == 101)
        {
            if (j == -1)
            {
                mGame.playerIdList.clear();
                intent = intent.getLongArray("selected_players_id");
                if (intent != null)
                {
                    j = intent.length;
                    i = 0;
                    while (i < j) 
                    {
                        long l = intent[i];
                        mGame.addPlayer(l);
                        i++;
                    }
                }
            }
        } else
        if (i == 102 && j == -1)
        {
            intent = intent.getString("note");
            mGame.notes = intent;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = super.onCreateView(layoutinflater, viewgroup, bundle);
        initSettingsData();
        initViews(root);
        loadData();
        return layoutinflater;
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        Bundle bundle = getFragmentArgments();
        long l = -1L;
        activity = null;
        if (bundle != null)
        {
            l = bundle.getLong("golf_game_id", -1L);
            activity = (Course)bundle.getSerializable("course");
        }
        if (l == -1L)
        {
            mGame = new Game();
        } else
        {
            mGame = Game.getGame(l);
        }
        if (mGame.courseId == -1L && activity != null)
        {
            mGame.setCourse(activity);
        }
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }




}
