// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.qr;

import android.app.Activity;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.qr:
//            QRScannerHelpAdapter

public class QrScannerHelpFragment extends CommonListFragment
{

    public QrScannerHelpFragment()
    {
    }

    private void plugListView(Activity activity)
    {
        if (!items.isEmpty())
        {
            activity = new QRScannerHelpAdapter(activity.getApplicationContext(), items, settings);
            listView.setAdapter(activity);
        }
    }

    protected boolean canUseCachedData()
    {
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        int i = settings.getOddRowColorTransparent();
        int j = settings.getOddRowTextColor();
        int k = settings.getEvenRowColorTransparent();
        int l = settings.getEvenRowTextColor();
        items = new ArrayList();
        items.add(getWrappedItem(new CommonListEntity(i, j, getString(com.biznessapps.layout.R.string.scan_qr_steps1)), items));
        items.add(getWrappedItem(new CommonListEntity(k, l, getString(com.biznessapps.layout.R.string.scan_qr_steps2)), items));
        items.add(getWrappedItem(new CommonListEntity(i, j, getString(com.biznessapps.layout.R.string.scan_qr_steps3)), items));
        items.add(getWrappedItem(new CommonListEntity(k, l, getString(com.biznessapps.layout.R.string.scan_qr_steps4)), items));
        items.add(getWrappedItem(new CommonListEntity(i, j, getString(com.biznessapps.layout.R.string.scan_qr_steps5)), items));
        plugListView(activity);
    }
}
