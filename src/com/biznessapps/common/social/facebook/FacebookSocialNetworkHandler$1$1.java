// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.facebook;

import android.os.Bundle;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.Response;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.common.social.facebook:
//            FacebookSocialNetworkHandler

class this._cls1
    implements com.facebook.kSocialNetworkHandler._cls1._cls1
{

    final is._cls0 this$1;

    public void onCompleted(Response response)
    {
        response = response.getError();
        if (response == null)
        {
            FacebookSocialNetworkHandler.access$100(_fld0).onPublishCompleted(_fld0);
            return;
        } else
        {
            FacebookSocialNetworkHandler.access$200(_fld0).onError(_fld0, response.getErrorType(), response.getErrorMessage());
            return;
        }
    }

    l.text()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1

/* anonymous class */
    class FacebookSocialNetworkHandler._cls1
        implements OnSocialLoginListener
    {

        final FacebookSocialNetworkHandler this$0;
        final String val$text;

        public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
        {
            FacebookSocialNetworkHandler.access$000(FacebookSocialNetworkHandler.this).onError(commonsocialnetworkhandler, s, s1);
        }

        public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
        {
            commonsocialnetworkhandler = new Bundle();
            commonsocialnetworkhandler.putString("message", text);
            FacebookSocialNetworkHandler._cls1._cls1 _lcls1 = new FacebookSocialNetworkHandler._cls1._cls1();
            boolean flag;
            if (FacebookSocialNetworkHandler.access$300(FacebookSocialNetworkHandler.this) != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            (new Request(FacebookSocialNetworkHandler.access$300(FacebookSocialNetworkHandler.this), "me/feed", commonsocialnetworkhandler, HttpMethod.POST, _lcls1)).executeAsync();
        }

            
            {
                this$0 = final_facebooksocialnetworkhandler;
                text = String.this;
                super();
            }
    }

}
