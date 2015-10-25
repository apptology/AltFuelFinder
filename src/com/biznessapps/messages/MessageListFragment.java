// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.messages;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.more.Tab;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.messages:
//            MessageEntity, MessageAdapter

public class MessageListFragment extends CommonListFragment
{
    public static interface MessageItemListener
    {

        public abstract void onRemoveItemClicked(MessageEntity messageentity, int i);

        public abstract void onShareIconClicked(MessageEntity messageentity, int i);
    }

    private class SortMessagesByDate
        implements Comparator
    {

        final MessageListFragment this$0;

        public int compare(MessageEntity messageentity, MessageEntity messageentity1)
        {
            if (messageentity == null && messageentity1 == null && messageentity.getDate() == null && messageentity1.getDate() == null)
            {
                return 0;
            }
            if (messageentity == null || messageentity.getDate() == null)
            {
                return 1;
            }
            if (messageentity1 == null || messageentity1.getDate() == null)
            {
                return -1;
            } else
            {
                return messageentity1.getDate().compareTo(messageentity.getDate());
            }
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((MessageEntity)obj, (MessageEntity)obj1);
        }

        private SortMessagesByDate()
        {
            this$0 = MessageListFragment.this;
            super();
        }

    }


    private TextView allMessagesButton;
    private TextView imageMessagesButton;
    private int messageType;
    private int selectedPosition;
    private TextView tabMessagesButton;
    private TextView webMessagesButton;

    public MessageListFragment()
    {
        messageType = 0;
        selectedPosition = 0;
    }

