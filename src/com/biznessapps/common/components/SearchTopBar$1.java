// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.components:
//            SearchTopBar

class val.context
    implements android.view.tener
{

    final SearchTopBar this$0;
    final Context val$context;

    public void onClick(View view)
    {
        SearchTopBar.access$000(SearchTopBar.this).setVisibility(0);
        SearchTopBar.access$100(SearchTopBar.this).setVisibility(0);
        SearchTopBar.access$200(SearchTopBar.this).setVisibility(8);
        SearchTopBar.access$300(SearchTopBar.this).setVisibility(8);
        SearchTopBar.access$000(SearchTopBar.this).requestFocus();
        ViewUtils.showKeyboard(val$context, SearchTopBar.access$000(SearchTopBar.this));
    }

    ()
    {
        this$0 = final_searchtopbar;
        val$context = Context.this;
        super();
    }
}
