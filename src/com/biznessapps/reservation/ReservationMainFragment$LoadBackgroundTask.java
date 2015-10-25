// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.os.AsyncTask;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.utils.json.JsonParser;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationMainFragment, ReservationDataKeeper

private class <init> extends AsyncTask
{

    final ReservationMainFragment this$0;

    protected transient ReservationDataKeeper doInBackground(Void avoid[])
    {
        avoid = DataSource.getInstance().getData(ReservationMainFragment.access$1000(ReservationMainFragment.this));
        return JsonParser.parseReservationCenterData(cacher().getReservSystemCacher(ReservationMainFragment.access$1100(ReservationMainFragment.this)), avoid);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected void onPostExecute(ReservationDataKeeper reservationdatakeeper)
    {
        super.onPostExecute(reservationdatakeeper);
        if (reservationdatakeeper.getNetworkResult().isOk())
        {
            ReservationMainFragment.access$1200(ReservationMainFragment.this);
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((ReservationDataKeeper)obj);
    }

    private ()
    {
        this$0 = ReservationMainFragment.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
