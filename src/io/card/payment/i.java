// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package io.card.payment;

import android.view.View;

// Referenced classes of package io.card.payment:
//            CardIOActivity, DataEntryActivity

final class i
    implements android.view.View.OnClickListener
{

    private DataEntryActivity a;

    i(DataEntryActivity dataentryactivity)
    {
        a = dataentryactivity;
        super();
    }

    public final void onClick(View view)
    {
        a.setResult(CardIOActivity.RESULT_ENTRY_CANCELED);
        a.finish();
    }
}
