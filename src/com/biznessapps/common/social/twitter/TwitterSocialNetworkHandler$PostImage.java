// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.biznessapps.common.social.OnSocialPublishListener;
import java.io.File;
import junit.framework.Assert;
import twitter4j.StatusUpdate;
import twitter4j.Twitter;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterSocialNetworkHandler

final class mListener extends AsyncTask
{

    private OnSocialPublishListener mListener;
    final TwitterSocialNetworkHandler this$0;

    protected transient Boolean doInBackground(final String e[])
    {
        Object obj;
        boolean flag;
        if (TwitterSocialNetworkHandler.access$000(TwitterSocialNetworkHandler.this) && twitter != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        obj = e[0];
        e = e[1];
        try
        {
            obj = new StatusUpdate(((String) (obj)));
            ((StatusUpdate) (obj)).setMedia(new File(e));
            twitter.updateStatus(((StatusUpdate) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (final String e[])
        {
            Log.d("TAG", (new StringBuilder()).append("Pic Upload error").append(e.getMessage()).toString());
            ((Activity)TwitterSocialNetworkHandler.access$1000(TwitterSocialNetworkHandler.this)).runOnUiThread(new Runnable() {

                final TwitterSocialNetworkHandler.PostImage this$1;
                final Exception val$e;

                public void run()
                {
                    mListener.onError(this$0, e.getMessage(), e.getMessage());
                }

            
            {
                this$1 = TwitterSocialNetworkHandler.PostImage.this;
                e = exception;
                super();
            }
            });
        }
        return Boolean.valueOf(true);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Boolean boolean1)
    {
        if (mListener != null)
        {
            mListener.onPublishCompleted(TwitterSocialNetworkHandler.this);
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Boolean)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
    }


    public _cls1.val.e(OnSocialPublishListener onsocialpublishlistener)
    {
        this$0 = TwitterSocialNetworkHandler.this;
        super();
        mListener = onsocialpublishlistener;
    }
}
