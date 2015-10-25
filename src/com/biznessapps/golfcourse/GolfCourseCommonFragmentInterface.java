// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.os.Bundle;

public interface GolfCourseCommonFragmentInterface
{

    public abstract void finishFragment();

    public abstract void finishFragment(int i, Intent intent);

    public abstract Bundle getFragmentArgments();

    public abstract boolean isAttachedToScoreBoard();

    public abstract void popupFragment(int i);

    public abstract void startFragment(int i, Intent intent);

    public abstract void startFragment(int i, Intent intent, int j);
}
