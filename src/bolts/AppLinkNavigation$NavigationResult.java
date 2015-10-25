// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;


// Referenced classes of package bolts:
//            AppLinkNavigation

public static final class  extends Enum
{

    private static final APP $VALUES[];
    public static final APP APP;
    public static final APP FAILED;
    public static final APP WEB;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(bolts/AppLinkNavigation$NavigationResult, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        FAILED = new <init>("FAILED", 0);
        WEB = new <init>("WEB", 1);
        APP = new <init>("APP", 2);
        $VALUES = (new .VALUES[] {
            FAILED, WEB, APP
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
