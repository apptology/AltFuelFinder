// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn;

import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;

// Referenced classes of package org.apache.http.impl.conn:
//            SingleClientConnManager

class val.state
    implements ClientConnectionRequest
{

    final SingleClientConnManager this$0;
    final HttpRoute val$route;
    final Object val$state;

    public void abortRequest()
    {
    }

    public ManagedClientConnection getConnection(long l, TimeUnit timeunit)
    {
        return SingleClientConnManager.this.getConnection(val$route, val$state);
    }

    _cls9()
    {
        this$0 = final_singleclientconnmanager;
        val$route = httproute;
        val$state = Object.this;
        super();
    }
}
