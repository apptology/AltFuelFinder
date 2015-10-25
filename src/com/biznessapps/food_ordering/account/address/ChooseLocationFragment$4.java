// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import com.biznessapps.common.entities.MapEntity;
import com.google.android.gms.maps.model.Marker;
import java.util.Map;

// Referenced classes of package com.biznessapps.food_ordering.account.address:
//            ChooseLocationFragment

class this._cls0
    implements com.google.android.gms.maps.ckListener
{

    final ChooseLocationFragment this$0;

    public void onInfoWindowClick(Marker marker)
    {
        marker = (MapEntity)ChooseLocationFragment.access$600(ChooseLocationFragment.this).get(marker);
        ChooseLocationFragment.access$700(ChooseLocationFragment.this, marker);
    }

    ()
    {
        this$0 = ChooseLocationFragment.this;
        super();
    }
}
