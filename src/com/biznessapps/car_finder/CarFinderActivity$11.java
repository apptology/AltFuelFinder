// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import com.biznessapps.utils.ViewUtils;
import java.io.File;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

class this._cls0
    implements Runnable
{

    final CarFinderActivity this$0;

    public void run()
    {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if ("mounted".equals(Environment.getExternalStorageState()))
        {
            CarFinderActivity.access$1502(CarFinderActivity.this, new File(Environment.getExternalStorageDirectory(), "email_photo_image.jpg"));
            intent.putExtra("output", Uri.fromFile(CarFinderActivity.access$1500(CarFinderActivity.this)));
            startActivityForResult(intent, 2);
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.d));
            return;
        }
    }

    ()
    {
        this$0 = CarFinderActivity.this;
        super();
    }
}
