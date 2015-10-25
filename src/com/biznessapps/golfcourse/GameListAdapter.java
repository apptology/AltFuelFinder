// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.style.BZStyleManager;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.golfcourse:
//            GameListLayoutItem

public class GameListAdapter extends AbstractAdapter
{

    private static final String GOLF_COURSE_CREATED_DATE_FORMAT = "MMMM dd, yyyy";

    public GameListAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.golf_course_game_item_layout, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = view;
        if (view == null)
        {
            viewgroup = inflater.inflate(layoutItemResourceId, null);
        }
        view = (GameListLayoutItem)getItem(i);
        Game game = ((GameListLayoutItem) (view)).game;
        Course course = game.getCourse();
        if (view != null)
        {
            ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivThumbnail);
            TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvName);
            TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvPlayers);
            TextView textview2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvCreatedDate);
            ImageView imageview1 = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivRightArrow);
            if (course != null)
            {
                if (!StringUtils.isEmpty(course.thumbUrl))
                {
                    imageFetcher.loadRoundedImage(course.thumbUrl, imageview);
                } else
                {
                    imageview.setImageResource(0);
                }
                textview.setText(course.name);
                if (game.playerIdList == null)
                {
                    textview1.setText("0");
                } else
                {
                    textview1.setText(String.valueOf(game.playerIdList.size()));
                }
            } else
            {
                imageview.setImageResource(0);
                textview.setText("");
            }
            textview2.setText(CommonUtils.getDateString(game.startDate, "MMMM dd, yyyy"));
            if (view.hasColor())
            {
                viewgroup.setBackgroundDrawable(getListItemDrawable(view.getItemColor()));
                BZStyleManager.getInstance(getContext()).applyColor(view.getItemTextColor(), (ViewGroup)viewgroup, new View[] {
                    imageview, imageview1
                });
            }
        }
        return viewgroup;
    }
}