    private void checkRichMessage(MessageEntity messageentity)
    {
        if (StringUtils.isNotEmpty(messageentity.getUrl()))
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
            String s = messageentity.getUrl();
            messageentity = s;
            if (!s.contains("http://"))
            {
                messageentity = s;
                if (!s.contains("https://"))
                {
                    messageentity = (new StringBuilder()).append("http://").append(s).toString();
                }
            }
            intent.putExtra("URL", messageentity);
            intent.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
            startActivity(intent);
        } else
        if (StringUtils.isNotEmpty(messageentity.getTabId()))
        {
            Object obj = AppCore.getInstance().getCachingManager().getTabList();
            Object obj1 = null;
            Iterator iterator = ((List) (obj)).iterator();
            do
            {
                obj = obj1;
                if (!iterator.hasNext())
                {
                    break;
                }
                obj = (Tab)iterator.next();
            } while (!((Tab) (obj)).getTabId().equalsIgnoreCase(messageentity.getTabId()));
            if (obj != null)
            {
                startActivity(ApiUtils.getTabIntent(getApplicationContext(), ((Tab) (obj)), messageentity.getCategoryId(), messageentity.getDetailId()));
                return;
            }
        }
    }

    private List getSpecificMessages(int i, List list)
    {
        Object obj;
        ArrayList arraylist;
        arraylist = new ArrayList();
        obj = arraylist;
        if (list == null) goto _L2; else goto _L1
_L1:
        obj = arraylist;
        if (list.isEmpty()) goto _L2; else goto _L3
_L3:
        if (i != 0) goto _L5; else goto _L4
_L4:
        obj = list;
_L2:
        return ((List) (obj));
_L5:
        list = list.iterator();
        do
        {
            obj = arraylist;
            if (!list.hasNext())
            {
                continue;
            }
            obj = (MessageEntity)list.next();
            if (((MessageEntity) (obj)).getType() == i)
            {
                arraylist.add(obj);
            }
        } while (true);
        if (true) goto _L2; else goto _L6
_L6:
    }

    private void plugListView(Activity activity, List list)
    {
        if (ApiUtils.hasNotData(list))
        {
            ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.no_messages));
            listView.setAdapter(null);
            return;
        }
        Collections.sort(list, new SortMessagesByDate());
        LinkedList linkedlist = new LinkedList();
        for (list = list.iterator(); list.hasNext(); linkedlist.add(getWrappedItem((MessageEntity)list.next(), linkedlist))) { }
        activity = new MessageAdapter(activity.getApplicationContext(), linkedlist, com.biznessapps.layout.R.layout.message_row, settings);
        ((MessageAdapter)activity).setItemListener(new MessageItemListener() {

            final MessageListFragment this$0;

            public void onRemoveItemClicked(MessageEntity messageentity, int i)
            {
                StorageKeeper.instance().removeMessage(messageentity);
                loadData();
            }

            public void onShareIconClicked(MessageEntity messageentity, int i)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity());
            }

            
            {
                this$0 = MessageListFragment.this;
                super();
            }
        });
        listView.setAdapter(activity);
        listView.setSelection(selectedPosition);
        initListViewListener();
    }

    private void updateTabsState()
    {
        TextView textview = allMessagesButton;
        boolean flag;
        if (messageType == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview.setSelected(flag);
        textview = webMessagesButton;
        if (messageType == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview.setSelected(flag);
        textview = tabMessagesButton;
        if (messageType == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview.setSelected(flag);
        textview = imageMessagesButton;
        if (messageType == 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview.setSelected(flag);
        ViewUtils.updateTextViewIconState(new TextView[] {
            allMessagesButton, webMessagesButton, tabMessagesButton, imageMessagesButton
        });
    }

    protected String defineBgUrl(Intent intent)
    {
        return bgUrl;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.message_list_layout;
    }

    protected String getRequestUrl()
    {
        String s = AppCore.getInstance().getAppSettings().getDeviceId(getActivity());
        return String.format("messages.php?app_code=%s&tab_id=%s&dev_token=%s&platform=android", new Object[] {
            cacher().getAppCode(), tabId, s
        });
    }

    protected void initSettingsData()
    {
        super.initSettingsData();
        settings.setUseBlurEffect(AppCore.getInstance().getAppSettings().useBlurEffectForMessagesTab());
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        allMessagesButton = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.all_messages_button);
        webMessagesButton = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.web_messages_button);
        tabMessagesButton = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tab_messages_button);
        imageMessagesButton = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.image_messages_button);
        allMessagesButton.setText(com.biznessapps.layout.R.string.message_all_type);
        webMessagesButton.setText(com.biznessapps.layout.R.string.message_web_type);
        tabMessagesButton.setText(com.biznessapps.layout.R.string.message_tab_content_type);
        imageMessagesButton.setText(com.biznessapps.layout.R.string.message_image_type);
        viewgroup = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.tab_buttons_container);
        allMessagesButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MessageListFragment this$0;

            public void onClick(View view)
            {
                messageType = 0;
                updateControlsWithData(getHoldActivity());
            }

            
            {
                this$0 = MessageListFragment.this;
                super();
            }
        });
        webMessagesButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MessageListFragment this$0;

            public void onClick(View view)
            {
                messageType = 1;
                updateControlsWithData(getHoldActivity());
            }

            
            {
                this$0 = MessageListFragment.this;
                super();
            }
        });
        tabMessagesButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MessageListFragment this$0;

            public void onClick(View view)
            {
                messageType = 2;
                updateControlsWithData(getHoldActivity());
            }

            
            {
                this$0 = MessageListFragment.this;
                super();
            }
        });
        imageMessagesButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MessageListFragment this$0;

            public void onClick(View view)
            {
                messageType = 3;
                updateControlsWithData(getHoldActivity());
            }

            
            {
                this$0 = MessageListFragment.this;
                super();
            }
        });
        viewgroup.setBackgroundColor(settings.getButtonBgColor());
        ViewUtils.setBottomTabStyle(allMessagesButton);
        ViewUtils.setBottomTabStyle(webMessagesButton);
        ViewUtils.setBottomTabStyle(tabMessagesButton);
        ViewUtils.setBottomTabStyle(imageMessagesButton);
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (MessageEntity)adapterview.getAdapter().getItem(i);
        if (adapterview != null)
        {
            checkRichMessage(adapterview);
        }
    }

    protected boolean tryParseData(String s)
    {
        List list = JsonParser.parseMessages(s);
        Iterator iterator;
        if (list != null && !list.isEmpty())
        {
            s = ((MessageEntity)list.get(0)).getBackground();
        } else
        {
            s = null;
        }
        bgUrl = s;
        s = StorageKeeper.instance().getMessagesIds();
        iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            MessageEntity messageentity1 = (MessageEntity)iterator.next();
            if (!s.contains(messageentity1.getId()))
            {
                StorageKeeper.instance().addMessage(messageentity1);
            }
        } while (true);
        items = StorageKeeper.instance().getMessages();
        s = items.iterator();
        do
        {
            if (!s.hasNext())
            {
                break;
            }
            MessageEntity messageentity = (MessageEntity)s.next();
            boolean flag1 = true;
            Iterator iterator1 = list.iterator();
            boolean flag;
            do
            {
                flag = flag1;
                if (!iterator1.hasNext())
                {
                    break;
                }
                MessageEntity messageentity2 = (MessageEntity)iterator1.next();
                if (!messageentity.getId().equalsIgnoreCase(messageentity2.getId()))
                {
                    continue;
                }
                flag = false;
                break;
            } while (true);
            if (flag)
            {
                StorageKeeper.instance().removeMessage(messageentity);
            }
        } while (true);
        items = StorageKeeper.instance().getMessages();
        return items != null;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        updateTabsState();
        plugListView(activity, getSpecificMessages(messageType, items));
    }


/*
    static int access$002(MessageListFragment messagelistfragment, int i)
    {
        messagelistfragment.messageType = i;
        return i;
    }

*/

}
