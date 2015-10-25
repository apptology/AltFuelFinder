// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.os.AsyncTask;
import com.biznessapps.common.social.OnSocialPublishListener;
import junit.framework.Assert;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.conf.ConfigurationBuilder;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterSocialNetworkHandler

final class mListener extends AsyncTask
{

    private TwitterException mException;
    private OnSocialPublishListener mListener;
    final TwitterSocialNetworkHandler this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient String doInBackground(String as[])
    {
        ConfigurationBuilder configurationbuilder;
        boolean flag;
        if (TwitterSocialNetworkHandler.access$000(TwitterSocialNetworkHandler.this) && twitter != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        as = as[0];
        configurationbuilder = new ConfigurationBuilder();
        configurationbuilder.setOAuthConsumerKey(TWITTER_CONSUMER_KEY);
        configurationbuilder.setOAuthConsumerSecret(TWITTER_CONSUMER_SECRET);
        try
        {
            as = twitter.updateStatus(as).toString();
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            as.printStackTrace();
            mException = as;
            return null;
        }
        return as;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
label0:
        {
            if (mListener != null)
            {
                if (s == null)
                {
                    break label0;
                }
                mListener.onPublishCompleted(TwitterSocialNetworkHandler.this);
            }
            return;
        }
        mListener.onError(TwitterSocialNetworkHandler.this, String.valueOf(mException.getErrorCode()), mException.getErrorMessage());
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
    }

    public Q(OnSocialPublishListener onsocialpublishlistener)
    {
        this$0 = TwitterSocialNetworkHandler.this;
        super();
        mListener = onsocialpublishlistener;
    }
}
