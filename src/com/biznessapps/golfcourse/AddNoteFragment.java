// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonFragment

public class AddNoteFragment extends GolfCourseCommonFragment
{

    public static final String INTENT_PARAM_KEY_NOTE = "note";
    private android.view.View.OnClickListener mDoneButtonClickListener;
    private EditText mETNote;
    private ImageView mIVDone;
    private String mNote;

    public AddNoteFragment()
    {
        mNote = "";
        mDoneButtonClickListener = new android.view.View.OnClickListener() {

            final AddNoteFragment this$0;

            public void onClick(View view)
            {
                mNote = mETNote.getText().toString();
                view = new Intent();
                view.putExtra("note", mNote);
                finishFragment(-1, view);
            }

            
            {
                this$0 = AddNoteFragment.this;
                super();
            }
        };
    }

    private void updateUI()
    {
        mETNote.setText(mNote);
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_add_note_layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        mIVDone = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivDone);
        mIVDone.setOnClickListener(mDoneButtonClickListener);
        mETNote = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.etNote);
        viewgroup = (ScrollView)viewgroup.findViewById(com.biznessapps.layout.R.id.scrollView);
        viewgroup.setSmoothScrollingEnabled(true);
        BZTextViewStyle.getInstance(getActivity()).apply(settings.getFeatureTextColor(), mETNote);
        ViewUtils.setRootBgColor(viewgroup, settings);
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
        activity = bundle;
        if (bundle == null)
        {
            activity = getIntent().getExtras();
        }
        if (activity != null)
        {
            mNote = activity.getString("note");
        }
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        updateUI();
    }



/*
    static String access$002(AddNoteFragment addnotefragment, String s)
    {
        addnotefragment.mNote = s;
        return s;
    }

*/

}
