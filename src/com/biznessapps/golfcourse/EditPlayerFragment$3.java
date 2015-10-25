// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.storage.StorageException;

// Referenced classes of package com.biznessapps.golfcourse:
//            EditPlayerFragment

class this._cls0
    implements android.view.yerFragment._cls3
{

    final EditPlayerFragment this$0;

    public void onClick(View view)
    {
        if (!updateDataFromUI())
        {
            break MISSING_BLOCK_LABEL_30;
        }
        GolfDatabase.getInstance().addPlayer(EditPlayerFragment.access$200(EditPlayerFragment.this));
        finishFragment();
        return;
        view;
    }

    ()
    {
        this$0 = EditPlayerFragment.this;
        super();
    }
}
