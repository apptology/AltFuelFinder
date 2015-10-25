// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

// Referenced classes of package org.apache.http.client.entity:
//            DecompressingEntity

public class GzipDecompressingEntity extends DecompressingEntity
{

    public GzipDecompressingEntity(HttpEntity httpentity)
    {
        super(httpentity);
    }

    public Header getContentEncoding()
    {
        return null;
    }

    public long getContentLength()
    {
        return -1L;
    }

    InputStream getDecompressingInputStream(InputStream inputstream)
        throws IOException
    {
        return new GZIPInputStream(inputstream);
    }
}
