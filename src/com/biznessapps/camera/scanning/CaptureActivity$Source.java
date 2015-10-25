// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;


// Referenced classes of package com.biznessapps.camera.scanning:
//            CaptureActivity

private static final class  extends Enum
{

    private static final NONE $VALUES[];
    public static final NONE NATIVE_APP_INTENT;
    public static final NONE NONE;
    public static final NONE PRODUCT_SEARCH_LINK;
    public static final NONE ZXING_LINK;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/biznessapps/camera/scanning/CaptureActivity$Source, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NATIVE_APP_INTENT = new <init>("NATIVE_APP_INTENT", 0);
        PRODUCT_SEARCH_LINK = new <init>("PRODUCT_SEARCH_LINK", 1);
        ZXING_LINK = new <init>("ZXING_LINK", 2);
        NONE = new <init>("NONE", 3);
        $VALUES = (new .VALUES[] {
            NATIVE_APP_INTENT, PRODUCT_SEARCH_LINK, ZXING_LINK, NONE
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
