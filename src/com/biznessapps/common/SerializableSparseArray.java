// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common;

import android.util.SparseArray;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class SerializableSparseArray extends SparseArray
    implements Serializable
{

    private static final long serialVersionUID = 0xb6fa29ec742fa30L;

    public SerializableSparseArray()
    {
    }

    public SerializableSparseArray(int i)
    {
        super(i);
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream = ((ObjectInputStream) ((Object[])(Object[])objectinputstream.readObject()));
        for (int i = objectinputstream.length - 1; i >= 0; i--)
        {
            Object aobj[] = (Object[])(Object[])objectinputstream[i];
            append(((Integer)aobj[0]).intValue(), aobj[1]);
        }

    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        Object aobj[] = new Object[size()];
        for (int i = aobj.length - 1; i >= 0; i--)
        {
            aobj[i] = ((Object) (new Object[] {
                Integer.valueOf(keyAt(i)), valueAt(i)
            }));
        }

        objectoutputstream.writeObject(((Object) (aobj)));
    }
}
