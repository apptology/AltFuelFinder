// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.text.Html;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.common.style.BZListViewStyle;
import com.biznessapps.common.style.BZSectionStyle;
import com.biznessapps.common.style.BZTabStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.GolfCourseConfig;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.golfcourse.model.PlayerScore;
import com.biznessapps.golfcourse.model.Score;
import com.biznessapps.storage.StorageException;
import com.biznessapps.utils.BlurEffectUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.SmartWebView;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonFragment, EditPlayerScorePuttsDialogFragment, OnScorePuttsSelectedListener, ScoreBoardActivity

public class HoleDetailFragment extends GolfCourseCommonFragment
{
    class PlayerHoleScoreTag
    {

        public int holeNumber;
        public Player player;
        public Score score;
        final HoleDetailFragment this$0;

        public PlayerHoleScoreTag(Player player1, int i, Score score1)
        {
            this$0 = HoleDetailFragment.this;
            super();
            player = player1;
            holeNumber = i;
            score = score1;
        }
    }


    private static final int BG_USE_OVERLAY_BLACK_TEXT_TRANSPARENT_COLOR = -1;
    private static final int BG_USE_OVERLAY_BLUE_EFFECT_RADIUS = 90;
    private static final int BG_USE_OVERLAY_COLOR = 0xafffffff;
    public static final String INTENT_PARAM_KEY_GAME_ID = "game_id";
    public static final String INTENT_PARAM_KEY_HOLE_NUMBER = "hole_number";
    public static final String INTENT_PARAM_KEY_TAB_IDX = "tab_idx";
    private android.view.View.OnClickListener mAddScoreClickListener;
    private Button mBTGPS;
    private Button mBTInfo;
    private Button mBTScore;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed mBackPressedListener;
    private Bitmap mBlurBitmap;
    private Course mCourse;
    private Location mCurrentLocation;
    private int mCurrentTabId;
    private android.view.View.OnClickListener mFinishClickListener;
    private Game mGame;
    private Hole mHole;
    private int mHoleNumber;
    private ImageView mIVNext;
    private ImageView mIVPrev;
    private ImageView mIVThumbnail;
    private ImageView mIVZoom;
    LocationListener mLocationListener;
    private android.view.View.OnClickListener mNextButtonClickListener;
    private View mPopupView;
    private android.view.View.OnClickListener mPrevButtonClickListener;
    private EditPlayerScorePuttsDialogFragment mScorePuttsDialogFragment;
    private OnScorePuttsSelectedListener mScorePuttsSelectedListener;
    private TextView mTVFinish;
    private TextView mTVHandicap;
    private TextView mTVPar;
    private TextView mTVTee1;
    private TextView mTVTee2;
    private TextView mTVTee3;
    private TextView mTVTee4;
    private android.view.View.OnClickListener mTabClickListener;
    private ViewGroup mVGCommon;
    private ViewGroup mVGContent;
    private ViewGroup mVGGPS;
    private ViewGroup mVGGPSList;
    private ViewGroup mVGGreenBack;
    private ViewGroup mVGGreenFront;
    private ViewGroup mVGGreenMiddle;
    private ViewGroup mVGHoleDetails;
    private ViewGroup mVGInfo;
    private ViewGroup mVGScore;
    private ViewGroup mVGScoreHeader;
    private ViewGroup mVGScoreList;
    private ViewGroup mVGTabDetails;
    private ViewGroup mVGTabs;
    private SmartWebView mWebInfo;
    private android.view.View.OnClickListener mZoomClickListener;

