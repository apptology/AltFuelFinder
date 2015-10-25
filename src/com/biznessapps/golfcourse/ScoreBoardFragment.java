// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.social.ui.OnSharingCompletedListener;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.golfcourse.model.PlayerScore;
import com.biznessapps.storage.StorageException;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.SquareImageView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            GolfCourseCommonFragment, SmartTableView, ScoreBoardAdapter, OnCellClickListener, 
//            OnScoreBoardCaptureListener, OnTableResizeListener

public class ScoreBoardFragment extends GolfCourseCommonFragment
{

    public static final String INTENT_PARAM_KEY_STAY_ON_SCOREBOARD = "stay_on_scoreboard";
    public static final int INTENT_RESULT_CODE_ADD_NOTE = 102;
    public static final int INTENT_RESULT_CODE_HOLE_DETAILS = 104;
    public static final int INTENT_RESULT_CODE_LIST_PLAYER = 101;
    public static final int INTENT_RESULT_CODE_OVERVIEW = 103;
    public static final int RESULT_NEW_GAME = 200;
    private static final String SHARE_EMAIL_DATE_FORMAT = "MMM dd, yyyy";
    private static final String SHARE_EMAIL_DESCRIPTION_FORMAT = "%s: %s\n%s:%s";
    private Bitmap mCapturedBitmap;
    private android.view.View.OnClickListener mEditClickListener;
    private Game mGame;
    private SquareImageView mIVCourseThumb;
    private ImageView mIVEdit;
    private ImageView mIVShare;
    private ScoreBoardAdapter mSTScordBoardAdapter;
    private SmartTableView mSTScoreBoardView;
    private OnCellClickListener mScoreBoardCellClickListener;
    private android.view.View.OnClickListener mShareClickListener;
    private TextView mTVCourseName;
    private TextView mTVScoreCard;
    private ViewGroup mVGCourse;

