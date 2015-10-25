// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.auth;

import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.params.HttpParams;

// Referenced classes of package org.apache.http.impl.auth:
//            NTLMScheme, NTLMEngineImpl

public class NTLMSchemeFactory
    implements AuthSchemeFactory
{

    public NTLMSchemeFactory()
    {
    }

    public AuthScheme newInstance(HttpParams httpparams)
    {
        return new NTLMScheme(new NTLMEngineImpl());
    }
}
