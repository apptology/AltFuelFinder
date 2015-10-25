// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.entities;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.common.entities:
//            CommonEntity

public class AppInfoEntity extends CommonEntity
{

    private static final long serialVersionUID = 0xc4fd1e6452843078L;
    private boolean forIpadOnly;
    private boolean hasManyImages;
    private List imagesInOrder;
    private List imagesLinkedTabs;
    private List locations;
    private List subTabs;

    public AppInfoEntity()
    {
        locations = new ArrayList();
    }

    public List getImagesInOrder()
    {
        return imagesInOrder;
    }

    public List getImagesLinkedTabs()
    {
        return imagesLinkedTabs;
    }

    public List getLocations()
    {
        return locations;
    }

    public List getSubTabs()
    {
        return subTabs;
    }

    public boolean hasManyImages()
    {
        return hasManyImages;
    }

    public boolean isForIpadOnly()
    {
        return forIpadOnly;
    }

    public boolean isHasManyImages()
    {
        return hasManyImages;
    }

    public void setForIpadOnly(boolean flag)
    {
        forIpadOnly = flag;
    }

    public void setHasManyImages(boolean flag)
    {
        hasManyImages = flag;
    }

    public void setImagesInOrder(List list)
    {
        imagesInOrder = list;
    }

    public void setImagesLinkedTabs(List list)
    {
        imagesLinkedTabs = list;
    }

    public void setLocations(List list)
    {
        locations = list;
    }

    public void setSubTabs(List list)
    {
        subTabs = list;
    }
}
