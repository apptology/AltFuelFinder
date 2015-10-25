// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class OverviewAdapter extends AbstractAdapter
{

    private int mUnitType;

    public OverviewAdapter(Context context, List list, UiSettings uisettings, int i)
    {
        super(context, list, com.biznessapps.layout.R.layout.golf_course_overview_item_layout, uisettings);
        mUnitType = i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        this;
        JVM INSTR monitorenter ;
        viewgroup = view;
        if (view != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        viewgroup = inflater.inflate(layoutItemResourceId, null);
        ImageView imageview;
        CommonListEntity commonlistentity;
        Hole hole;
        TextView textview;
        view = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvHoleNumber);
        TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvPars);
        textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvYards);
        imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivHoleThumbnail);
        commonlistentity = (CommonListEntity)getItem(i);
        hole = (Hole)commonlistentity.getObject();
        view.setText(String.valueOf(hole.holeNumber));
        textview1.setText((new StringBuilder()).append(getContext().getResources().getString(com.biznessapps.layout.R.string.pars)).append(": ").append(String.valueOf(hole.par)).toString());
        view = (new StringBuilder()).append(String.valueOf(hole.tee1)).append(" ").toString();
        mUnitType;
        JVM INSTR tableswitch 0 1: default 420
    //                   0 344
    //                   1 375;
           goto _L1 _L2 _L3
_L1:
        textview.setText(view);
        imageview.setTag(hole);
        if (StringUtils.isEmpty(hole.mapThumbnailUrl)) goto _L5; else goto _L4
_L4:
        imageview.setImageBitmap(null);
        view = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setImageSrc(true);
        imageloadparams.setUrl(hole.mapThumbnailUrl);
        imageloadparams.setView(imageview);
        imageloadparams.setImageType(3);
        imageloadparams.setLoadCallback(new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

            final OverviewAdapter this$0;

            public void onImageLoaded(String s, Bitmap bitmap, View view1)
            {
                if (((Hole)view1.getTag()).mapThumbnailUrl.equals(s))
                {
                    ((ImageView)view1).setImageBitmap(bitmap);
                }
            }

            
            {
                this$0 = OverviewAdapter.this;
                super();
            }
        });
        view.loadImage(imageloadparams);
_L6:
        if (commonlistentity.hasColor())
        {
            viewgroup.setBackgroundDrawable(getListItemDrawable(commonlistentity.getItemColor()));
            BZTextViewStyle.getInstance(getContext()).apply(Integer.valueOf(commonlistentity.getItemTextColor()), (ViewGroup)viewgroup);
        }
        this;
        JVM INSTR monitorexit ;
        return viewgroup;
_L2:
        view = (new StringBuilder()).append(view).append(getContext().getString(com.biznessapps.layout.R.string.yards)).toString();
          goto _L1
_L3:
        view = (new StringBuilder()).append(view).append(getContext().getString(com.biznessapps.layout.R.string.meters)).toString();
          goto _L1
_L5:
        imageview.setImageBitmap(null);
          goto _L6
        view;
        throw view;
          goto _L1
    }
}