    public HoleDetailFragment()
    {
        mHoleNumber = 1;
        mCurrentTabId = com.biznessapps.layout.R.id.vgInfo;
        mAddScoreClickListener = new android.view.View.OnClickListener() {

            final HoleDetailFragment this$0;

            public void onClick(View view)
            {
                view = (PlayerHoleScoreTag)view.getTag();
                mScorePuttsDialogFragment = EditPlayerScorePuttsDialogFragment.newInstance(getActivity(), null, "EditScore");
                mScorePuttsDialogFragment.setOnScorePuttsSelectedListener(mScorePuttsSelectedListener);
                mScorePuttsDialogFragment.setHoleScore(view);
            }

            
            {
                this$0 = HoleDetailFragment.this;
                super();
            }
        };
        mScorePuttsSelectedListener = new OnScorePuttsSelectedListener() {

            final HoleDetailFragment this$0;

            public void onSelected(PlayerHoleScoreTag playerholescoretag, int i, int j)
            {
                Player player;
                boolean flag;
                if (playerholescoretag != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                Assert.assertTrue(flag);
                player = Player.getPlayer(playerholescoretag.player.getId());
                if (i == 0 && j == 0)
                {
                    if (playerholescoretag.score != null)
                    {
                        ((PlayerScore)mGame.scores.get(player)).holeScores.put(playerholescoretag.holeNumber, null);
                        try
                        {
                            GolfDatabase.getInstance().deleteScore(playerholescoretag.score);
                        }
                        // Misplaced declaration of an exception variable
                        catch (PlayerHoleScoreTag playerholescoretag)
                        {
                            playerholescoretag.printStackTrace();
                        }
                    }
                } else
                {
                    if (playerholescoretag.score == null)
                    {
                        playerholescoretag.score = new Score();
                        playerholescoretag.score.gameID = mGame.id;
                        playerholescoretag.score.playerID = playerholescoretag.player.getId();
                        playerholescoretag.score.holeNumber = playerholescoretag.holeNumber;
                        ((PlayerScore)mGame.scores.get(player)).holeScores.put(playerholescoretag.holeNumber, playerholescoretag.score);
                    }
                    playerholescoretag.score.score = i;
                    playerholescoretag.score.putts = j;
                    try
                    {
                        GolfDatabase.getInstance().addScore(playerholescoretag.score);
                    }
                    // Misplaced declaration of an exception variable
                    catch (PlayerHoleScoreTag playerholescoretag)
                    {
                        playerholescoretag.printStackTrace();
                    }
                }
                updateScoreLayout();
            }

            
            {
                this$0 = HoleDetailFragment.this;
                super();
            }
        };
        mPrevButtonClickListener = new android.view.View.OnClickListener() ;
        mNextButtonClickListener = new android.view.View.OnClickListener() ;
        mFinishClickListener = new android.view.View.OnClickListener() ;
        mZoomClickListener = new android.view.View.OnClickListener() {

            final HoleDetailFragment this$0;

            public void onClick(View view)
            {
                if (!StringUtils.isEmpty(mHole.mapThumbnailUrl))
                {
                    view = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
                    ArrayList arraylist = new ArrayList();
                    for (int i = 0; i < mCourse.getHoleList().size(); i++)
                    {
                        Hole hole = (Hole)mCourse.getHoleList().valueAt(i);
                        com.biznessapps.gallery.GalleryData.Item item = new Item();
                        item.setFullUrl(hole.mapThumbnailUrl);
                        item.setBGUrl(startActivity);
                        if (GolfCourseConfig.getInstance(getActivity()).useBlurOverlay())
                        {
                            item.setBGBlueEffectRadius(90);
                            item.setBGOverlayColor(0xafffffff);
                        }
                        item.setIsFile(false);
                        item.setInfo(hole.getHoleName(getResources()));
                        arraylist.add(item);
                    }

                    GalleryManager.getInstance().setGalleryItems(arraylist);
                    view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
                    view.putExtra("gallery_preview_extra", (Serializable)arraylist.get(mHoleNumber - 1));
                    view.putExtra("gallery_current_position_extra", mHoleNumber - 1);
                    startActivity(view);
                }
            }

            
            {
                this$0 = HoleDetailFragment.this;
                super();
            }
        };
        mTabClickListener = new android.view.View.OnClickListener() {

            final HoleDetailFragment this$0;

            public void onClick(View view)
            {
                mCurrentTabId = view.getId();
                if (mCurrentTabId == com.biznessapps.layout.R.id.btGPS)
                {
                    ViewUtils.checkGpsEnabling(getActivity());
                }
                updateUI();
            }

            
            {
                this$0 = HoleDetailFragment.this;
                super();
            }
        };
        mLocationListener = new LocationListener() {

            final HoleDetailFragment this$0;

            public void onLocationChanged(Location location)
            {
                mCurrentLocation = location;
                updateUI();
            }

            public void onProviderDisabled(String s)
            {
            }

            public void onProviderEnabled(String s)
            {
            }

            public void onStatusChanged(String s, int i, Bundle bundle)
            {
            }

            
            {
                this$0 = HoleDetailFragment.this;
                super();
            }
        };
        mBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final HoleDetailFragment this$0;

            public boolean onBackPressed()
            {
                return ViewUtils.canGoBack(mWebInfo);
            }

            
            {
                this$0 = HoleDetailFragment.this;
                super();
            }
        };
    }

