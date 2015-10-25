// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.auth;


// Referenced classes of package org.apache.http.impl.auth:
//            NegotiateScheme

static final class  extends Enum
{

    private static final FAILED $VALUES[];
    public static final FAILED CHALLENGE_RECEIVED;
    public static final FAILED FAILED;
    public static final FAILED TOKEN_GENERATED;
    public static final FAILED UNINITIATED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/apache/http/impl/auth/NegotiateScheme$State, s);
    }

    public static final [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNINITIATED = new <init>("UNINITIATED", 0);
        CHALLENGE_RECEIVED = new <init>("CHALLENGE_RECEIVED", 1);
        TOKEN_GENERATED = new <init>("TOKEN_GENERATED", 2);
        FAILED = new <init>("FAILED", 3);
        $VALUES = (new .VALUES[] {
            UNINITIATED, CHALLENGE_RECEIVED, TOKEN_GENERATED, FAILED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
