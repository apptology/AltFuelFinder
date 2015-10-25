// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;

// Referenced classes of package com.biznessapps.golfcourse:
//            ScoreBoardActivity, GolfCourseCommonFragmentInterface

class intent
{

    GolfCourseCommonFragmentInterface fragment;
    int fragmentId;
    Intent intent;
    int requestCode;
    final ScoreBoardActivity this$0;

    public (int i, GolfCourseCommonFragmentInterface golfcoursecommonfragmentinterface, int j, Intent intent1)
    {
        this$0 = ScoreBoardActivity.this;
        super();
        requestCode = -1;
        fragmentId = i;
        fragment = golfcoursecommonfragmentinterface;
        requestCode = j;
        intent = intent1;
    }
}
