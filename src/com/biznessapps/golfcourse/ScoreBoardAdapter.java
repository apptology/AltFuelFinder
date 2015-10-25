// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.content.res.Resources;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.golfcourse.model.PlayerScore;
import com.biznessapps.golfcourse.model.Score;
import java.util.HashMap;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            SmartTableViewAdapter

public class ScoreBoardAdapter extends SmartTableViewAdapter
{
    static final class ColType extends Enum
    {

        private static final ColType $VALUES[];
        public static final ColType COL_CONTENT;
        public static final ColType COL_FIRST;
        public static final ColType COL_NET_TOTAL;
        public static final ColType COL_TOTAL;
        public static final ColType COL_TOTAL_IN;
        public static final ColType COL_TOTAL_OUT;

        public static ColType valueOf(String s)
        {
            return (ColType)Enum.valueOf(com/biznessapps/golfcourse/ScoreBoardAdapter$ColType, s);
        }

        public static ColType[] values()
        {
            return (ColType[])$VALUES.clone();
        }

        static 
        {
            COL_FIRST = new ColType("COL_FIRST", 0);
            COL_CONTENT = new ColType("COL_CONTENT", 1);
            COL_TOTAL_IN = new ColType("COL_TOTAL_IN", 2);
            COL_TOTAL_OUT = new ColType("COL_TOTAL_OUT", 3);
            COL_TOTAL = new ColType("COL_TOTAL", 4);
            COL_NET_TOTAL = new ColType("COL_NET_TOTAL", 5);
            $VALUES = (new ColType[] {
                COL_FIRST, COL_CONTENT, COL_TOTAL_IN, COL_TOTAL_OUT, COL_TOTAL, COL_NET_TOTAL
            });
        }

        private ColType(String s, int i)
        {
            super(s, i);
        }
    }

    static final class RowType extends Enum
    {

        private static final RowType $VALUES[];
        public static final RowType ROW_HANDICAP;
        public static final RowType ROW_PAR;
        public static final RowType ROW_PLAYER;

        public static RowType valueOf(String s)
        {
            return (RowType)Enum.valueOf(com/biznessapps/golfcourse/ScoreBoardAdapter$RowType, s);
        }

        public static RowType[] values()
        {
            return (RowType[])$VALUES.clone();
        }

        static 
        {
            ROW_PAR = new RowType("ROW_PAR", 0);
            ROW_HANDICAP = new RowType("ROW_HANDICAP", 1);
            ROW_PLAYER = new RowType("ROW_PLAYER", 2);
            $VALUES = (new RowType[] {
                ROW_PAR, ROW_HANDICAP, ROW_PLAYER
            });
        }

        private RowType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final int HOLE_NUMBER_OF_FIGURES = 2;
    public static String titleIn;
    public static String titleNetTotal;
    public static String titleOut;
    public static String titleTotal;
    private int mColumnCount;
    private Game mGame;

    public ScoreBoardAdapter(Context context, Game game)
    {
        super(context);
        mGame = game;
        titleIn = (new StringBuilder()).append("     ").append(context.getResources().getString(com.biznessapps.layout.R.string.in)).append("     ").toString();
        titleOut = (new StringBuilder()).append("    ").append(context.getResources().getString(com.biznessapps.layout.R.string.out)).append("    ").toString();
        titleTotal = (new StringBuilder()).append("  ").append(context.getResources().getString(com.biznessapps.layout.R.string.total)).append("  ").toString();
        titleNetTotal = (new StringBuilder()).append("  ").append(context.getResources().getString(com.biznessapps.layout.R.string.net_total)).append("  ").toString();
    }

