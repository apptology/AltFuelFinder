// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;


// Referenced classes of package com.google.zxing.client.result:
//            ParsedResult, ParsedResultType

public final class VINParsedResult extends ParsedResult
{

    private final String countryCode;
    private final int modelYear;
    private final char plantCode;
    private final String sequentialNumber;
    private final String vehicleAttributes;
    private final String vehicleDescriptorSection;
    private final String vehicleIdentifierSection;
    private final String vin;
    private final String worldManufacturerID;

    public VINParsedResult(String s, String s1, String s2, String s3, String s4, String s5, int i, 
            char c, String s6)
    {
        super(ParsedResultType.VIN);
        vin = s;
        worldManufacturerID = s1;
        vehicleDescriptorSection = s2;
        vehicleIdentifierSection = s3;
        countryCode = s4;
        vehicleAttributes = s5;
        modelYear = i;
        plantCode = c;
        sequentialNumber = s6;
    }

    public String getCountryCode()
    {
        return countryCode;
    }

    public String getDisplayResult()
    {
        StringBuilder stringbuilder = new StringBuilder(50);
        stringbuilder.append(worldManufacturerID).append(' ');
        stringbuilder.append(vehicleDescriptorSection).append(' ');
        stringbuilder.append(vehicleIdentifierSection).append('\n');
        if (countryCode != null)
        {
            stringbuilder.append(countryCode).append(' ');
        }
        stringbuilder.append(modelYear).append(' ');
        stringbuilder.append(plantCode).append(' ');
        stringbuilder.append(sequentialNumber).append('\n');
        return stringbuilder.toString();
    }

    public int getModelYear()
    {
        return modelYear;
    }

    public char getPlantCode()
    {
        return plantCode;
    }

    public String getSequentialNumber()
    {
        return sequentialNumber;
    }

    public String getVIN()
    {
        return vin;
    }

    public String getVehicleAttributes()
    {
        return vehicleAttributes;
    }

    public String getVehicleDescriptorSection()
    {
        return vehicleDescriptorSection;
    }

    public String getVehicleIdentifierSection()
    {
        return vehicleIdentifierSection;
    }

    public String getWorldManufacturerID()
    {
        return worldManufacturerID;
    }
}
