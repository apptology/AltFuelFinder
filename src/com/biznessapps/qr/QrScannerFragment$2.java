// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.qr;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListView;
import com.biznessapps.common.entities.CommonListEntity;

// Referenced classes of package com.biznessapps.qr:
//            QrScannerFragment, QRCodeEntity

class this._cls0
    implements android.widget.ngClickListener
{

    final QrScannerFragment this$0;

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (CommonListEntity)adapterview.getAdapter().getItem(i);
        QrScannerFragment.access$102(QrScannerFragment.this, (QRCodeEntity)adapterview.getObject());
        QrScannerFragment.access$200(QrScannerFragment.this).showContextMenu();
        return true;
    }

    istEntity()
    {
        this$0 = QrScannerFragment.this;
        super();
    }
}
