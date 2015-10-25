// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;
import com.biznessapps.common.components.WheelDelegate;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.golfcourse:
//            EditPlayerFragment, EditPlayerListItem

class this._cls0
    implements android.view.tener
{

    final EditPlayerFragment this$0;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            EditPlayerListItem editplayerlistitem = (EditPlayerListItem)view.getTag();
            if (editplayerlistitem.isPickable)
            {
                ViewUtils.showKeyboard(getActivity(), view, false);
                editplayerlistitem.picker.show();
                if (EditPlayerFragment.access$000(EditPlayerFragment.this) != null && EditPlayerFragment.access$000(EditPlayerFragment.this) != editplayerlistitem.picker)
                {
                    EditPlayerFragment.access$000(EditPlayerFragment.this).hide();
                }
                EditPlayerFragment.access$002(EditPlayerFragment.this, editplayerlistitem.picker);
            } else
            if (EditPlayerFragment.access$000(EditPlayerFragment.this) != null)
            {
                EditPlayerFragment.access$000(EditPlayerFragment.this).hide();
                EditPlayerFragment.access$002(EditPlayerFragment.this, null);
                return;
            }
        }
    }

    ()
    {
        this$0 = EditPlayerFragment.this;
        super();
    }
}
