// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.email_photo;

import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import com.biznessapps.utils.ViewUtils;
import java.io.File;

// Referenced classes of package com.biznessapps.email_photo:
//            EmailPhotoFragment

class this._cls0
    implements Runnable
{

    final EmailPhotoFragment this$0;

    public void run()
    {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if ("mounted".equals(Environment.getExternalStorageState()))
        {
            EmailPhotoFragment.access$102(EmailPhotoFragment.this, String.format("email_photo_image%s.jpg", new Object[] {
                Long.valueOf(System.currentTimeMillis())
            }));
            EmailPhotoFragment.access$202(EmailPhotoFragment.this, new File(Environment.getExternalStorageDirectory(), EmailPhotoFragment.access$100(EmailPhotoFragment.this)));
            intent.putExtra("output", Uri.fromFile(EmailPhotoFragment.access$200(EmailPhotoFragment.this)));
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
        this$0 = EmailPhotoFragment.this;
        super();
    }
}
