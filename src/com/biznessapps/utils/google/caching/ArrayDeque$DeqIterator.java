// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ArrayDeque

private class <init>
    implements Iterator
{

    private int cursor;
    private int fence;
    private int lastRet;
    final ArrayDeque this$0;

    public boolean hasNext()
    {
        return cursor != fence;
    }

    public Object next()
    {
        if (cursor == fence)
        {
            throw new NoSuchElementException();
        }
        Object obj = ArrayDeque.access$400(ArrayDeque.this)[cursor];
        if (ArrayDeque.access$300(ArrayDeque.this) != fence || obj == null)
        {
            throw new ConcurrentModificationException();
        } else
        {
            lastRet = cursor;
            cursor = cursor + 1 & ArrayDeque.access$400(ArrayDeque.this).length - 1;
            return obj;
        }
    }

    public void remove()
    {
        if (lastRet < 0)
        {
            throw new IllegalStateException();
        }
        if (ArrayDeque.access$500(ArrayDeque.this, lastRet))
        {
            cursor = cursor - 1 & ArrayDeque.access$400(ArrayDeque.this).length - 1;
            fence = ArrayDeque.access$300(ArrayDeque.this);
        }
        lastRet = -1;
    }

    private A()
    {
        this$0 = ArrayDeque.this;
        super();
        cursor = ArrayDeque.access$200(ArrayDeque.this);
        fence = ArrayDeque.access$300(ArrayDeque.this);
        lastRet = -1;
    }

    lastRet(lastRet lastret)
    {
        this();
    }
}
