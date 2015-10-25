// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.notepad;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.biznessapps.notepad:
//            NotepadEntity

public class NotepadListAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView content;
        TextView date;
        TextView wordsCount;

        private ViewHolder()
        {
        }

    }


    private Calendar todayCalendar;

    public NotepadListAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.notepad_list_row, uisettings);
        todayCalendar = Calendar.getInstance();
        todayCalendar.setTime(new Date());
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        NotepadEntity notepadentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.content = (TextView)view.findViewById(com.biznessapps.layout.R.id.note_title);
            viewgroup.date = (TextView)view.findViewById(com.biznessapps.layout.R.id.note_date);
            viewgroup.wordsCount = (TextView)view.findViewById(com.biznessapps.layout.R.id.note_words_count);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        notepadentity = (NotepadEntity)getItem(i);
        if (notepadentity != null)
        {
            if (StringUtils.isNotEmpty(notepadentity.getContent()))
            {
                ((ViewHolder) (viewgroup)).content.setText(notepadentity.getContent());
                String s = getContext().getString(com.biznessapps.layout.R.string.words_notepad_count);
                ((ViewHolder) (viewgroup)).wordsCount.setText(String.format(s, new Object[] {
                    Integer.valueOf(notepadentity.getContent().split("\\s+").length)
                }));
            }
            if (notepadentity.getNoteDate() > 0L)
            {
                Date date = new Date(notepadentity.getNoteDate());
                ((ViewHolder) (viewgroup)).date.setText(DateUtils.getStandartDateFormat(date));
            }
            if (notepadentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(notepadentity.getItemColor()));
                setTextColorToView(notepadentity.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).content, ((ViewHolder) (viewgroup)).date, ((ViewHolder) (viewgroup)).wordsCount
                });
            }
        }
        return view;
    }
}
