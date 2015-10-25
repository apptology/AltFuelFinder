// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.golfcourse.model.Score;
import com.biznessapps.widgets.wheel.DigitalWheelAdapter;
import com.biznessapps.widgets.wheel.WheelView;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            OnScorePuttsSelectedListener

public class EditPlayerScorePuttsDialogFragment extends DialogFragment
{

    private android.view.View.OnClickListener mDoneClickListener;
    private ImageView mIVDone;
    private OnScorePuttsSelectedListener mListener;
    private android.view.View.OnClickListener mOutsideClickListener;
    private int mPutts;
    private DigitalWheelAdapter mPuttsAdapter;
    private com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener mPuttsStateChangedListener;
    private ViewGroup mRootView;
    private int mScore;
    private DigitalWheelAdapter mScoreAdapter;
    private com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener mScoreStateChangedListener;
    private UiSettings mSettings;
    private TextView mTVPlayer;
    private TextView mTVScore;
    private HoleDetailFragment.PlayerHoleScoreTag mTag;
    private ViewGroup mVGContents;
    private ViewGroup mVGOutside;
    private ViewGroup mVGSectionBar;
    private ViewGroup mVGTitle;
    private WheelView mWVPutts;
    private WheelView mWVScore;

    public EditPlayerScorePuttsDialogFragment()
    {
        mScore = 0;
        mPutts = 0;
        mScoreStateChangedListener = new com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener() {

            final EditPlayerScorePuttsDialogFragment this$0;

            public void onStateChanged(WheelView wheelview)
            {
                mScore = mScoreAdapter.getValueFromIndex(wheelview.getCurrentItem());
                if (mPuttsAdapter != null)
                {
                    mPuttsAdapter.setMaxValue(mScore - 1);
                    mWVPutts.setViewAdapter(mPuttsAdapter);
                    int i = Math.min(mWVPutts.getCurrentItem(), mPuttsAdapter.getMaxIndex());
                    mWVPutts.setCurrentItem(i);
                    mPuttsStateChangedListener.onStateChanged(mWVPutts);
                }
                updateUI();
            }

            
            {
                this$0 = EditPlayerScorePuttsDialogFragment.this;
                super();
            }
        };
        mPuttsStateChangedListener = new com.biznessapps.widgets.wheel.WheelView.OnStateChangedListener() {

            final EditPlayerScorePuttsDialogFragment this$0;

            public void onStateChanged(WheelView wheelview)
            {
                mPutts = mPuttsAdapter.getValueFromIndex(wheelview.getCurrentItem());
                updateUI();
            }

            
            {
                this$0 = EditPlayerScorePuttsDialogFragment.this;
                super();
            }
        };
        mDoneClickListener = new android.view.View.OnClickListener() {

            final EditPlayerScorePuttsDialogFragment this$0;

            public void onClick(View view)
            {
                dismiss();
                if (mListener != null)
                {
                    mListener.onSelected(mTag, mScore, mPutts);
                }
            }

            
            {
                this$0 = EditPlayerScorePuttsDialogFragment.this;
                super();
            }
        };
        mOutsideClickListener = new android.view.View.OnClickListener() {

            final EditPlayerScorePuttsDialogFragment this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = EditPlayerScorePuttsDialogFragment.this;
                super();
            }
        };
        mSettings = AppCore.getInstance().getAppUiSettings();
    }

    private void initUI()
    {
        mVGOutside = (ViewGroup)mRootView.findViewById(com.biznessapps.layout.R.id.vgOutside);
        mVGOutside.setOnClickListener(mOutsideClickListener);
        mVGTitle = (ViewGroup)mRootView.findViewById(com.biznessapps.layout.R.id.vgTitle);
        mVGTitle.setBackgroundColor(mSettings.getNavigationBarColor());
        BZTextViewStyle.getInstance(getActivity()).apply(Integer.valueOf(mSettings.getNavigationTextColor()), mVGTitle);
        BZImageViewStyle.getInstance(getActivity()).apply(Integer.valueOf(mSettings.getButtonBgColor()), mVGTitle);
        mIVDone = (ImageView)mRootView.findViewById(com.biznessapps.layout.R.id.ivDone);
        mIVDone.setOnClickListener(mDoneClickListener);
        mTVPlayer = (TextView)mRootView.findViewById(com.biznessapps.layout.R.id.tvPlayer);
        mTVScore = (TextView)mRootView.findViewById(com.biznessapps.layout.R.id.tvScore);
        mVGSectionBar = (ViewGroup)mRootView.findViewById(com.biznessapps.layout.R.id.vgSectionBar);
        mVGSectionBar.setBackgroundColor(mSettings.getSectionBarColor());
        BZTextViewStyle.getInstance(getActivity()).apply(Integer.valueOf(mSettings.getSectionTextColor()), mVGTitle);
        mVGContents = (ViewGroup)mRootView.findViewById(com.biznessapps.layout.R.id.vgContents);
        mWVPutts = (WheelView)mRootView.findViewById(com.biznessapps.layout.R.id.wvPutts);
        mPuttsAdapter = new DigitalWheelAdapter(getActivity(), 0, -1, "%d");
        mPuttsAdapter.setRange(0, 17);
        mWVPutts.setViewAdapter(mPuttsAdapter);
        mWVPutts.setCyclic(false);
        mWVPutts.addChangingListener(mPuttsStateChangedListener);
        mWVPutts.setCurrentItem(mPuttsAdapter.getIndexFromValue(mPutts));
        mWVScore = (WheelView)mRootView.findViewById(com.biznessapps.layout.R.id.wvScore);
        mScoreAdapter = new DigitalWheelAdapter(getActivity(), 1, 18, "%d");
        mScoreAdapter.setRange(0, 18);
        mWVScore.setViewAdapter(mScoreAdapter);
        mWVScore.setCyclic(false);
        mWVScore.addChangingListener(mScoreStateChangedListener);
        mWVScore.setCurrentItem(mScoreAdapter.getIndexFromValue(mScore));
        mScoreStateChangedListener.onStateChanged(mWVScore);
        loadUniversalStrings(mRootView);
        BZTextViewStyle.getInstance(getActivity()).apply(Integer.valueOf(mSettings.getFeatureTextColor()), mVGContents);
        updateUI();
    }

    public static EditPlayerScorePuttsDialogFragment newInstance(FragmentActivity fragmentactivity, Bundle bundle, String s)
    {
        FragmentTransaction fragmenttransaction = fragmentactivity.getSupportFragmentManager().beginTransaction();
        fragmentactivity = fragmentactivity.getSupportFragmentManager().findFragmentByTag(s);
        if (fragmentactivity != null)
        {
            fragmenttransaction.remove(fragmentactivity);
        }
        fragmenttransaction.addToBackStack(null);
        fragmentactivity = new EditPlayerScorePuttsDialogFragment();
        fragmentactivity.setArguments(bundle);
        fragmentactivity.show(fragmenttransaction, s);
        return fragmentactivity;
    }

    private void updateUI()
    {
        while (mTag == null || mTVPlayer == null) 
        {
            return;
        }
        mTVPlayer.setText(mTag.player.name);
        android.text.Spanned spanned = Html.fromHtml((new StringBuilder()).append(mScore).append("<sup><small>").append(mPutts).append("</small></sup>").toString());
        mTVScore.setText(spanned);
    }

    protected void loadUniversalStrings(ViewGroup viewgroup)
    {
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvColumnScore)).setText(com.biznessapps.layout.R.string.score);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvColumnPutts)).setText(com.biznessapps.layout.R.string.putts);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setStyle(0, 0x1030010);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        getDialog().getWindow().getAttributes().windowAnimations = com.biznessapps.layout.R.style.PopupDialogAnimation_Window;
        getDialog().setCanceledOnTouchOutside(true);
        int i = com.biznessapps.layout.R.layout.golf_course_hole_details_edit_score_layout;
        mRootView = (ViewGroup)View.inflate(getActivity(), i, null);
        initUI();
        return mRootView;
    }

    public void setHoleScore(HoleDetailFragment.PlayerHoleScoreTag playerholescoretag)
    {
        boolean flag;
        if (playerholescoretag != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        mTag = playerholescoretag;
        if (mTag.score != null)
        {
            mScore = mTag.score.score;
            if (mWVScore != null)
            {
                mWVScore.setCurrentItem(mScoreAdapter.getIndexFromValue(mScore));
            }
            mPutts = mTag.score.putts;
            if (mWVPutts != null)
            {
                mWVPutts.setCurrentItem(mPuttsAdapter.getIndexFromValue(mPutts));
            }
        }
        updateUI();
    }

    public void setOnScorePuttsSelectedListener(OnScorePuttsSelectedListener onscoreputtsselectedlistener)
    {
        mListener = onscoreputtsselectedlistener;
    }



/*
    static int access$002(EditPlayerScorePuttsDialogFragment editplayerscoreputtsdialogfragment, int i)
    {
        editplayerscoreputtsdialogfragment.mScore = i;
        return i;
    }

*/








/*
    static int access$602(EditPlayerScorePuttsDialogFragment editplayerscoreputtsdialogfragment, int i)
    {
        editplayerscoreputtsdialogfragment.mPutts = i;
        return i;
    }

*/


}
