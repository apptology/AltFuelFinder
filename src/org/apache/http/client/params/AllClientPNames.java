// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.params;

import org.apache.http.auth.params.AuthPNames;
import org.apache.http.conn.params.ConnConnectionPNames;
import org.apache.http.conn.params.ConnManagerPNames;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.cookie.params.CookieSpecPNames;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.CoreProtocolPNames;

// Referenced classes of package org.apache.http.client.params:
//            ClientPNames

public interface AllClientPNames
    extends CoreConnectionPNames, CoreProtocolPNames, ClientPNames, AuthPNames, CookieSpecPNames, ConnConnectionPNames, ConnManagerPNames, ConnRoutePNames
{
}
