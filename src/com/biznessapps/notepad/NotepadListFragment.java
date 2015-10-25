// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.notepad;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ImageView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.notepad:
//            NotepadEntity, NotepadListAdapter

public class NotepadListFragment extends CommonListFragment
{
    private class SortNotepadByDate
        implements Comparator
    {

        final NotepadListFragment this$0;

        public int compare(NotepadEntity notepadentity, NotepadEntity notepadentity1)
        {
            if (notepadentity == null || notepadentity.getDate() == null)
            {
                return 1;
            }
            if (notepadentity1 == null || notepadentity1.getDate() == null)
            {
                return -1;
            } else
            {
                return notepadentity1.getDate().compareTo(notepadentity.getDate());
            }
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((NotepadEntity)obj, (NotepadEntity)obj1);
        }

        private SortNotepadByDate()
        {
            this$0 = NotepadListFragment.this;
            super();
        }

    }


    private ImageView addNoteButton;

    public NotepadListFragment()
    {
    }

    private List getFilteredData(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (!StringUtils.isEmpty(searchQuery)) goto _L2; else goto _L1
_L1:
        return list;
_L2:
        Iterator iterator = list.iterator();
        do
        {
            list = arraylist;
            if (!iterator.hasNext())
            {
                continue;
            }
            list = (NotepadEntity)iterator.next();
            String s = list.getContent();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void openNotepad(NotepadEntity notepadentity, int i)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("NOTEPAD_EDIT_FRAGMENT"));
        intent.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        intent.putExtra("TAB_SPECIAL_ID", tabId);
        intent.putExtra("TAB_FRAGMENT", "NOTEPAD_EDIT_FRAGMENT");
        if (notepadentity != null)
        {
            intent.putExtra("EDIT_NOTE_EXTRA", notepadentity);
            intent.putExtra("LIST_POSITION_EXTRA", i);
        }
        startActivityForResult(intent, 6);
    }

    private void plugListView(Activity activity)
    {
        Object obj = getFilteredData(items);
        if (obj != null)
        {
            Collections.sort(items, new SortNotepadByDate());
            ArrayList arraylist = new ArrayList();
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(getWrappedItem((NotepadEntity)((Iterator) (obj)).next(), arraylist))) { }
            adapter = new NotepadListAdapter(activity.getApplicationContext(), arraylist, settings);
            listView.setAdapter(adapter);
            initListViewListener();
        }
    }

    protected boolean canUseCachedData()
    {
        items = StorageKeeper.instance().getNotes();
        AppCore.getInstance().getCachingManager().saveData((new StringBuilder()).append("NOTEPAD_NOTE_LIST").append(tabId).toString(), items);
        return true;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.notepad_list_view;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        ViewUtils.setRootBgColor(viewgroup, settings);
        addNoteButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.add_note);
        addNoteButton.setOnClickListener(new android.view.View.OnClickListener() {

            final NotepadListFragment this$0;

            public void onClick(View view)
            {
                openNotepad(null, 0);
            }

            
            {
                this$0 = NotepadListFragment.this;
                super();
            }
        });
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), addNoteButton.getDrawable());
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        loadData();
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openNotepad((NotepadEntity)adapterview.getAdapter().getItem(i), i);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }

    protected boolean useSearchBar()
    {
        return true;
    }

}
