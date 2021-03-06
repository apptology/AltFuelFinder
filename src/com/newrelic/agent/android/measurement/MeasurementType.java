// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.newrelic.agent.android.measurement;


public final class MeasurementType extends Enum
{

    private static final MeasurementType $VALUES[];
    public static final MeasurementType Activity;
    public static final MeasurementType Any;
    public static final MeasurementType Custom;
    public static final MeasurementType HttpError;
    public static final MeasurementType Machine;
    public static final MeasurementType Method;
    public static final MeasurementType Network;

    private MeasurementType(String s, int i)
    {
        super(s, i);
    }

    public static MeasurementType valueOf(String s)
    {
        return (MeasurementType)Enum.valueOf(com/newrelic/agent/android/measurement/MeasurementType, s);
    }

    public static MeasurementType[] values()
    {
        return (MeasurementType[])$VALUES.clone();
    }

    static 
    {
        Network = new MeasurementType("Network", 0);
        HttpError = new MeasurementType("HttpError", 1);
        Method = new MeasurementType("Method", 2);
        Activity = new MeasurementType("Activity", 3);
        Custom = new MeasurementType("Custom", 4);
        Any = new MeasurementType("Any", 5);
        Machine = new MeasurementType("Machine", 6);
        $VALUES = (new MeasurementType[] {
            Network, HttpError, Method, Activity, Custom, Any, Machine
        });
    }
}
