// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.components.OnWheelDelegateVisibleListener;
import com.biznessapps.common.components.WheelDelegate;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.storage.StorageException;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonFragment, EditPlayerListItem

public class EditPlayerFragment extends GolfCourseCommonFragment
{

    public static final String INTENT_PARAM_KEY_GAME_ID = "game_id";
    public static final String INTENT_PARAM_KEY_GOLF_PLAYER_ID = "golf_player_id";
    private android.view.View.OnClickListener mDeleteButtonClickListener;
    private android.view.View.OnClickListener mDoneButtonClickListener;
    private EditText mETEmail;
    private EditText mETGender;
    private EditText mETHandicap;
    private EditText mETPlayerName;
    private EditText mETTee;
    private long mGameId;
    private ViewGroup mGenderPickerView;
    private ViewGroup mHandicapPickerView;
    private ImageView mIVDelete;
    private ImageView mIVDone;
    private boolean mIsEditMode;
    private android.view.View.OnFocusChangeListener mItemFocusChangeListener;
    private WheelDelegate mLatestPicker;
    private ArrayList mListView;
    private OnWheelDelegateVisibleListener mPickerVisibleListener;
    private Player mPlayer;
    private ViewGroup mScrollView;
    private ViewGroup mTeePickerView;

    public EditPlayerFragment()
    {
        mListView = new ArrayList();
        mIsEditMode = false;
        mGameId = -1L;
        mItemFocusChangeListener = new android.view.View.OnFocusChangeListener() {

            final EditPlayerFragment this$0;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    EditPlayerListItem editplayerlistitem = (EditPlayerListItem)view.getTag();
                    if (editplayerlistitem.isPickable)
                    {
                        ViewUtils.showKeyboard(getActivity(), view, false);
                        editplayerlistitem.picker.show();
                        if (mLatestPicker != null && mLatestPicker != editplayerlistitem.picker)
                        {
                            mLatestPicker.hide();
                        }
                        mLatestPicker = editplayerlistitem.picker;
                    } else
                    if (mLatestPicker != null)
                    {
                        mLatestPicker.hide();
                        mLatestPicker = null;
                        return;
                    }
                }
            }

            
            {
                this$0 = EditPlayerFragment.this;
                super();
            }
        };
        mPickerVisibleListener = new OnWheelDelegateVisibleListener() {

            final EditPlayerFragment this$0;

            public void onHide(WheelDelegate wheeldelegate, View view)
            {
                mETPlayerName.requestFocus();
            }

            public void onShow(WheelDelegate wheeldelegate, View view)
            {
            }

            
            {
                this$0 = EditPlayerFragment.this;
                super();
            }
        };
        mDoneButtonClickListener = new android.view.View.OnClickListener() {

            final EditPlayerFragment this$0;

            public void onClick(View view)
            {
                if (!updateDataFromUI())
                {
                    break MISSING_BLOCK_LABEL_30;
                }
                GolfDatabase.getInstance().addPlayer(mPlayer);
                finishFragment();
                return;
                view;
            }

            
            {
                this$0 = EditPlayerFragment.this;
                super();
            }
        };
        mDeleteButtonClickListener = new android.view.View.OnClickListener() {

            final EditPlayerFragment this$0;

            public void onClick(View view)
            {
                Assert.assertTrue(mIsEditMode);
                if (mGameId != -1L)
                {
                    view = Game.getGame(mGameId);
                    view.deletePlayer(mPlayer.getId());
                    try
                    {
                        GolfDatabase.getInstance().updateGame(view);
                    }
                    // Misplaced declaration of an exception variable
                    catch (View view) { }
                } else
                {
                    Player.deletePlayer(mPlayer.getId(), true);
                }
                finishFragment(-1, null);
            }

            
            {
                this$0 = EditPlayerFragment.this;
                super();
            }
        };
    }

    private void buildScrollView()
    {
        if (mPlayer == null)
        {
            return;
        }
        mScrollView.removeAllViews();
        EditPlayerListItem editplayerlistitem = new EditPlayerListItem(getString(com.biznessapps.layout.R.string.player_name));
        editplayerlistitem.setDescription(mPlayer.name);
        editplayerlistitem.isRequired = true;
        int j = 0 + 1;
        mETPlayerName = addListViewItem(0, (EditPlayerListItem)ViewUtils.getWrappedItem(editplayerlistitem, 0, settings), mScrollView);
        mETPlayerName.requestFocus();
        Object obj1 = new EditPlayerListItem(getString(com.biznessapps.layout.R.string.gender));
        if (mIsEditMode)
        {
            Object obj;
            int i;
            if (mPlayer.isMale)
            {
                obj = getString(com.biznessapps.layout.R.string.male);
            } else
            {
                obj = getString(com.biznessapps.layout.R.string.female);
            }
            ((EditPlayerListItem) (obj1)).setDescription(((String) (obj)));
        }
        obj1.isRequired = true;
        obj1.isPickable = true;
        obj = new ArrayList();
        ((List) (obj)).add(getString(com.biznessapps.layout.R.string.male));
        ((List) (obj)).add(getString(com.biznessapps.layout.R.string.female));
        obj1.picker = new WheelDelegate(mGenderPickerView, getActivity(), ((List) (obj)), false);
        i = j + 1;
        mETGender = addListViewItem(j, (EditPlayerListItem)ViewUtils.getWrappedItem(((com.biznessapps.common.entities.CommonListEntity) (obj1)), j, settings), mScrollView);
        obj = new EditPlayerListItem(getString(com.biznessapps.layout.R.string.tee));
        ((EditPlayerListItem) (obj)).setDescription(mPlayer.teeColor);
        obj.isRequired = true;
        obj.isPickable = true;
        obj1 = new ArrayList();
        ((List) (obj1)).add(getString(com.biznessapps.layout.R.string.black));
        ((List) (obj1)).add(getString(com.biznessapps.layout.R.string.blue));
        ((List) (obj1)).add(getString(com.biznessapps.layout.R.string.white));
        ((List) (obj1)).add(getString(com.biznessapps.layout.R.string.red));
        ((List) (obj1)).add(getString(com.biznessapps.layout.R.string.green));
        obj.picker = new WheelDelegate(mTeePickerView, getActivity(), ((List) (obj1)), false);
        j = i + 1;
        mETTee = addListViewItem(i, (EditPlayerListItem)ViewUtils.getWrappedItem(((com.biznessapps.common.entities.CommonListEntity) (obj)), i, settings), mScrollView);
        obj = new EditPlayerListItem(getString(com.biznessapps.layout.R.string.handicap));
        if (mIsEditMode)
        {
            ((EditPlayerListItem) (obj)).setDescription(String.valueOf(mPlayer.handicap));
        }
        obj.isRequired = true;
        obj.isPickable = true;
        obj.picker = new WheelDelegate(mHandicapPickerView, getActivity(), Arrays.asList(getResources().getStringArray(com.biznessapps.layout.R.array.handicap)), false);
        i = j + 1;
        mETHandicap = addListViewItem(j, (EditPlayerListItem)ViewUtils.getWrappedItem(((com.biznessapps.common.entities.CommonListEntity) (obj)), j, settings), mScrollView);
        obj = new EditPlayerListItem(getString(com.biznessapps.layout.R.string.email));
        ((EditPlayerListItem) (obj)).setDescription(mPlayer.email);
        obj.isRequired = false;
        mETEmail = addListViewItem(i, (EditPlayerListItem)ViewUtils.getWrappedItem(((com.biznessapps.common.entities.CommonListEntity) (obj)), i, settings), mScrollView);
        mETEmail.setInputType(32);
        mETPlayerName.requestFocus();
        updateUI();
    }

    private void updateUI()
    {
        if (mIsEditMode)
        {
            mIVDelete.setVisibility(0);
            return;
        } else
        {
            mIVDelete.setVisibility(8);
            return;
        }
    }

    public EditText addListViewItem(int i, EditPlayerListItem editplayerlistitem, ViewGroup viewgroup)
    {
        View view = View.inflate(getActivity(), com.biznessapps.layout.R.layout.golf_course_edit_player_item_layout, null);
        view.setTag(editplayerlistitem);
        TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvName);
        EditText edittext = (EditText)view.findViewById(com.biznessapps.layout.R.id.etDescription);
        String s;
        if (editplayerlistitem.isPickable)
        {
            boolean flag;
            if (editplayerlistitem.picker != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            editplayerlistitem.picker.setTargetView(edittext);
            editplayerlistitem.picker.setOnVisibleListener(mPickerVisibleListener);
            edittext.setInputType(0);
            edittext.setFocusable(true);
        }
        edittext.setTag(editplayerlistitem);
        edittext.setOnFocusChangeListener(mItemFocusChangeListener);
        if (editplayerlistitem.isRequired)
        {
            edittext.setHint(getString(com.biznessapps.layout.R.string.required));
        } else
        {
            edittext.setHint(getString(com.biznessapps.layout.R.string.optional));
        }
        textview.setText(editplayerlistitem.getTitle());
        if (editplayerlistitem.isRequired)
        {
            s = getString(com.biznessapps.layout.R.string.required);
        } else
        {
            s = getString(com.biznessapps.layout.R.string.optional);
        }
        edittext.setHint(s);
        if (!StringUtils.isEmpty(editplayerlistitem.getDescription()))
        {
            edittext.setText(editplayerlistitem.getDescription());
        } else
        {
            edittext.setText("");
        }
        if (editplayerlistitem.hasColor())
        {
            view.setBackgroundDrawable(new ColorDrawable(editplayerlistitem.getItemColor()));
            BZTextViewStyle.getInstance(getActivity()).apply(editplayerlistitem.getItemTextColor(), textview);
        }
        BZTextViewStyle.getInstance(getActivity()).apply(settings.getFeatureTextColor(), edittext);
        viewgroup.addView(view);
        mListView.add((ViewGroup)view);
        return edittext;
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_edit_player_layout;
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
        mIVDelete = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivDelete);
        mIVDelete.setOnClickListener(mDeleteButtonClickListener);
        mGenderPickerView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.gender_picker);
        mTeePickerView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.tee_picker);
        mHandicapPickerView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.handicap_picker);
        updateUI();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        getActivity().getWindow().setSoftInputMode(32);
        layoutinflater = super.onCreateView(layoutinflater, viewgroup, bundle);
        initSettingsData();
        initViews(root);
        loadData();
        return layoutinflater;
    }

    public void onResume()
    {
        super.onResume();
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        activity = getFragmentArgments();
        long l = -1L;
        if (activity != null)
        {
            l = activity.getLong("golf_player_id", -1L);
            mGameId = activity.getLong("game_id", -1L);
        }
        if (l == -1L)
        {
            mIsEditMode = false;
            mPlayer = new Player();
            return;
        } else
        {
            mIsEditMode = true;
            mPlayer = Player.getPlayer(l);
            return;
        }
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        buildScrollView();
    }

    public boolean updateDataFromUI()
    {
        Object obj;
        Object obj1;
        String s;
        String s1;
        String s2;
        String s3;
        boolean flag1;
        obj1 = mETPlayerName.getText().toString();
        s3 = mETGender.getText().toString();
        s = mETHandicap.getText().toString();
        s2 = mETTee.getText().toString();
        s1 = mETEmail.getText().toString();
        flag1 = true;
        obj = "";
        if (!StringUtils.isEmpty(((String) (obj1)))) goto _L2; else goto _L1
_L1:
        flag1 = false;
        obj = getString(com.biznessapps.layout.R.string.please_enter_valid_name);
_L15:
        boolean flag;
        flag = flag1;
        obj1 = obj;
        if (!flag1) goto _L4; else goto _L3
_L3:
        if (!StringUtils.isEmpty(s3)) goto _L6; else goto _L5
_L5:
        flag = false;
        obj1 = getString(com.biznessapps.layout.R.string.please_select_gender);
_L4:
        flag1 = flag;
        obj = obj1;
        if (!flag) goto _L8; else goto _L7
_L7:
        if (!StringUtils.isEmpty(s2)) goto _L10; else goto _L9
_L9:
        flag1 = false;
        obj = getString(com.biznessapps.layout.R.string.please_select_tee);
_L8:
        flag = flag1;
        obj1 = obj;
        if (!flag1) goto _L12; else goto _L11
_L11:
        if (!StringUtils.isEmpty(s)) goto _L14; else goto _L13
_L13:
        flag = false;
        obj1 = getString(com.biznessapps.layout.R.string.please_select_handicap);
_L12:
        flag1 = flag;
        obj = obj1;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        flag1 = flag;
        obj = obj1;
        if (StringUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_220;
        }
        if (!StringUtils.isCorrectEmail(s1))
        {
            break MISSING_BLOCK_LABEL_382;
        }
        mPlayer.email = s1;
        obj = obj1;
        flag1 = flag;
_L16:
        if (!flag1)
        {
            ViewUtils.showDialog(getActivity(), ((String) (obj)));
            return false;
        } else
        {
            return true;
        }
_L2:
        mPlayer.name = ((String) (obj1));
          goto _L15
_L6:
        if (!s3.equals(getString(com.biznessapps.layout.R.string.male)))
        {
            break MISSING_BLOCK_LABEL_293;
        }
        mPlayer.isMale = true;
        flag = flag1;
        obj1 = obj;
          goto _L4
        s3.equals(getString(com.biznessapps.layout.R.string.female));
        mPlayer.isMale = false;
        flag = flag1;
        obj1 = obj;
          goto _L4
_L10:
        mPlayer.teeColor = s2;
        flag1 = flag;
        obj = obj1;
          goto _L8
_L14:
        obj1 = s;
        if (s.startsWith("+"))
        {
            obj1 = s.substring(1);
        }
        mPlayer.handicap = Integer.valueOf(((String) (obj1))).intValue();
        flag = flag1;
        obj1 = obj;
          goto _L12
        flag1 = false;
        try
        {
            obj = getString(com.biznessapps.layout.R.string.email_is_not_correct);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            flag1 = false;
            obj = getString(com.biznessapps.layout.R.string.unknown_error);
        }
          goto _L16
    }



/*
    static WheelDelegate access$002(EditPlayerFragment editplayerfragment, WheelDelegate wheeldelegate)
    {
        editplayerfragment.mLatestPicker = wheeldelegate;
        return wheeldelegate;
    }

*/




}