    public ScoreBoardFragment()
    {
        mEditClickListener = new android.view.View.OnClickListener() {

            final ScoreBoardFragment this$0;

            public void onClick(View view)
            {
                mIVEdit.showContextMenu();
            }

            
            {
                this$0 = ScoreBoardFragment.this;
                super();
            }
        };
        mShareClickListener = new android.view.View.OnClickListener() {

            final ScoreBoardFragment this$0;

            public void onClick(View view)
            {
                captureScoreBoardScreen(new OnScoreBoardCaptureListener() {

                    final _cls4 this$1;

                    public void onCaptured(Uri uri)
                    {
                        String s = String.format("%s: %s\n%s:%s", new Object[] {
                            getString(com.biznessapps.layout.R.string.course), mGame.getCourse().name, getString(com.biznessapps.layout.R.string.played_date), CommonUtils.getDateString(mGame.startDate, "MMM dd, yyyy")
                        });
                        ShareComponent.showSharingOptionDialog(getActivity(), 239, s, mCapturedBitmap, uri, new OnSharingCompletedListener() {

                            final _cls1 this$2;

                            public void onSharingCanceled()
                            {
                                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sharing_canceled));
                            }

                            public void onSharingCompleted(int i)
                            {
                                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sharing_completed));
                            }

                            public void onSharingError(int i, String s, String s1)
                            {
                                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.something_went_wrong));
                            }

            
            {
                this$2 = _cls1.this;
                super();
            }
                        });
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                });
            }

            
            {
                this$0 = ScoreBoardFragment.this;
                super();
            }
        };
        mScoreBoardCellClickListener = new OnCellClickListener() {

            final ScoreBoardFragment this$0;

            public void onCellClicked(int i, int j)
            {
                boolean flag1 = true;
                if (j == 0 && i > 2)
                {
                    Object obj = mSTScordBoardAdapter.getPlayerFromRowIndex(i - 1);
                    boolean flag;
                    if (obj != null)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    Assert.assertTrue(flag);
                    obj = (PlayerScore)mGame.scores.get(obj);
                    if (obj != null)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    Assert.assertTrue(flag);
                    if (!((PlayerScore) (obj)).isExtended)
                    {
                        flag = flag1;
                    } else
                    {
                        flag = false;
                    }
                    obj.isExtended = flag;
                    mSTScordBoardAdapter.notifyDataSetChanged();
                } else
                if (j > 0)
                {
                    Hole hole = mSTScordBoardAdapter.getHoleFromColumnIndex(j - 1);
                    if (hole != null)
                    {
                        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("GOLF_DETAIL_HOLE_FRAGMENT"));
                        intent.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                        intent.putExtra("TAB_SPECIAL_ID", getIntent);
                        intent.putExtra("BG_URL_EXTRA", defineBgUrl(getHoldActivity().getIntent()));
                        intent.putExtra("TAB_FRAGMENT", "GOLF_DETAIL_HOLE_FRAGMENT");
                        intent.putExtra("game_id", mGame.id);
                        intent.putExtra("hole_number", hole.holeNumber);
                        if (i > 2)
                        {
                            intent.putExtra("tab_idx", com.biznessapps.layout.R.id.btScore);
                        }
                        startFragment(com.biznessapps.layout.R.layout.golf_course_hole_details_layout, intent, 104);
                        return;
                    }
                }
            }

            
            {
                this$0 = ScoreBoardFragment.this;
                super();
            }
        };
    }

    private void captureScoreBoardScreen(final OnScoreBoardCaptureListener listener)
    {
        final ProgressDialog dialog = ViewUtils.getProgressDialog(getActivity());
        dialog.show();
        final int tableScrollX = mSTScoreBoardView.getScrollPosoitionX();
        final int tableScrollY = mSTScoreBoardView.getScrollPosoitionY();
        mSTScoreBoardView.fitViewToContents(new OnTableResizeListener() {

            final ScoreBoardFragment this$0;
            final ProgressDialog val$dialog;
            final OnScoreBoardCaptureListener val$listener;
            final int val$tableScrollX;
            final int val$tableScrollY;

            public void onResized(int i, int j)
            {
                Uri uri;
                uri = null;
                mCapturedBitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(mCapturedBitmap);
                canvas.drawColor(-1);
                canvas.clipRect(0, 0, i, j);
                mSTScoreBoardView.layout(mSTScoreBoardView.getLeft(), mSTScoreBoardView.getTop(), mSTScoreBoardView.getRight(), mSTScoreBoardView.getBottom());
                mSTScoreBoardView.draw(canvas);
                Object obj;
                obj = File.createTempFile("biz-", ".png", Environment.getExternalStorageDirectory());
                mCapturedBitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, new FileOutputStream(((File) (obj))));
                obj = Uri.fromFile(((File) (obj)));
                uri = ((Uri) (obj));
_L2:
                mSTScoreBoardView.restoreViewToScreen(new OnTableResizeListener() {

                    final _cls1 this$1;

                    public void onResized(int i, int j)
                    {
                        mSTScoreBoardView.setScrollPosition(tableScrollX, tableScrollY);
                        dialog.dismiss();
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
                listener.onCaptured(uri);
                return;
                IOException ioexception;
                ioexception;
                ioexception.printStackTrace();
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                this$0 = ScoreBoardFragment.this;
                tableScrollX = i;
                tableScrollY = j;
                dialog = progressdialog;
                listener = onscoreboardcapturelistener;
                super();
            }
        });
    }

    private void shareScoreBoard(final Player player)
    {
        if (StringUtils.isEmpty(player.email))
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_email));
            return;
        } else
        {
            captureScoreBoardScreen(new OnScoreBoardCaptureListener() {

                final ScoreBoardFragment this$0;
                final Player val$player;

                public void onCaptured(Uri uri)
                {
                    if (uri == null)
                    {
                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.unknown_error));
                        return;
                    }
                    String s = String.format("%s: %s\n%s:%s", new Object[] {
                        getString(com.biznessapps.layout.R.string.course), mGame.getCourse().name, getString(com.biznessapps.layout.R.string.played_date), CommonUtils.getDateString(mGame.startDate, "MMM dd, yyyy")
                    });
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("image/png");
                    if (!StringUtils.isEmpty(player.email))
                    {
                        intent.putExtra("android.intent.extra.EMAIL", new String[] {
                            player.email
                        });
                    }
                    intent.putExtra("android.intent.extra.SUBJECT", getString(com.biznessapps.layout.R.string.score_card));
                    intent.putExtra("android.intent.extra.TEXT", s);
                    intent.putExtra("android.intent.extra.STREAM", uri);
                    startActivity(Intent.createChooser(intent, "Email to player"));
                }

            
            {
                this$0 = ScoreBoardFragment.this;
                player = player1;
                super();
            }
            });
            return;
        }
    }

    private void updateUI()
    {
        mIVShare.setVisibility(0);
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.golf_course_board_screen_layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        mIVEdit = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivEdit);
        mIVEdit.setOnClickListener(mEditClickListener);
        registerForContextMenu(mIVEdit);
        mIVShare = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivShare);
        mIVShare.setOnClickListener(mShareClickListener);
        mTVScoreCard = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvScorecard);
        mTVScoreCard.setText(com.biznessapps.layout.R.string.score_card);
        mVGCourse = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgCourse);
        mVGCourse.setBackgroundColor(settings.getSectionBarColor());
        BZTextViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getSectionTextColor()), mVGCourse);
        mIVCourseThumb = (SquareImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivCourseThumb);
        mTVCourseName = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvCourseName);
        mSTScoreBoardView = (SmartTableView)viewgroup.findViewById(com.biznessapps.layout.R.id.stScoreBoardView);
        mSTScoreBoardView.setOnCellClickListener(mScoreBoardCellClickListener);
        updateUI();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        boolean flag1;
        boolean flag3;
        flag3 = true;
        super.onActivityResult(i, j, intent);
        flag1 = false;
        if (i != 101) goto _L2; else goto _L1
