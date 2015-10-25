// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Html;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.navigation.NavigationManager;
import com.biznessapps.more.Tab;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1Entity

public class LoyaltyHandler
{

    private static final String PREFS_KEY_LOYALTY_V5_DATA_PUBLISHED = "LOYALTY_V5_DATA_PUBLISHED";
    private static LoyaltyHandler instance;
    private Context mContext;

    private LoyaltyHandler(Context context)
    {
        setContext(context);
    }

    public static LoyaltyHandler getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new LoyaltyHandler(context);
        }
        instance.setContext(context);
        return instance;
    }

    public String getOldLoyaltyDataTillV5()
    {
        if (AppCore.getInstance().getCachingManager().getFromSharedPreferences(mContext, "LOYALTY_V5_DATA_PUBLISHED", 0) == 0)
        {
            LoyaltyV1Entity aloyaltyv1entity[] = StorageKeeper.instance().getAllLoyaltyItems();
            JSONObject jsonobject = new JSONObject();
            int j = aloyaltyv1entity.length;
            int i = 0;
            while (i < j) 
            {
                LoyaltyV1Entity loyaltyv1entity = aloyaltyv1entity[i];
                try
                {
                    jsonobject.put(loyaltyv1entity.getId(), String.valueOf(loyaltyv1entity.getApprovedCount()));
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                }
                i++;
            }
            String s = jsonobject.toString();
            AppCore.getInstance().getCachingManager().saveInSharedPreferences(mContext, 1, "LOYALTY_V5_DATA_PUBLISHED");
            return s;
        } else
        {
            return null;
        }
    }

    public void handleLoyalityAwarded(String s)
    {
        if (!StringUtils.isNotEmpty(s))
        {
            break MISSING_BLOCK_LABEL_189;
        }
        final String tabId;
        JSONObject jsonobject;
        jsonobject = new JSONObject(s);
        if (!StringUtils.isNotEmpty(JsonParser.getStringValue(jsonobject, "download_loyalty_awarded")))
        {
            break MISSING_BLOCK_LABEL_189;
        }
        tabId = JsonParser.getStringValue(jsonobject, "download_loyalty_awarded_tab_id");
        boolean flag = false;
        final android.app.AlertDialog.Builder alertBuilder;
        String s1;
        final int loyaltyId;
        try
        {
            s = NavigationManager.getTabsItems().iterator();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        loyaltyId = ((flag) ? 1 : 0);
        if (!s.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!((Tab)s.next()).getTabId().equalsIgnoreCase(tabId))
        {
            continue; /* Loop/switch isn't completed */
        }
        loyaltyId = 1;
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_50;
_L1:
        if (!loyaltyId)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        s1 = mContext.getString(com.biznessapps.layout.R.string.you_were_awarded_a_stamp_title);
        alertBuilder = JsonParser.getStringValue(jsonobject, "download_loyalty_awarded_body");
        s = alertBuilder;
        if (StringUtils.isEmpty(alertBuilder))
        {
            s = mContext.getString(com.biznessapps.layout.R.string.you_were_awarded_a_stamp_description);
        }
        loyaltyId = JsonParser.getIntValue(jsonobject, "download_loyalty_awarded");
        alertBuilder = new android.app.AlertDialog.Builder(mContext);
        alertBuilder.setTitle(s1);
        alertBuilder.setMessage(Html.fromHtml(s));
        ((Activity)mContext).runOnUiThread(new Runnable() {

            final LoyaltyHandler this$0;
            final android.app.AlertDialog.Builder val$alertBuilder;
            final int val$loyaltyId;
            final String val$tabId;

            public void run()
            {
                AlertDialog alertdialog = alertBuilder.create();
                alertdialog.setCancelable(false);
                alertdialog.setButton(-1, mContext.getString(com.biznessapps.layout.R.string.go), new android.content.DialogInterface.OnClickListener() {

                    final _cls1 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface = new Bundle();
                        dialoginterface.putString("ITEM_ID", String.valueOf(loyaltyId));
                        ApiUtils.openTab(mContext, tabId, null, null, dialoginterface);
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
                alertdialog.setButton(-2, mContext.getString(com.biznessapps.layout.R.string.close), new android.content.DialogInterface.OnClickListener() {

                    final _cls1 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.dismiss();
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
                alertdialog.show();
            }

            
            {
                this$0 = LoyaltyHandler.this;
                alertBuilder = builder;
                loyaltyId = i;
                tabId = s;
                super();
            }
        });
    }

    public void removeAllLoyalityItems()
    {
        StorageKeeper.instance().removeAllLoyaltyItems();
    }

    public void setContext(Context context)
    {
        mContext = context;
    }

}
