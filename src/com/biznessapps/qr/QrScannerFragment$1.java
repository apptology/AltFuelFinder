// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.qr;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.StringUtils;

// Referenced classes of package com.biznessapps.qr:
//            QrScannerFragment

class this._cls0
    implements android.widget.ickListener
{

    final QrScannerFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (CommonListEntity)adapterview.getAdapter().getItem(i);
        if (StringUtils.isNotEmpty(adapterview.getTitle()))
        {
            QrScannerFragment.access$000(QrScannerFragment.this, adapterview.getTitle());
        }
    }

    istEntity()
    {
        this$0 = QrScannerFragment.this;
        super();
    }
}
