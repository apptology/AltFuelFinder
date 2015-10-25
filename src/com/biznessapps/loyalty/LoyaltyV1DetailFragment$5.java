// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import com.biznessapps.api.AsyncCallback;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1DetailFragment

class this._cls0 extends AsyncCallback
{

    final LoyaltyV1DetailFragment this$0;

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
label0:
        {
            if (getHoldActivity() != null)
            {
                if (!JsonParser.hasDataError(s))
                {
                    break label0;
                }
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.etString));
            }
            return;
        }
        LoyaltyV1DetailFragment.access$800(LoyaltyV1DetailFragment.this);
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.ed));
    }

    ()
    {
        this$0 = LoyaltyV1DetailFragment.this;
        super();
    }
}
