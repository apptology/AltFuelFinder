// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.messages;

import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.storage.StorageKeeper;

// Referenced classes of package com.biznessapps.messages:
//            MessageListFragment, MessageEntity

class this._cls0
    implements ssageItemListener
{

    final MessageListFragment this$0;

    public void onRemoveItemClicked(MessageEntity messageentity, int i)
    {
        StorageKeeper.instance().removeMessage(messageentity);
        MessageListFragment.access$200(MessageListFragment.this);
    }

    public void onShareIconClicked(MessageEntity messageentity, int i)
    {
        ShareComponent.showSharingOptionDialog(getHoldActivity());
    }

    ()
    {
        this$0 = MessageListFragment.this;
        super();
    }
}
