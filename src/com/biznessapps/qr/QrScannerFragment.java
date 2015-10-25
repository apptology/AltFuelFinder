// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.qr;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Patterns;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.camera.scanning.CaptureActivity;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.SimpleListType1Adapter;
import com.biznessapps.common.entities.CommonEntity;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.biznessapps.qr:
//            QRCodeEntity

public class QrScannerFragment extends CommonFragment
{

    private static final int SCAN_ACTIVITY_CODE = 1;
    private static final String SCAN_RESULT = "SCAN_RESULT";
    private CommonEntity data;
    private ViewGroup headerContainer;
    private ViewGroup layout;
    private ListView listView;
    private QRCodeEntity mSelectedQRCodeItem;
    private Button scanQrCodeButton;
    private String tabId;

    public QrScannerFragment()
    {
    }

    private void initListeners()
    {
        scanQrCodeButton.setOnClickListener(new android.view.View.OnClickListener() {

            final QrScannerFragment this$0;

            public void onClick(View view)
            {
                startScanning();
            }

            
            {
                this$0 = QrScannerFragment.this;
                super();
            }
        });
    }

    private void initViews()
    {
        headerContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.scan_code_header_container);
        scanQrCodeButton = (Button)root.findViewById(com.biznessapps.layout.R.id.scan_code_button);
        scanQrCodeButton.setTextColor(settings.getButtonTextColor());
        TextView textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.history_text);
        textview.setTextColor(settings.getSectionTextColor());
        textview.setBackgroundColor(settings.getSectionBarColor());
        textview.getBackground().setAlpha(100);
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), scanQrCodeButton.getBackground());
        TextView textview1 = (TextView)headerContainer.findViewById(com.biznessapps.layout.R.id.scan_code_description);
        TextView textview2 = (TextView)headerContainer.findViewById(com.biznessapps.layout.R.id.find_qr_code_title);
        textview1.setText(com.biznessapps.layout.R.string.scan_code_description);
        textview2.setText(com.biznessapps.layout.R.string.find_qr_code);
        scanQrCodeButton.setText(com.biznessapps.layout.R.string.scan_qr);
        textview.setText(com.biznessapps.layout.R.string.history);
        textview1.setTextColor(settings.getFeatureTextColor());
        textview2.setTextColor(settings.getFeatureTextColor());
        ViewUtils.setRootBgColor(layout, settings);
        ViewUtils.setRootBgColor(headerContainer, settings);
        headerContainer.getBackground().setAlpha(120);
        listView = (RefreshableListView)root.findViewById(com.biznessapps.layout.R.id.list_view);
        registerForContextMenu(listView);
        loadQrCodes();
    }

    private void loadQrCodes()
    {
        Object obj = StorageKeeper.instance().getQrCodes();
        if (obj != null)
        {
            ArrayList arraylist = new ArrayList();
            for (int i = ((List) (obj)).size() - 1; i >= 0; i--)
            {
                QRCodeEntity qrcodeentity = (QRCodeEntity)((List) (obj)).get(i);
                CommonListEntity commonlistentity = new CommonListEntity(qrcodeentity.string);
                commonlistentity.setObject(qrcodeentity);
                arraylist.add(ViewUtils.getWrappedItem(commonlistentity, arraylist, settings));
            }

            obj = new SimpleListType1Adapter(getApplicationContext(), arraylist, settings);
            listView.setAdapter(((android.widget.ListAdapter) (obj)));
            listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final QrScannerFragment this$0;

                public void onItemClick(AdapterView adapterview, View view, int j, long l)
                {
                    adapterview = (CommonListEntity)adapterview.getAdapter().getItem(j);
                    if (StringUtils.isNotEmpty(adapterview.getTitle()))
                    {
                        openWebView(adapterview.getTitle());
                    }
                }

            
            {
                this$0 = QrScannerFragment.this;
                super();
            }
            });
            listView.setOnItemLongClickListener(new android.widget.AdapterView.OnItemLongClickListener() {

                final QrScannerFragment this$0;

                public boolean onItemLongClick(AdapterView adapterview, View view, int j, long l)
                {
                    adapterview = (CommonListEntity)adapterview.getAdapter().getItem(j);
                    mSelectedQRCodeItem = (QRCodeEntity)adapterview.getObject();
                    listView.showContextMenu();
                    return true;
                }

            
            {
                this$0 = QrScannerFragment.this;
                super();
            }
            });
        }
    }

    private void openWebView(String s)
    {
        if (Patterns.WEB_URL.matcher(s).matches() || s.startsWith("http://"))
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
            String s1 = s;
            if (!s.contains("http://"))
            {
                s1 = s;
                if (!s.contains("https://"))
                {
                    s1 = (new StringBuilder()).append("http://").append(s).toString();
                }
            }
            intent.putExtra("URL", s1);
            intent.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
            intent.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
            startActivity(intent);
            return;
        } else
        {
            ViewUtils.showDialog(getHoldActivity(), s);
            return;
        }
    }

    private void startScanning()
    {
        startActivityForResult(new Intent(getApplicationContext(), com/biznessapps/camera/scanning/CaptureActivity), 1);
    }

    protected boolean canUseCachedData()
    {
        data = (CommonEntity)cacher().getData((new StringBuilder()).append("QR_SCANNER_PROPERTY").append(tabId).toString());
        return data != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        if (data != null)
        {
            return data.getImageUrl();
        } else
        {
            return null;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("qr_reader.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (intent != null && i == 1)
        {
            intent = intent.getStringExtra("SCAN_RESULT");
            if (intent != null)
            {
                StorageKeeper.instance().saveQrCode(intent);
                loadQrCodes();
                openWebView(intent);
            }
        }
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        if (com.biznessapps.layout.R.id.action_delete_list_item == menuitem.getItemId())
        {
            StorageKeeper.instance().deleteQrCode(mSelectedQRCodeItem.id);
            loadQrCodes();
            return true;
        } else
        {
            return super.onContextItemSelected(menuitem);
        }
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        getActivity().getMenuInflater().inflate(com.biznessapps.layout.R.menu.common_delete_list_item_menu, contextmenu);
        contextmenu.setHeaderTitle(getString(com.biznessapps.layout.R.string.delete));
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.qr_scanner_layout, null);
        initSettingsData();
        setHasOptionsMenu(true);
        layout = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.scan_code_root_container);
        initViews();
        initListeners();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        data = JsonParser.parseCommonData(s);
        return cacher().saveData((new StringBuilder()).append("QR_SCANNER_PROPERTY").append(tabId).toString(), data);
    }



/*
    static QRCodeEntity access$102(QrScannerFragment qrscannerfragment, QRCodeEntity qrcodeentity)
    {
        qrscannerfragment.mSelectedQRCodeItem = qrcodeentity;
        return qrcodeentity;
    }

*/


}