    private void rebuildGPSLayout()
    {
        mVGGPSList.removeAllViews();
        mVGGreenFront = (ViewGroup)View.inflate(getActivity(), com.biznessapps.layout.R.layout.golf_course_hole_details_gps_item_layout, null);
        ((ImageView)mVGGreenFront.findViewById(com.biznessapps.layout.R.id.ivCourse)).setImageResource(com.biznessapps.layout.R.drawable.ic_green_front);
        mVGGPSList.addView(mVGGreenFront);
        mVGGreenMiddle = (ViewGroup)View.inflate(getActivity(), com.biznessapps.layout.R.layout.golf_course_hole_details_gps_item_layout, null);
        ((ImageView)mVGGreenMiddle.findViewById(com.biznessapps.layout.R.id.ivCourse)).setImageResource(com.biznessapps.layout.R.drawable.ic_green_middle);
        mVGGPSList.addView(mVGGreenMiddle);
        mVGGreenBack = (ViewGroup)View.inflate(getActivity(), com.biznessapps.layout.R.layout.golf_course_hole_details_gps_item_layout, null);
        ((ImageView)mVGGreenBack.findViewById(com.biznessapps.layout.R.id.ivCourse)).setImageResource(com.biznessapps.layout.R.drawable.ic_green_back);
        mVGGPSList.addView(mVGGreenBack);
        updateGPSLayout();
    }

    private void rebuildInfoLayout()
    {
        mWebInfo = (SmartWebView)mVGInfo.findViewById(com.biznessapps.layout.R.id.webInfo);
        updateInfoLayout();
    }

    private void rebuildScoreLayout()
    {
        if (mGame == null)
        {
            return;
        }
        mVGScoreList.removeAllViews();
        for (int i = 0; i < mGame.playerIdList.size(); i++)
        {
            ViewGroup viewgroup = (ViewGroup)View.inflate(getActivity(), com.biznessapps.layout.R.layout.golf_course_hole_details_score_item_layout, null);
            mVGScoreList.addView(viewgroup);
        }

        updateScoreLayout();
    }

    private void rebuildTabs()
    {
        rebuildInfoLayout();
        rebuildGPSLayout();
        rebuildScoreLayout();
        updateUI();
    }

