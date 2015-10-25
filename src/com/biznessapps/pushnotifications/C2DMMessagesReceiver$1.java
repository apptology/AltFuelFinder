// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.pushnotifications;

import android.content.Context;
import android.os.AsyncTask;
import com.biznessapps.api.DataSource;
import com.biznessapps.messages.MessageEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;

// Referenced classes of package com.biznessapps.pushnotifications:
//            C2DMMessagesReceiver

class val.context extends AsyncTask
{

    final C2DMMessagesReceiver this$0;
    final Context val$context;
    final int val$detailsIndex;
    final String val$detailsText;
    final String val$id;
    final String val$message;

    protected transient MessageEntity doInBackground(Void avoid[])
    {
        avoid = (new StringBuilder()).append("push_message_details.php?push_id=").append(val$id).toString();
        return JsonParser.parseRichNotification(DataSource.getInstance().getData(avoid));
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected void onPostExecute(MessageEntity messageentity)
    {
        super.onPostExecute(messageentity);
        String s = val$message.substring(0, val$detailsIndex);
        messageentity.setTitle(s);
        if (val$detailsText.indexOf("gf=1") >= 0 && StringUtils.isNotEmpty(messageentity.getPaths()))
        {
            messageentity.setGeoFencingEnabled(true);
            C2DMMessagesReceiver.access$000(C2DMMessagesReceiver.this, val$context, s, messageentity);
            return;
        }
        if (val$detailsText.indexOf("la") != -1)
        {
            C2DMMessagesReceiver.access$100(C2DMMessagesReceiver.this, val$context, val$message, s, messageentity);
            return;
        } else
        {
            C2DMMessagesReceiver.access$200(C2DMMessagesReceiver.this, val$context, s, messageentity);
            return;
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((MessageEntity)obj);
    }

    ()
    {
        this$0 = final_c2dmmessagesreceiver;
        val$id = s;
        val$message = s1;
        val$detailsIndex = i;
        val$detailsText = s2;
        val$context = Context.this;
        super();
    }
}
