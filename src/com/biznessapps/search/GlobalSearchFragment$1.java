// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.search;

import android.widget.EditText;
import com.biznessapps.common.adapters.SeparatedListAdapter;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.widgets.RefreshableListView;

// Referenced classes of package com.biznessapps.search:
//            GlobalSearchFragment

class this._cls0
    implements Runnable
{

    final GlobalSearchFragment this$0;

    public void run()
    {
        GlobalSearchFragment.access$002(GlobalSearchFragment.this, GlobalSearchFragment.access$100(GlobalSearchFragment.this).getText().toString());
        if (StringUtils.isNotEmpty(GlobalSearchFragment.access$000(GlobalSearchFragment.this)))
        {
            if (GlobalSearchFragment.access$200(GlobalSearchFragment.this).getAdapter() != null)
            {
                ((SeparatedListAdapter)GlobalSearchFragment.access$300(GlobalSearchFragment.this).getAdapter()).clear();
            }
            GlobalSearchFragment.access$400(GlobalSearchFragment.this);
        }
    }

    dapter()
    {
        this$0 = GlobalSearchFragment.this;
        super();
    }
}