    private void updateCommonLayout()
    {
        if (mHole == null || mCourse == null)
        {
            return;
        }
        titleTextView.setText(mHole.getHoleName(getResources()));
        mTVPar.setText(String.valueOf(mHole.par));
        mTVHandicap.setText(String.valueOf(mHole.handicap));
        mTVTee1.setText(String.valueOf(mHole.tee1));
        mTVTee2.setText(String.valueOf(mHole.tee2));
        mTVTee3.setText(String.valueOf(mHole.tee3));
        mTVTee4.setText(String.valueOf(mHole.tee4));
        ImageView imageview = mIVPrev;
        int i;
        boolean flag;
        if (mHoleNumber != 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        imageview.setEnabled(flag);
        if (mHoleNumber == mCourse.getHoleList().size())
        {
            mIVNext.setVisibility(4);
            mIVNext.setEnabled(false);
            mTVFinish.setVisibility(0);
        } else
        {
            mIVNext.setVisibility(0);
            mIVNext.setEnabled(true);
            mTVFinish.setVisibility(4);
        }
        if (mIVPrev.isEnabled())
        {
            i = settings.getNavigationTextColor();
        } else
        {
            i = settings.getNavigationTextColor() & 0x7fffffff;
        }
        BZImageViewStyle.getInstance(getActivity()).apply(i, mIVPrev);
        BZTextViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getFeatureTextColor()), mVGCommon);
        if (!StringUtils.isEmpty(mHole.mapThumbnailUrl))
        {
            ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setImageSrc(true);
            imageloadparams.setUrl(mHole.mapThumbnailUrl);
            imageloadparams.setView(mIVThumbnail);
            imageloadparams.setImageType(3);
            imagefetcher.loadImage(imageloadparams);
            return;
        } else
        {
            mIVThumbnail.setImageBitmap(null);
            return;
        }
    }

    private void updateGPSLayout()
    {
        while (mHole == null || mVGGreenFront == null) 
        {
            return;
        }
        Object obj = (TextView)mVGGreenFront.findViewById(com.biznessapps.layout.R.id.tvYards);
        String s = mHole.getDistanceAsString(getActivity(), mCurrentLocation, mHole.front);
        ((TextView) (obj)).setText(String.format(Locale.getDefault(), "%s - %s", new Object[] {
            s, getString(com.biznessapps.layout.R.string.green_front)
        }));
        obj = mHole.getDistanceAsString(getActivity(), mCurrentLocation, mHole.middle);
        ((TextView)mVGGreenMiddle.findViewById(com.biznessapps.layout.R.id.tvYards)).setText(String.format(Locale.getDefault(), "%s - %s", new Object[] {
            obj, getString(com.biznessapps.layout.R.string.green_middle)
        }));
        obj = mHole.getDistanceAsString(getActivity(), mCurrentLocation, mHole.back);
        ((TextView)mVGGreenBack.findViewById(com.biznessapps.layout.R.id.tvYards)).setText(String.format(Locale.getDefault(), "%s - %s", new Object[] {
            obj, getString(com.biznessapps.layout.R.string.green_back)
        }));
        BZListViewStyle.getInstance(getActivity()).apply(settings, mVGGPSList);
        BZImageViewStyle.getInstance(getActivity()).apply(Integer.valueOf(0xff000000), mVGGPSList);
    }

    private void updateInfoLayout()
    {
        while (mHole == null || mWebInfo == null) 
        {
            return;
        }
        mWebInfo.loadData(mHole.description, "text/html", "utf-8");
    }

    private void updateScoreLayout()
    {
        while (mGame == null || mVGScoreList == null || mVGScoreList.getChildCount() != mGame.playerIdList.size()) 
        {
            return;
        }
        int i = 0;
        Iterator iterator = mGame.playerIdList.iterator();
        while (iterator.hasNext()) 
        {
            Player player = Player.getPlayer(((Long)iterator.next()).longValue());
            Object obj = (ViewGroup)mVGScoreList.getChildAt(i);
            ViewGroup viewgroup = (ViewGroup)((ViewGroup) (obj)).findViewById(com.biznessapps.layout.R.id.vgScore);
            TextView textview = (TextView)((ViewGroup) (obj)).findViewById(com.biznessapps.layout.R.id.tvPlayer);
            TextView textview1 = (TextView)((ViewGroup) (obj)).findViewById(com.biznessapps.layout.R.id.tvScore);
            TextView textview2 = (TextView)((ViewGroup) (obj)).findViewById(com.biznessapps.layout.R.id.tvHoleScore);
            Button button = (Button)((ViewGroup) (obj)).findViewById(com.biznessapps.layout.R.id.btAddScore);
            button.setText(com.biznessapps.layout.R.string.add_score);
            PlayerScore playerscore = (PlayerScore)mGame.scores.get(player);
            obj = null;
            if (playerscore != null)
            {
                obj = (Score)playerscore.holeScores.get(mHoleNumber);
            }
            textview.setText(player.name);
            if (playerscore == null || obj == null)
            {
                viewgroup.setVisibility(4);
                button.setVisibility(0);
                button.setTag(new PlayerHoleScoreTag(player, mHoleNumber, ((Score) (obj))));
                button.setOnClickListener(mAddScoreClickListener);
            } else
            {
                viewgroup.setVisibility(0);
                viewgroup.setTag(new PlayerHoleScoreTag(player, mHoleNumber, ((Score) (obj))));
                viewgroup.setOnClickListener(mAddScoreClickListener);
                button.setVisibility(4);
                textview1.setText(Html.fromHtml((new StringBuilder()).append(((Score) (obj)).score).append("<sup><small>").append(((Score) (obj)).putts).append("</small></sup>").toString()));
                textview2.setText(playerscore.getHoleScoreAsString(mHoleNumber));
            }
            i++;
        }
        BZSectionStyle.getInstance(getActivity()).apply(settings, mVGScoreHeader);
        BZListViewStyle.getInstance(getActivity()).apply(settings, mVGScoreList);
        BZButtonStyle.getInstance(getActivity()).apply(settings, mVGScoreList);
    }

    private void updateUI()
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        if (mHole == null) goto _L2; else goto _L1
_L1:
        Course course = mCourse;
        if (course != null) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        if (titleTextView == null) goto _L2; else goto _L4
