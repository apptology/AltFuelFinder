// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn;

import java.io.IOException;
import org.apache.http.conn.OperatedClientConnection;

// Referenced classes of package org.apache.http.impl.conn:
//            AbstractPoolEntry, SingleClientConnManager

protected class or extends AbstractPoolEntry
{

    final SingleClientConnManager this$0;

    protected void close()
        throws IOException
    {
        shutdownEntry();
        if (connection.isOpen())
        {
            connection.close();
        }
    }

    protected void shutdown()
        throws IOException
    {
        shutdownEntry();
        if (connection.isOpen())
        {
            connection.shutdown();
        }
    }

    protected A()
    {
        this$0 = SingleClientConnManager.this;
        super(connOperator, null);
    }
}
