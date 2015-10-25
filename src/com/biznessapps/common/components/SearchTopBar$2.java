// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.content.Context;
import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.components:
//            SearchTopBar

class archDataRunnable
    implements Runnable
{

    final SearchTopBar this$0;
    final Context val$context;
    final archDataRunnable val$loadDataRunnable;

    public void run()
    {
        String s = SearchTopBar.access$000(SearchTopBar.this).getText().toString();
        ViewUtils.closeKeyboard(val$context, SearchTopBar.access$000(SearchTopBar.this));
        val$loadDataRunnable.setSearchQuery(s);
        val$loadDataRunnable.run();
    }

    archDataRunnable()
    {
        this$0 = final_searchtopbar;
        val$context = context1;
        val$loadDataRunnable = archDataRunnable.this;
        super();
    }
}