_L4:
        updateCommonLayout();
        mVGInfo.setVisibility(4);
        mVGGPS.setVisibility(4);
        mVGScore.setVisibility(4);
        mBTInfo.setSelected(false);
        mBTGPS.setSelected(false);
        mBTScore.setSelected(false);
        BZTabStyle.getInstance(getActivity()).apply(settings, mVGTabs);
        BZButtonStyle.getInstance(getActivity()).apply(settings.getNavigationTextColor(), mVGTabs);
        BZTextViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getFeatureTextColor()), mVGTabDetails);
        if (mCurrentTabId != com.biznessapps.layout.R.id.btInfo)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        mVGInfo.setVisibility(0);
        mBTInfo.setSelected(true);
        updateInfoLayout();
          goto _L2
        Exception exception;
        exception;
        throw exception;
label0:
        {
            if (mCurrentTabId != com.biznessapps.layout.R.id.btGPS)
            {
                break label0;
            }
            mVGGPS.setVisibility(0);
            mBTGPS.setSelected(true);
            updateGPSLayout();
        }
          goto _L2
        if (mCurrentTabId != com.biznessapps.layout.R.id.btScore)
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        mVGScore.setVisibility(0);
        mBTScore.setSelected(true);
        updateScoreLayout();
          goto _L2
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_hole_details_layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        this;
        JVM INSTR monitorenter ;
        super.initViews(viewgroup);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        mVGContent = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgContent);
        mVGCommon = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgCommon);
        mVGHoleDetails = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.llHoleDetails);
        mTVPar = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvPar);
        mTVHandicap = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvHandicap);
        mTVTee1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvTee1);
        mTVTee2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvTee2);
        mTVTee3 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvTee3);
        mTVTee4 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvTee4);
        mIVThumbnail = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivHoleThumbnail);
        mIVZoom = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivZoom);
        mIVZoom.setOnClickListener(mZoomClickListener);
        mVGTabs = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgTabs);
        mVGTabDetails = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgTabDetails);
        mBTInfo = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.btInfo);
        mBTInfo.setOnClickListener(mTabClickListener);
        mVGInfo = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.svInfo);
        mBTGPS = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.btGPS);
        mBTGPS.setOnClickListener(mTabClickListener);
        mVGGPS = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.svGPS);
        mVGGPSList = (ViewGroup)mVGGPS.findViewById(com.biznessapps.layout.R.id.vgGPS);
        mBTScore = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.btScore);
        mBTScore.setOnClickListener(mTabClickListener);
        mVGScore = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.svScore);
        mVGScoreHeader = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgScoreHeader);
        mVGScoreList = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgScoreList);
        mPopupView = viewgroup.findViewById(com.biznessapps.layout.R.id.scorePuttsPopupWindow);
        ((ViewGroup)mPopupView.getParent()).removeView(mPopupView);
        mIVPrev = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivPrev);
        mIVPrev.setOnClickListener(mPrevButtonClickListener);
        mIVNext = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivNext);
        mIVNext.setOnClickListener(mNextButtonClickListener);
        mTVFinish = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvFinish);
        mTVFinish.setOnClickListener(mFinishClickListener);
        loadUniversalStrings(viewgroup);
        BZImageViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getButtonBgColor()), titleBarRoot);
        BZImageViewStyle.getInstance(getActivity()).apply(settings.getFeatureTextColor(), mIVZoom);
        mVGHoleDetails.setBackgroundColor(settings.getGlobalBgColor() & 0x7fffffff);
        getHoldActivity().addBackPressedListener(mBackPressedListener);
        updateUI();
        this;
        JVM INSTR monitorexit ;
        return;
        viewgroup;
        throw viewgroup;
    }

    protected void loadUniversalStrings(ViewGroup viewgroup)
    {
        mTVFinish.setText(com.biznessapps.layout.R.string.finish);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvStaticPar)).setText(com.biznessapps.layout.R.string.par);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvStaticHandicap)).setText(com.biznessapps.layout.R.string.handicap);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvStaticTees)).setText(com.biznessapps.layout.R.string.tees);
        mBTInfo.setText(com.biznessapps.layout.R.string.info);
        mBTGPS.setText(com.biznessapps.layout.R.string.gps);
        mBTScore.setText(com.biznessapps.layout.R.string.score);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvStaticPlayer)).setText(com.biznessapps.layout.R.string.player);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvStaticScore)).setText(com.biznessapps.layout.R.string.score);
    }

    protected void onBackgroundLoaded(Bitmap bitmap)
    {
        if (GolfCourseConfig.getInstance(getActivity()).useBlurOverlay())
        {
            getViewForBg().setBackgroundDrawable(null);
            if (mBlurBitmap == null)
            {
                mBlurBitmap = BlurEffectUtils.addBlurEffect(bitmap, 90);
            }
            getViewForBg().setBackgroundDrawable(new BitmapDrawable(getResources(), mBlurBitmap));
            mVGContent.setBackgroundColor(0xafffffff);
        } else
        {
            getViewForBg().setBackgroundDrawable(new BitmapDrawable(getResources(), bitmap));
            mVGContent.setBackgroundColor(0);
        }
        updateUI();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = super.onCreateView(layoutinflater, viewgroup, bundle);
        initSettingsData();
        initViews(root);
        loadData();
        return layoutinflater;
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        mGame.recentHoleNumber = mHoleNumber;
        AppCore.getInstance().getLocationFinder().removeLocationListener(mLocationListener);
        getHoldActivity().removeBackPressedListener(mBackPressedListener);
    }

    public void onResume()
    {
        super.onResume();
        AppCore.getInstance().getLocationFinder().startSearching(true);
        updateUI();
    }

    public void onStop()
    {
        super.onStop();
        AppCore.getInstance().getLocationFinder().stopSearching();
    }

    protected void preDataLoading(Activity activity)
    {
        boolean flag = true;
        super.preDataLoading(activity);
        mCurrentLocation = AppCore.getInstance().getLocationFinder().getCurrentLocation();
        AppCore.getInstance().getLocationFinder().addLocationListener(mLocationListener);
        Bundle bundle = getFragmentArgments();
        activity = bundle;
        if (bundle == null)
        {
            activity = getIntent().getExtras();
        }
        long l = -1L;
        if (activity != null)
        {
            l = activity.getLong("game_id", -1L);
            mHoleNumber = activity.getInt("hole_number", 1);
            mCurrentTabId = activity.getInt("tab_idx", com.biznessapps.layout.R.id.btInfo);
        }
        if (l == -1L)
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        mGame = Game.getGame(l);
        mGame.recentHoleNumber = mHoleNumber;
        mCourse = mGame.getCourse();
        mHole = mCourse.getHole(mHoleNumber);
    }

    protected void updateControlsWithData(Activity activity)
    {
        this;
        JVM INSTR monitorenter ;
        super.updateControlsWithData(activity);
        rebuildTabs();
        this;
        JVM INSTR monitorexit ;
        return;
        activity;
        throw activity;
    }



