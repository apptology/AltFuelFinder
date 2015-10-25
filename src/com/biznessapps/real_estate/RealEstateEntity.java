// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.utils.StringUtils;
import java.util.List;

public class RealEstateEntity extends MapEntity
{

    public static final int OWN = 0;
    public static final int RENTALS = 1;
    private static final long serialVersionUID = 0xdc5b2beb9292a5beL;
    private String agent;
    private List appliances;
    private String architecturalStyle;
    private String basement;
    private String baths;
    private String beds;
    private List buildingAmenities;
    private List coolingTypes;
    private String email;
    private List exterior;
    private List floorCovering;
    private List gallery;
    private List heatingFuel;
    private List heatingTypes;
    private String houseUnit;
    private List indoorFeature;
    private boolean isShowAll;
    private String lotSize;
    private String lotUnit;
    private List outdoorAmenities;
    private List parking;
    private String phoneNumber;
    private String price;
    private String priceUnit;
    private int rent;
    private List roof;
    private List rooms;
    private String sqft;
    private String status;
    private String style;
    private List view;
    private int yearBuild;
    private int yearUpdated;

    public RealEstateEntity()
    {
        isShowAll = false;
    }

    public String getAddressInfo()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (StringUtils.isNotEmpty(addressTopRow))
        {
            stringbuilder.append(addressTopRow);
        }
        if (StringUtils.isNotEmpty(addressBottomRow))
        {
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(addressBottomRow);
        }
        if (stringbuilder.length() == 0)
        {
            stringbuilder.append(getAddress1());
        }
        return stringbuilder.toString();
    }

    public String getAgent()
    {
        return agent;
    }

    public List getAppliances()
    {
        return appliances;
    }

    public String getArchitecturalStyle()
    {
        return architecturalStyle;
    }

    public String getBasement()
    {
        return basement;
    }

    public String getBaths()
    {
        return baths;
    }

    public String getBeds()
    {
        return beds;
    }

    public List getBuildingAmenities()
    {
        return buildingAmenities;
    }

    public List getCoolingTypes()
    {
        return coolingTypes;
    }

    public String getEmail()
    {
        return email;
    }

    public List getExterior()
    {
        return exterior;
    }

    public List getFloorCovering()
    {
        return floorCovering;
    }

    public List getGallery()
    {
        return gallery;
    }

    public List getHeatingFuel()
    {
        return heatingFuel;
    }

    public List getHeatingTypes()
    {
        return heatingTypes;
    }

    public String getHouseUnit()
    {
        return houseUnit;
    }

    public List getIndoorFeature()
    {
        return indoorFeature;
    }

    public String getLotSize()
    {
        return lotSize;
    }

    public String getLotUnit()
    {
        return lotUnit;
    }

    public List getOutdoorAmenities()
    {
        return outdoorAmenities;
    }

    public List getParking()
    {
        return parking;
    }

    public String getPhoneNumber()
    {
        return phoneNumber;
    }

    public String getPrice()
    {
        return price;
    }

    public String getPriceUnit()
    {
        return priceUnit;
    }

    public int getRent()
    {
        return rent;
    }

    public List getRoof()
    {
        return roof;
    }

    public List getRooms()
    {
        return rooms;
    }

    public String getSqft()
    {
        return sqft;
    }

    public String getStatus()
    {
        return status;
    }

    public String getStyle()
    {
        return style;
    }

    public List getView()
    {
        return view;
    }

    public int getYearBuild()
    {
        return yearBuild;
    }

    public int getYearUpdated()
    {
        return yearUpdated;
    }

    public boolean hasAdditionInfo()
    {
        return view != null || roof != null || parking != null || outdoorAmenities != null || exterior != null || buildingAmenities != null || rooms != null || indoorFeature != null || heatingFuel != null || heatingTypes != null || floorCovering != null || coolingTypes != null || appliances != null || StringUtils.isNotEmpty(architecturalStyle) || StringUtils.isNotEmpty(basement);
    }

    public boolean isShowAll()
    {
        return isShowAll;
    }

    public void setAgent(String s)
    {
        agent = s;
    }

    public void setAppliances(List list)
    {
        appliances = list;
    }

    public void setArchitecturalStyle(String s)
    {
        architecturalStyle = s;
    }

    public void setBasement(String s)
    {
        basement = s;
    }

    public void setBaths(String s)
    {
        baths = s;
    }

    public void setBeds(String s)
    {
        beds = s;
    }

    public void setBuildingAmenities(List list)
    {
        buildingAmenities = list;
    }

    public void setCoolingTypes(List list)
    {
        coolingTypes = list;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setExterior(List list)
    {
        exterior = list;
    }

    public void setFloorCovering(List list)
    {
        floorCovering = list;
    }

    public void setGallery(List list)
    {
        gallery = list;
    }

    public void setHeatingFuel(List list)
    {
        heatingFuel = list;
    }

    public void setHeatingTypes(List list)
    {
        heatingTypes = list;
    }

    public void setHouseUnit(String s)
    {
        houseUnit = s;
    }

    public void setIndoorFeature(List list)
    {
        indoorFeature = list;
    }

    public void setLotSize(String s)
    {
        lotSize = s;
    }

    public void setLotUnit(String s)
    {
        lotUnit = s;
    }

    public void setOutdoorAmenities(List list)
    {
        outdoorAmenities = list;
    }

    public void setParking(List list)
    {
        parking = list;
    }

    public void setPhoneNumber(String s)
    {
        phoneNumber = s;
    }

    public void setPrice(String s)
    {
        price = s;
    }

    public void setPriceUnit(String s)
    {
        priceUnit = s;
    }

    public void setRent(int i)
    {
        rent = i;
    }

    public void setRoof(List list)
    {
        roof = list;
    }

    public void setRooms(List list)
    {
        rooms = list;
    }

    public void setShowAll(boolean flag)
    {
        isShowAll = flag;
    }

    public void setSqft(String s)
    {
        sqft = s;
    }

    public void setStatus(String s)
    {
        status = s;
    }

    public void setStyle(String s)
    {
        style = s;
    }

    public void setView(List list)
    {
        view = list;
    }

    public void setYearBuild(int i)
    {
        yearBuild = i;
    }

    public void setYearUpdated(int i)
    {
        yearUpdated = i;
    }
}
