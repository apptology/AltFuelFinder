// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import android.os.AsyncTask;
import com.biznessapps.api.DataSource;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeDetailFragment

private class <init> extends AsyncTask
{

    final YoutubeDetailFragment this$0;

    protected transient Boolean doInBackground(Void avoid[])
    {
        return Boolean.valueOf(JsonParser.isAllowedCommenting(DataSource.getInstance().getData(String.format("youtube_check_comment.php?id=%s", new Object[] {
            YoutubeDetailFragment.access$900(YoutubeDetailFragment.this)
        }))));
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected void onPostExecute(Boolean boolean1)
    {
        com.biznessapps.common.activities.CommonFragmentActivity commonfragmentactivity;
label0:
        {
            super.onPostExecute(boolean1);
            commonfragmentactivity = getHoldActivity();
            if (commonfragmentactivity != null)
            {
                if (!boolean1.booleanValue())
                {
                    break label0;
                }
                YoutubeDetailFragment.access$402(YoutubeDetailFragment.this, true);
                YoutubeDetailFragment.access$500(YoutubeDetailFragment.this);
            }
            return;
        }
        ViewUtils.showShortToast(commonfragmentactivity, com.biznessapps.layout..this._fld0);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Boolean)obj);
    }

    private ()
    {
        this$0 = YoutubeDetailFragment.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
