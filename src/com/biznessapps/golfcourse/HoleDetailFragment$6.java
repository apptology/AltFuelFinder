// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.util.SparseArray;
import android.view.View;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.GolfCourseConfig;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.utils.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.golfcourse:
//            HoleDetailFragment

class this._cls0
    implements android.view.ailFragment._cls6
{

    final HoleDetailFragment this$0;

    public void onClick(View view)
    {
        if (!StringUtils.isEmpty(HoleDetailFragment.access$500(HoleDetailFragment.this).mapThumbnailUrl))
        {
            view = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < HoleDetailFragment.access$600(HoleDetailFragment.this).getHoleList().size(); i++)
            {
                Hole hole = (Hole)HoleDetailFragment.access$600(HoleDetailFragment.this).getHoleList().valueAt(i);
                com.biznessapps.gallery.  = new com.biznessapps.gallery.t>();
                .ullUrl(hole.mapThumbnailUrl);
                .GUrl(HoleDetailFragment.access$1100(HoleDetailFragment.this));
                if (GolfCourseConfig.getInstance(getActivity()).useBlurOverlay())
                {
                    .GBlueEffectRadius(90);
                    .GOverlayColor(0xafffffff);
                }
                .sFile(false);
                .nfo(hole.getHoleName(getResources()));
                arraylist.add();
            }

            GalleryManager.getInstance().setGalleryItems(arraylist);
            view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
            view.putExtra("gallery_preview_extra", (Serializable)arraylist.get(HoleDetailFragment.access$400(HoleDetailFragment.this) - 1));
            view.putExtra("gallery_current_position_extra", HoleDetailFragment.access$400(HoleDetailFragment.this) - 1);
            startActivity(view);
        }
    }

    g()
    {
        this$0 = HoleDetailFragment.this;
        super();
    }
}
