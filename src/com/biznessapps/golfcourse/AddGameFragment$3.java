// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.storage.StorageException;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.golfcourse:
//            AddGameFragment

class this._cls0
    implements android.view.er
{

    final AddGameFragment this$0;

    public void onClick(View view)
    {
        if (AddGameFragment.access$200(AddGameFragment.this).courseId == -1L)
        {
            ViewUtils.showDialog(getActivity(), com.biznessapps.layout.lect_course);
            return;
        }
        try
        {
            view = GolfDatabase.getInstance().addCourse(AddGameFragment.access$200(AddGameFragment.this).getCourse());
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            view.printStackTrace();
            return;
        }
        AddGameFragment.access$200(AddGameFragment.this).courseId = ((Course) (view)).courseId;
        try
        {
            GolfDatabase.getInstance().addGame(AddGameFragment.access$200(AddGameFragment.this));
            getActivity().setResult(-1);
            getActivity().finish();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            return;
        }
    }

    ase()
    {
        this$0 = AddGameFragment.this;
        super();
    }
}