    private void fillContentCell(View view, int i, int j, PlayerScore playerscore)
    {
        Hole hole = getHoleFromColumnIndex(j);
        Score score = (Score)playerscore.holeScores.get(hole.holeNumber);
        ViewGroup viewgroup = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.vgItem);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.llMainValue);
        TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue);
        ImageView imageview = (ImageView)view.findViewById(com.biznessapps.layout.R.id.ivDivider);
        TextView textview1 = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue1);
        TextView textview2 = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue2);
        view = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvExtendValue);
        if (playerscore.isExtended)
        {
            view.setVisibility(0);
        } else
        {
            view.setVisibility(8);
        }
        viewgroup1.setVisibility(0);
        textview.setVisibility(4);
        viewgroup.setBackgroundColor(-1);
        imageview.setImageResource(com.biznessapps.layout.R.color.golf_cell_grey_bg);
        if (score != null)
        {
            j = score.score;
            i = hole.par - j;
            if (i == 0)
            {
                i = mContext.getResources().getColor(com.biznessapps.layout.R.color.score_par);
            } else
            if (i == 1)
            {
                i = mContext.getResources().getColor(com.biznessapps.layout.R.color.score_birdie1);
            } else
            if (i > 1)
            {
                i = mContext.getResources().getColor(com.biznessapps.layout.R.color.score_birdie2);
            } else
            if (i == -1)
            {
                i = mContext.getResources().getColor(com.biznessapps.layout.R.color.score_bogey1);
            } else
            {
                boolean flag;
                if (i < -1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                Assert.assertTrue(flag);
                i = mContext.getResources().getColor(com.biznessapps.layout.R.color.score_bogey2);
            }
        } else
        {
            textview1.setBackgroundColor(-1);
            textview1.setText("");
            textview2.setText("");
            view.setText("");
            return;
        }
        textview1.setBackgroundColor(i);
        textview1.setTextColor(-1);
        textview1.setText(String.valueOf(j));
        textview2.setText(playerscore.getHoleScoreAsString(hole.holeNumber));
        view.setText(String.valueOf(((Score)playerscore.holeScores.get(hole.holeNumber)).putts));
    }

    private void fillEmptyContentCell(View view, int i, int j, ColType coltype)
    {
        ViewGroup viewgroup = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.vgItem);
        ImageView imageview = (ImageView)view.findViewById(com.biznessapps.layout.R.id.ivDivider);
        TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue1);
        TextView textview1 = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue2);
        view = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvExtendValue);
        textview.setText("");
        textview1.setText("");
        view.setText("");
        if (coltype == ColType.COL_CONTENT)
        {
            viewgroup.setBackgroundColor(-1);
            imageview.setImageResource(com.biznessapps.layout.R.color.golf_cell_grey_bg);
        }
    }

    private void fillHandicapRowCell(View view, int i, int j, RowType rowtype, ColType coltype)
    {
        Hole hole = getHoleFromColumnIndex(j);
        ViewGroup viewgroup = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.llMainValue);
        rowtype = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue);
        viewgroup.setVisibility(4);
        rowtype.setVisibility(0);
        static class _cls1
        {

            static final int $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[];
            static final int $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType[];

            static 
            {
                $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType = new int[ColType.values().length];
                try
                {
                    $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[ColType.COL_TOTAL_OUT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[ColType.COL_TOTAL_IN.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[ColType.COL_TOTAL.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[ColType.COL_NET_TOTAL.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType[ColType.COL_CONTENT.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType = new int[RowType.values().length];
                try
                {
                    $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType[RowType.ROW_PAR.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType[RowType.ROW_HANDICAP.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType[RowType.ROW_PLAYER.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.biznessapps.golfcourse.ScoreBoardAdapter.ColType[coltype.ordinal()])
        {
        default:
            Assert.assertTrue("None reachable case", false);
            return;

        case 3: // '\003'
        case 4: // '\004'
            coltype = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.vgItem);
            view = (ImageView)view.findViewById(com.biznessapps.layout.R.id.ivDivider);
            coltype.setBackgroundColor(mContext.getResources().getColor(com.biznessapps.layout.R.color.golf_cell_grey_bg));
            view.setImageResource(com.biznessapps.layout.R.color.white);
            // fall through

        case 1: // '\001'
        case 2: // '\002'
            rowtype.setText("");
            return;

        case 5: // '\005'
            rowtype.setText(String.valueOf(hole.handicap));
            break;
        }
    }

    private void fillParRowCell(View view, int i, int j, RowType rowtype, ColType coltype)
    {
        rowtype = mGame.getCourse();
        Hole hole = getHoleFromColumnIndex(j);
        ViewGroup viewgroup = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.vgItem);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.llMainValue);
        TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue);
        view = (ImageView)view.findViewById(com.biznessapps.layout.R.id.ivDivider);
        viewgroup1.setVisibility(4);
        textview.setVisibility(0);
        switch (_cls1..SwitchMap.com.biznessapps.golfcourse.ScoreBoardAdapter.ColType[coltype.ordinal()])
        {
        default:
            Assert.assertTrue("None reachable case", false);
            return;

        case 1: // '\001'
            textview.setText(String.valueOf(rowtype.getTotalOutPars()));
            return;

        case 2: // '\002'
            textview.setText(String.valueOf(rowtype.getTotalInPars()));
            return;

        case 3: // '\003'
        case 4: // '\004'
            viewgroup.setBackgroundColor(mContext.getResources().getColor(com.biznessapps.layout.R.color.golf_cell_grey_bg));
            view.setImageResource(com.biznessapps.layout.R.color.white);
            textview.setText(String.valueOf(rowtype.getTotalPars()));
            return;

        case 5: // '\005'
            textview.setText(String.valueOf(hole.par));
            break;
        }
    }

    private void fillTotalColumnCell(View view, int i, int j, ColType coltype, Player player, PlayerScore playerscore)
    {
        ViewGroup viewgroup;
        ImageView imageview;
        TextView textview1;
        TextView textview2;
        viewgroup = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.vgItem);
        ViewGroup viewgroup1 = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.llMainValue);
        TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue);
        imageview = (ImageView)view.findViewById(com.biznessapps.layout.R.id.ivDivider);
        textview1 = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue1);
        textview2 = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvValue2);
        view = (TextView)view.findViewById(com.biznessapps.layout.R.id.tvExtendValue);
        viewgroup1.setVisibility(0);
        textview.setVisibility(4);
        if (playerscore.isExtended)
        {
            view.setVisibility(0);
        } else
        {
            view.setVisibility(8);
        }
        textview1.setText("");
        textview2.setText("");
        view.setText("");
        _cls1..SwitchMap.com.biznessapps.golfcourse.ScoreBoardAdapter.ColType[coltype.ordinal()];
        JVM INSTR tableswitch 1 4: default 168
    //                   1 184
    //                   2 235
    //                   3 286
    //                   4 286;
           goto _L1 _L2 _L3 _L4 _L4
_L1:
        Assert.assertTrue("None reachable case", false);
_L6:
        return;
_L2:
        if (playerscore.getTotalHoleOutScoreCount() != 0)
        {
            textview1.setTypeface(null, 1);
            textview1.setText(String.valueOf(playerscore.getTotalHoleOutScores()));
            textview2.setText(playerscore.getTotalHoleInScoreAsString());
            view.setText(String.valueOf(playerscore.getTotalPutts()));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (playerscore.getTotalHoleInScoreCount() != 0)
        {
            textview1.setTypeface(null, 1);
            textview1.setText(String.valueOf(playerscore.getTotalHoleInScores()));
            textview2.setText(playerscore.getTotalHoleOutScoreAsString());
            view.setText(String.valueOf(playerscore.getTotalHoleInPutts()));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        viewgroup.setBackgroundColor(mContext.getResources().getColor(com.biznessapps.layout.R.color.golf_cell_grey_bg));
        imageview.setImageResource(com.biznessapps.layout.R.color.white);
        if (playerscore.getTotalHoleScoreCount() != 0)
        {
            textview1.setTypeface(null, 1);
            if (coltype == ColType.COL_TOTAL)
            {
                textview1.setText(String.valueOf(playerscore.getTotalScores()));
            } else
            {
                textview1.setText(String.valueOf(playerscore.getTotalScores() + player.handicap));
            }
            textview2.setText(playerscore.getTotalHoleScoreAsString());
            view.setText(String.valueOf(playerscore.getTotalPutts()));
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private ColType getColType(String s)
    {
        ColType coltype = ColType.COL_CONTENT;
        if (s == titleOut)
        {
            coltype = ColType.COL_TOTAL_OUT;
        } else
        {
            if (s == titleIn)
            {
                return ColType.COL_TOTAL_IN;
            }
            if (s == titleTotal)
            {
                return ColType.COL_TOTAL;
            }
            if (s == titleNetTotal)
            {
                return ColType.COL_NET_TOTAL;
            }
        }
        return coltype;
    }

    private RowType getRowType(int i)
    {
        RowType rowtype = RowType.ROW_PLAYER;
        switch (i)
        {
        default:
            return rowtype;

        case 0: // '\0'
            return RowType.ROW_PAR;

        case 1: // '\001'
            return RowType.ROW_HANDICAP;
        }
    }

    public int getColumnCount()
    {
        if (mColumnCount != 0)
        {
            return mColumnCount;
        }
        int i = mGame.getCourse().getHoleList().size();
        if (mGame.getCourse().isGoBackableCourse())
        {
            mColumnCount = i + 5;
        } else
        {
            mColumnCount = i + 3;
        }
        return mColumnCount;
    }

    public View getContentView(View view, int i, int j)
    {
        View view1 = view;
        if (view == null)
        {
            view1 = View.inflate(mContext, com.biznessapps.layout.R.layout.golf_course_board_content_item_layout, null);
        }
        Object obj = (TextView)view1.findViewById(com.biznessapps.layout.R.id.tvSizeAdjuster);
        view = getFrozenRowHeaderItemString(j);
        if (view.length() > 2)
        {
            ((TextView) (obj)).setText(view);
        }
        obj = getRowType(i);
        view = getColType(view);
        switch (_cls1..SwitchMap.com.biznessapps.golfcourse.ScoreBoardAdapter.RowType[((RowType) (obj)).ordinal()])
        {
        default:
            return view1;

        case 1: // '\001'
            fillParRowCell(view1, i, j, ((RowType) (obj)), view);
            return view1;

        case 2: // '\002'
            fillHandicapRowCell(view1, i, j, ((RowType) (obj)), view);
            return view1;

        case 3: // '\003'
            obj = getPlayerFromRowIndex(i);
            break;
        }
        PlayerScore playerscore;
        boolean flag;
        if (obj != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        playerscore = (PlayerScore)mGame.scores.get(obj);
        if (playerscore != null)
        {
            if (view == ColType.COL_CONTENT)
            {
                fillContentCell(view1, i, j, playerscore);
                return view1;
            } else
            {
                fillTotalColumnCell(view1, i, j, view, ((Player) (obj)), playerscore);
                return view1;
            }
        } else
        {
            fillEmptyContentCell(view1, i, j, view);
            return view1;
        }
    }

    public View getFrozenColumnHeaderItemView(View view, int i)
    {
        View view1 = view;
        if (view == null)
        {
            view1 = View.inflate(mContext, com.biznessapps.layout.R.layout.golf_course_board_frozen_column_header_item_layout, null);
        }
        Object obj = getRowType(i);
        view = (TextView)view1.findViewById(com.biznessapps.layout.R.id.tvValue);
        TextView textview = (TextView)view1.findViewById(com.biznessapps.layout.R.id.tvExtendValue);
        ImageView imageview = (ImageView)view1.findViewById(com.biznessapps.layout.R.id.ivMark);
        textview.setText(com.biznessapps.layout.R.string.putts);
        textview.setVisibility(8);
        switch (_cls1..SwitchMap.com.biznessapps.golfcourse.ScoreBoardAdapter.RowType[((RowType) (obj)).ordinal()])
        {
        default:
            return view1;

        case 1: // '\001'
            view.setText(com.biznessapps.layout.R.string.par);
            imageview.setVisibility(8);
            return view1;

        case 2: // '\002'
            view.setText(com.biznessapps.layout.R.string.handicap);
            imageview.setVisibility(8);
            return view1;

        case 3: // '\003'
            obj = getPlayerFromRowIndex(i);
            break;
        }
        PlayerScore playerscore = (PlayerScore)mGame.scores.get(obj);
        boolean flag;
        if (playerscore != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        view.setText(((Player) (obj)).name);
        if (playerscore.isExtended)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        textview.setVisibility(i);
        imageview.setVisibility(0);
        return view1;
    }

    public View getFrozenCrossHeaderItemView(View view)
    {
        View view1 = view;
        if (view == null)
        {
            view1 = View.inflate(mContext, com.biznessapps.layout.R.layout.golf_course_board_frozen_cross_header_item_layout, null);
        }
        return view1;
    }

    public String getFrozenRowHeaderItemString(int i)
    {
        boolean flag1 = true;
        int j = getColumnCount();
        Object obj = mGame.getCourse();
        j--;
        boolean flag;
        if (i == j - 1)
        {
            obj = titleNetTotal;
        } else
        if (i == j - 2)
        {
            obj = titleTotal;
        } else
        if (((Course) (obj)).isGoBackableCourse())
        {
            if (i < 9)
            {
                obj = String.valueOf(((Course) (obj)).getHole(i + 1).holeNumber);
            } else
            if (i == 9)
            {
                obj = titleOut;
            } else
            if (i > 9 && i <= 18)
            {
                obj = String.valueOf(((Course) (obj)).getHole(i).holeNumber);
            } else
            {
                if (i == 19)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                Assert.assertTrue(flag);
                obj = titleIn;
            }
        } else
        {
            obj = String.valueOf(((Course) (obj)).getHole(i + 1).holeNumber);
        }
        if (obj != null)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        return ((String) (obj));
    }

    public View getFrozenRowHeaderItemView(View view, int i)
    {
        View view1 = view;
        if (view == null)
        {
            view1 = View.inflate(mContext, com.biznessapps.layout.R.layout.golf_course_board_frozen_row_header_item_layout, null);
        }
        ((TextView)view1.findViewById(com.biznessapps.layout.R.id.tvValue)).setText(getFrozenRowHeaderItemString(i));
        return view1;
    }

    public Hole getHoleFromColumnIndex(int i)
    {
        Hole hole;
        Object obj;
        Course course;
        int j;
        j = getColumnCount();
        course = mGame.getCourse();
        obj = null;
        hole = obj;
        if (i >= j - 1) goto _L2; else goto _L1
_L1:
        if (!course.isGoBackableCourse())
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if (i >= 9) goto _L4; else goto _L3
_L3:
        hole = course.getHole(i + 1);
_L2:
        return hole;
_L4:
        hole = obj;
        if (i <= 9) goto _L2; else goto _L5
_L5:
        hole = obj;
        if (i > 18) goto _L2; else goto _L6
_L6:
        return course.getHole(i);
        return course.getHole(i + 1);
    }

    public Player getPlayerFromRowIndex(int i)
    {
        boolean flag1 = true;
        boolean flag;
        if (i >= 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        i -= 2;
        if (mGame.playerIdList.size() > i)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        return Player.getPlayer(((Long)mGame.playerIdList.get(i)).longValue());
    }

    public int getRowCount()
    {
        return mGame.getPlayerCount() + 3;
    }
}