/*
    static EditPlayerScorePuttsDialogFragment access$002(HoleDetailFragment holedetailfragment, EditPlayerScorePuttsDialogFragment editplayerscoreputtsdialogfragment)
    {
        holedetailfragment.mScorePuttsDialogFragment = editplayerscoreputtsdialogfragment;
        return editplayerscoreputtsdialogfragment;
    }

*/






/*
    static int access$1202(HoleDetailFragment holedetailfragment, int i)
    {
        holedetailfragment.mCurrentTabId = i;
        return i;
    }

*/


/*
    static Location access$1302(HoleDetailFragment holedetailfragment, Location location)
    {
        holedetailfragment.mCurrentLocation = location;
        return location;
    }

*/






/*
    static int access$408(HoleDetailFragment holedetailfragment)
    {
        int i = holedetailfragment.mHoleNumber;
        holedetailfragment.mHoleNumber = i + 1;
        return i;
    }

*/


/*
    static int access$410(HoleDetailFragment holedetailfragment)
    {
        int i = holedetailfragment.mHoleNumber;
        holedetailfragment.mHoleNumber = i - 1;
        return i;
    }

*/



/*
    static Hole access$502(HoleDetailFragment holedetailfragment, Hole hole)
    {
        holedetailfragment.mHole = hole;
        return hole;
    }

*/




}