_L1:
        boolean flag;
        mSTScoreBoardView.setAdapter(mSTScordBoardAdapter);
        flag = true;
_L4:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        GolfDatabase.getInstance().updateGame(mGame);
        return;
_L2:
        if (i == 102)
        {
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
        } else
        {
            flag = flag1;
            if (i != 103)
            {
                flag = flag1;
                if (i == 104)
                {
                    flag = flag1;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        intent;
        intent.printStackTrace();
        return;
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        Iterator iterator = mGame.playerIdList.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Player player = Player.getPlayer(((Long)iterator.next()).longValue());
            if (!menuitem.getTitle().equals(player.name))
            {
                continue;
            }
            shareScoreBoard(player);
            break;
        } while (true);
        return super.onContextItemSelected(menuitem);
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        contextmenu.setHeaderTitle(getString(com.biznessapps.layout.R.string.choose_player_to_send_email));
        for (view = mGame.playerIdList.iterator(); view.hasNext(); contextmenu.add(Player.getPlayer(((Long)view.next()).longValue()).name)) { }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = super.onCreateView(layoutinflater, viewgroup, bundle);
        initSettingsData();
        initViews(root);
        loadData();
        return layoutinflater;
    }

    public void onPause()
    {
        super.onPause();
        try
        {
            GolfDatabase.getInstance().updateGame(mGame);
            return;
        }
        catch (StorageException storageexception)
        {
            storageexception.printStackTrace();
        }
    }

    public void onResume()
    {
        super.onResume();
        updateUI();
        mSTScordBoardAdapter.notifyDataSetChanged();
    }

    protected void preDataLoading(Activity activity)
    {
        boolean flag1 = true;
        super.preDataLoading(activity);
        long l = getFragmentArgments().getLong("current_game_id", -1L);
        boolean flag;
        if (l != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        mGame = Game.getGame(l);
        if (mGame != null)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (!StringUtils.isEmpty(mGame.getCourse().thumbUrl))
        {
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadRoundedImage(mGame.getCourse().thumbUrl, mIVCourseThumb);
        } else
        {
            mIVCourseThumb.setImageResource(0);
        }
        mTVCourseName.setText(mGame.getCourse().name);
        mSTScordBoardAdapter = new ScoreBoardAdapter(getActivity(), mGame);
        mSTScoreBoardView.setAdapter(mSTScordBoardAdapter);
    }



/*
    static Bitmap access$002(ScoreBoardFragment scoreboardfragment, Bitmap bitmap)
    {
        scoreboardfragment.mCapturedBitmap = bitmap;
        return bitmap;
    }

*/







}
