// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.account.AccountEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.util.Iterator;
import java.util.List;

public class MyAddressFragment extends CommonFragment
{

    private AccountEntity account;
    private EditText address2View;
    private TextView addressView;
    private LocationEntity chosenLocation;
    private EditText emailView;
    private EditText firstNameView;
    private EditText lastNameView;
    private EditText nicknameView;
    private EditText phoneView;
    private Button saveButton;
    private EditText zipView;

    public MyAddressFragment()
    {
    }

    private boolean isNickNameUsed(String s)
    {
        boolean flag1 = false;
        Iterator iterator = StorageKeeper.instance().getFOAccouns().iterator();
        boolean flag;
        do
        {
            flag = flag1;
            if (!iterator.hasNext())
            {
                break;
            }
            if (!s.equalsIgnoreCase(((AccountEntity)iterator.next()).getNickName()))
            {
                continue;
            }
            flag = true;
            break;
        } while (true);
        return flag;
    }

    private void saveData()
    {
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        boolean flag1;
        flag1 = true;
        s = nicknameView.getText().toString();
        s1 = addressView.getText().toString();
        s2 = address2View.getText().toString();
        s3 = zipView.getText().toString();
        s4 = phoneView.getText().toString();
        s5 = firstNameView.getText().toString();
        s6 = lastNameView.getText().toString();
        s7 = emailView.getText().toString();
        if (!StringUtils.isNotEmpty(s) || !StringUtils.isNotEmpty(s5) || !StringUtils.isNotEmpty(s6) || !StringUtils.isNotEmpty(s3) || !StringUtils.isNotEmpty(s4) || !StringUtils.isNotEmpty(s1) || !StringUtils.isNotEmpty(s7))
        {
            break MISSING_BLOCK_LABEL_440;
        }
        if (!StringUtils.isCorrectEmail(s7)) goto _L2; else goto _L1
_L1:
        AccountEntity accountentity;
        boolean flag;
        boolean flag2 = isNickNameUsed(s);
        if (account != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag || s.equals(account.getNickName()))
        {
            flag1 = false;
        }
        if (flag1 && flag2)
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fo_location_nick_exists));
            return;
        }
        if (!flag && flag2)
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fo_location_nick_exists));
            return;
        }
        if (flag)
        {
            StorageKeeper.instance().deleteFOAccount(account.getNickName());
        }
        accountentity = new AccountEntity();
        accountentity.setNickName(s);
        accountentity.setFirstName(s5);
        accountentity.setLastName(s6);
        accountentity.setEmail(s7);
        accountentity.setPhone(s4);
        accountentity.setZipcode(s3);
        accountentity.setAddress1(s1);
        accountentity.setAddress2(s2);
        if (chosenLocation == null) goto _L4; else goto _L3
_L3:
        accountentity.setLatitude(chosenLocation.getLatitude());
        accountentity.setLongitude(chosenLocation.getLongitude());
_L5:
        StorageKeeper.instance().addFOAccount(accountentity);
        ViewUtils.showShortToast(getHoldActivity(), com.biznessapps.layout.R.string.successfully_saved);
        getHoldActivity().finish();
        return;
_L4:
        if (flag)
        {
            accountentity.setLatitude(account.getLatitude());
            accountentity.setLongitude(account.getLongitude());
        }
        if (true) goto _L5; else goto _L2
_L2:
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.email_is_not_correct));
        return;
        ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.fill_required_fields_message);
        return;
    }

    private void updateData()
    {
        if (account != null)
        {
            if (StringUtils.isNotEmpty(account.getNickName()))
            {
                nicknameView.setText(account.getNickName());
            }
            if (StringUtils.isNotEmpty(account.getPhone()))
            {
                phoneView.setText(account.getPhone());
            }
            if (StringUtils.isNotEmpty(account.getFirstName()))
            {
                firstNameView.setText(account.getFirstName());
            }
            if (StringUtils.isNotEmpty(account.getLastName()))
            {
                lastNameView.setText(account.getLastName());
            }
            if (StringUtils.isNotEmpty(account.getEmail()))
            {
                emailView.setText(account.getEmail());
            }
            if (StringUtils.isNotEmpty(account.getAddress1()))
            {
                addressView.setText(account.getAddress1());
            }
            if (StringUtils.isNotEmpty(account.getAddress2()))
            {
                address2View.setText(account.getAddress2());
            }
            if (StringUtils.isNotEmpty(account.getZipcode()))
            {
                zipView.setText(account.getZipcode());
            }
        }
    }

    protected void initSettingsData()
    {
        super.initSettingsData();
        account = (AccountEntity)getIntent().getSerializableExtra("ITEM_EXTRA");
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        nicknameView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.nickname_editview);
        firstNameView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.first_name_editview);
        lastNameView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.last_name_editview);
        phoneView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.phone_editview);
        emailView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.email_editview);
        addressView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_editview);
        address2View = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.address2_editview);
        zipView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.zip_editview);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.nickname_container), nicknameView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.zip_container), zipView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.address_container), addressView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.address2_container), address2View, false);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.firstname_container), firstNameView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.lastname_container), lastNameView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.phone_container), phoneView, true);
        FOUtils.plugTextView(viewgroup.findViewById(com.biznessapps.layout.R.id.email_container), emailView, true);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.nickname_label_view)).setText(com.biznessapps.layout.R.string.fo_location_nickname);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address_label_view)).setText(com.biznessapps.layout.R.string.fo_address);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.zip_label_view)).setText(com.biznessapps.layout.R.string.zip);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.address2_label_view)).setText(com.biznessapps.layout.R.string.fo_apt);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.first_name_label_view)).setText(com.biznessapps.layout.R.string.first_name);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.last_name_label_view)).setText(com.biznessapps.layout.R.string.last_name);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.phone_label_view)).setText(com.biznessapps.layout.R.string.phone);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.email_label_view)).setText(com.biznessapps.layout.R.string.email);
        addressView.setOnClickListener(new android.view.View.OnClickListener() {

            final MyAddressFragment this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_LOCATION_CHOOSER"));
                view.putExtra("TAB_FRAGMENT", "FO_LOCATION_CHOOSER");
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_location_enter_address));
                view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
                startActivityForResult(view, 22);
            }

            
            {
                this$0 = MyAddressFragment.this;
                super();
            }
        });
        saveButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.save_button);
        saveButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MyAddressFragment this$0;

            public void onClick(View view)
            {
                saveData();
            }

            
            {
                this$0 = MyAddressFragment.this;
                super();
            }
        });
        BZButtonStyle.getInstance(getApplicationContext()).apply(settings, saveButton);
        saveButton.setText(FOUtils.toUpperCase(getApplicationContext(), com.biznessapps.layout.R.string.save));
    }

    protected void loadBgUrl()
    {
        bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
        super.loadBgUrl();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        j;
        JVM INSTR tableswitch 22 22: default 28
    //                   22 29;
           goto _L1 _L2
_L1:
        return;
_L2:
        if ((intent = (LocationEntity)intent.getSerializableExtra("ITEM_EXTRA")) != null)
        {
            chosenLocation = intent;
            intent = chosenLocation.getAddress1();
            addressView.setText(intent);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.fo_my_address, null);
        initSettingsData();
        initViews(root);
        loadBgUrl();
        updateData();
        return root;
    }

}
