// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.messages;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.messages:
//            MessageEntity

public class MessageAdapter extends AbstractAdapter
{

    private MessageListFragment.MessageItemListener itemListener;

    public MessageAdapter(Context context, List list, int i, UiSettings uisettings)
    {
        super(context, list, i, uisettings);
    }

    public View getView(final int position, View view, ViewGroup viewgroup)
    {
        final MessageEntity item;
        Object obj;
        ImageView imageview;
        ImageView imageview1;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.MessageItem();
            viewgroup.setTextViewText((TextView)view.findViewById(com.biznessapps.layout.R.id.message_text));
            viewgroup.setTextViewDate((TextView)view.findViewById(com.biznessapps.layout.R.id.message_date_text));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.MessageItem)view.getTag();
        }
        item = (MessageEntity)getItem(position);
        obj = (ImageView)view.findViewById(com.biznessapps.layout.R.id.message_icon_type);
        imageview = (ImageView)view.findViewById(com.biznessapps.layout.R.id.message_share_icon);
        imageview1 = (ImageView)view.findViewById(com.biznessapps.layout.R.id.message_trash_icon);
        if (item != null)
        {
            int i;
            boolean flag;
            if (item.getType() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            i = com.biznessapps.layout.R.drawable.message_text_icon;
            if (item.getType() == 1)
            {
                i = com.biznessapps.layout.R.drawable.message_web_big_icon;
            } else
            if (item.getType() == 2)
            {
                i = com.biznessapps.layout.R.drawable.message_tab_content_big_icon;
            } else
            if (item.getType() == 3)
            {
                i = com.biznessapps.layout.R.drawable.message_template_big_icon;
            }
            ((ImageView) (obj)).setImageResource(i);
            if (flag)
            {
                i = 8;
            } else
            {
                i = 0;
            }
            ((ImageView) (obj)).setVisibility(i);
            imageview.setOnClickListener(new android.view.View.OnClickListener() {

                final MessageAdapter this$0;
                final MessageEntity val$item;
                final int val$position;

                public void onClick(View view1)
                {
                    if (itemListener != null)
                    {
                        itemListener.onShareIconClicked(item, position);
                    }
                }

            
            {
                this$0 = MessageAdapter.this;
                item = messageentity;
                position = i;
                super();
            }
            });
            imageview1.setOnClickListener(new android.view.View.OnClickListener() {

                final MessageAdapter this$0;
                final MessageEntity val$item;
                final int val$position;

                public void onClick(View view1)
                {
                    if (itemListener != null)
                    {
                        itemListener.onRemoveItemClicked(item, position);
                    }
                }

            
            {
                this$0 = MessageAdapter.this;
                item = messageentity;
                position = i;
                super();
            }
            });
            viewgroup.getTextViewText().setText(item.getTitle());
            if (item.getDate() != null)
            {
                viewgroup.getTextViewDate().setText(DateUtils.getStandartDateFormat(item.getDate()));
            }
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((ImageView) (obj)).getBackground());
            CommonUtils.overrideImageColor(settings.getButtonTextColor(), ((ImageView) (obj)).getDrawable());
            CommonUtils.overrideImageColor(settings.getSectionTextColor(), imageview.getDrawable());
            CommonUtils.overrideImageColor(settings.getSectionTextColor(), imageview1.getDrawable());
            viewgroup.getTextViewDate().setTextColor(settings.getSectionTextColor());
            setTextColorToView(item.getItemTextColor(), new TextView[] {
                viewgroup.getTextViewText()
            });
            view.setBackgroundDrawable(getListItemDrawable(0));
            viewgroup = view.findViewById(com.biznessapps.layout.R.id.item_container_bottom);
            obj = view.findViewById(com.biznessapps.layout.R.id.item_container_top);
            CommonUtils.overrideImageColor(settings.getSectionBarColor(), viewgroup.getBackground());
            CommonUtils.overrideImageColor(item.getItemColor(), ((View) (obj)).getBackground());
            viewgroup.getBackground().setAlpha(180);
            ((View) (obj)).getBackground().setAlpha(180);
        }
        return view;
    }

    public void setItemListener(MessageListFragment.MessageItemListener messageitemlistener)
    {
        itemListener = messageitemlistener;
    }

}
