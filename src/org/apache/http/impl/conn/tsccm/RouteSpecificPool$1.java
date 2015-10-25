// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn.tsccm;

import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;

// Referenced classes of package org.apache.http.impl.conn.tsccm:
//            RouteSpecificPool

class this._cls0
    implements ConnPerRoute
{

    final RouteSpecificPool this$0;

    public int getMaxForRoute(HttpRoute httproute)
    {
        return maxEntries;
    }

    _cls9()
    {
        this$0 = RouteSpecificPool.this;
        super();
    }
}
