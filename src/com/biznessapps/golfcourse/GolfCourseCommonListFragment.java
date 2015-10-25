// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.ViewGroup;
import com.biznessapps.common.fragments.CommonListFragmentNew;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonFragmentInterface, ScoreBoardActivity

public class GolfCourseCommonListFragment extends CommonListFragmentNew
    implements GolfCourseCommonFragmentInterface
{

    private boolean mAttachedToScoreBoard;
    private Intent mIntent;
    private ScoreBoardActivity mScoreBoardActivity;

    public GolfCourseCommonListFragment()
    {
        mAttachedToScoreBoard = false;
    }

    public void finishFragment()
    {
        if (isAttachedToScoreBoard())
        {
            mScoreBoardActivity.finishFragment(0, null);
            return;
        } else
        {
            getActivity().finish();
            return;
        }
    }

    public void finishFragment(int i, Intent intent)
    {
        if (isAttachedToScoreBoard())
        {
            mScoreBoardActivity.finishFragment(i, intent);
            return;
        } else
        {
            getActivity().setResult(i, intent);
            getActivity().finish();
            return;
        }
    }

    public Bundle getFragmentArgments()
    {
        return getIntent().getExtras();
    }

    public Intent getIntent()
    {
        return mIntent;
    }

    public boolean isAttachedToScoreBoard()
    {
        return mAttachedToScoreBoard;
    }

    protected void loadUniversalStrings(ViewGroup viewgroup)
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (getActivity() instanceof ScoreBoardActivity)
        {
            mAttachedToScoreBoard = true;
            mScoreBoardActivity = (ScoreBoardActivity)getActivity();
            mIntent = new Intent();
            mIntent.putExtras(getArguments());
            return;
        } else
        {
            mIntent = super.getIntent();
            return;
        }
    }

    public void popupFragment(int i)
    {
        if (isAttachedToScoreBoard())
        {
            mScoreBoardActivity.popupFragment(i);
        }
    }

    public void startFragment(int i, Intent intent)
    {
        if (isAttachedToScoreBoard())
        {
            ScoreBoardActivity scoreboardactivity = mScoreBoardActivity;
            if (intent == null)
            {
                intent = null;
            }
            scoreboardactivity.startFragment(i, intent, -1);
            return;
        } else
        {
            startActivity(intent);
            return;
        }
    }

    public void startFragment(int i, Intent intent, int j)
    {
        if (isAttachedToScoreBoard())
        {
            ScoreBoardActivity scoreboardactivity = mScoreBoardActivity;
            if (intent == null)
            {
                intent = null;
            }
            scoreboardactivity.startFragment(i, intent, j);
            return;
        } else
        {
            startActivityForResult(intent, j);
            return;
        }
    }
}
