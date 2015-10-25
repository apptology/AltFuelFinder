// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.messages;

import java.util.Comparator;
import java.util.Date;

// Referenced classes of package com.biznessapps.messages:
//            MessageListFragment, MessageEntity

private class <init>
    implements Comparator
{

    final MessageListFragment this$0;

    public int compare(MessageEntity messageentity, MessageEntity messageentity1)
    {
        if (messageentity == null && messageentity1 == null && messageentity.getDate() == null && messageentity1.getDate() == null)
        {
            return 0;
        }
        if (messageentity == null || messageentity.getDate() == null)
        {
            return 1;
        }
        if (messageentity1 == null || messageentity1.getDate() == null)
        {
            return -1;
        } else
        {
            return messageentity1.getDate().compareTo(messageentity.getDate());
        }
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((MessageEntity)obj, (MessageEntity)obj1);
    }

    private ()
    {
        this$0 = MessageListFragment.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
