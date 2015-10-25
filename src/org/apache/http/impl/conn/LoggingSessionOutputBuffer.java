// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.conn;

import java.io.IOException;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.impl.conn:
//            Wire

public class LoggingSessionOutputBuffer
    implements SessionOutputBuffer
{

    private final String charset;
    private final SessionOutputBuffer out;
    private final Wire wire;

    public LoggingSessionOutputBuffer(SessionOutputBuffer sessionoutputbuffer, Wire wire1)
    {
        this(sessionoutputbuffer, wire1, null);
    }

    public LoggingSessionOutputBuffer(SessionOutputBuffer sessionoutputbuffer, Wire wire1, String s)
    {
        out = sessionoutputbuffer;
        wire = wire1;
        if (s == null)
        {
            s = "ASCII";
        }
        charset = s;
    }

    public void flush()
        throws IOException
    {
        out.flush();
    }

    public HttpTransportMetrics getMetrics()
    {
        return out.getMetrics();
    }

    public void write(int i)
        throws IOException
    {
        out.write(i);
        if (wire.enabled())
        {
            wire.output(i);
        }
    }

    public void write(byte abyte0[])
        throws IOException
    {
        out.write(abyte0);
        if (wire.enabled())
        {
            wire.output(abyte0);
        }
    }

    public void write(byte abyte0[], int i, int j)
        throws IOException
    {
        out.write(abyte0, i, j);
        if (wire.enabled())
        {
            wire.output(abyte0, i, j);
        }
    }

    public void writeLine(String s)
        throws IOException
    {
        out.writeLine(s);
        if (wire.enabled())
        {
            s = (new StringBuilder()).append(s).append("\r\n").toString();
            wire.output(s.getBytes(charset));
        }
    }

    public void writeLine(CharArrayBuffer chararraybuffer)
        throws IOException
    {
        out.writeLine(chararraybuffer);
        if (wire.enabled())
        {
            chararraybuffer = new String(chararraybuffer.buffer(), 0, chararraybuffer.length());
            chararraybuffer = (new StringBuilder()).append(chararraybuffer).append("\r\n").toString();
            wire.output(chararraybuffer.getBytes(charset));
        }
    }
}
