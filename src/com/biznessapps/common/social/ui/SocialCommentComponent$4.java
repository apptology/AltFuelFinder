// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import com.biznessapps.api.AsyncCallback;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.social.SocialFragment;

// Referenced classes of package com.biznessapps.common.social.ui:
//            SocialCommentComponent

class this._cls0 extends AsyncCallback
{

    final SocialCommentComponent this$0;

    public void onError(String s, Throwable throwable)
    {
        SocialCommentComponent.access$900(SocialCommentComponent.this, com.biznessapps.layout.mponent);
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        if (SocialCommentComponent.access$800(SocialCommentComponent.this) != null)
        {
            s = (CommentEntity)getMeta();
            s.setTimeStamp(System.currentTimeMillis() / 1000L);
            SocialFragment.addComment(s);
            SocialCommentComponent.access$900(SocialCommentComponent.this, com.biznessapps.layout.ted);
            loadCommentsData();
            if (SocialCommentComponent.access$1000(SocialCommentComponent.this) != null)
            {
                SocialCommentComponent.access$1000(SocialCommentComponent.this).onCommentAdded();
            }
        }
    }

    mmentActionListener()
    {
        this$0 = SocialCommentComponent.this;
        super();
    }
}
