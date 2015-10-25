// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fragments.single;


// Referenced classes of package com.biznessapps.fragments.single:
//            PreviewAppFragment

class this._cls0
    implements com.biznessapps.localization.ationListener
{

    final PreviewAppFragment this$0;

    public void onLanguageChanged()
    {
        android.support.v4.app.FragmentActivity fragmentactivity = getActivity();
        if (PreviewAppFragment.access$000(PreviewAppFragment.this) != null && fragmentactivity != null)
        {
            initViews(PreviewAppFragment.access$100(PreviewAppFragment.this));
        }
    }

    nListener()
    {
        this$0 = PreviewAppFragment.this;
        super();
    }
}
