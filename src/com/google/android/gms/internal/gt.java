// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.drive.metadata.SortableMetadataField;

public class gt
{
    public static class a extends com.google.android.gms.drive.metadata.internal.b
        implements SortableMetadataField
    {

        public a(String s, int i)
        {
            super(s, i);
        }
    }

    public static class b extends com.google.android.gms.drive.metadata.internal.b
        implements SearchableOrderedMetadataField, SortableMetadataField
    {

        public b(String s, int i)
        {
            super(s, i);
        }
    }

    public static class c extends com.google.android.gms.drive.metadata.internal.b
        implements SortableMetadataField
    {

        public c(String s, int i)
        {
            super(s, i);
        }
    }

    public static class d extends com.google.android.gms.drive.metadata.internal.b
        implements SearchableOrderedMetadataField, SortableMetadataField
    {

        public d(String s, int i)
        {
            super(s, i);
        }
    }

    public static class e extends com.google.android.gms.drive.metadata.internal.b
        implements SearchableOrderedMetadataField, SortableMetadataField
    {

        public e(String s, int i)
        {
            super(s, i);
        }
    }


    public static final a Gs = new a("created", 0x3e8fa0);
    public static final b Gt = new b("lastOpenedTime", 0x419ce0);
    public static final d Gu = new d("modified", 0x3e8fa0);
    public static final c Gv = new c("modifiedByMe", 0x3e8fa0);
    public static final e Gw = new e("sharedWithMe", 0x3e8fa0);

}
