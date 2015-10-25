// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;


public interface OnSharingCompletedListener
{

    public abstract void onSharingCanceled();

    public abstract void onSharingCompleted(int i);

    public abstract void onSharingError(int i, String s, String s1);
}
