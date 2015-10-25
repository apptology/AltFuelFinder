// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.notepad;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.notepad:
//            NotepadEntity

public class NotepadEditFragment extends CommonFragment
    implements android.view.View.OnClickListener
{

    private NotepadEntity currentNote;
    private int currentNotePosition;
    private ImageView deleteBtn;
    private ImageView newNoteBtn;
    private EditText noteEditText;
    private List notelist;
    private ScrollView scrollView;
    private boolean shouldNotBeSaved;

    public NotepadEditFragment()
    {
        currentNotePosition = 0;
    }

    private void initListeners()
    {
        deleteBtn.setOnClickListener(this);
        newNoteBtn.setOnClickListener(this);
    }

    private void loadNoteData(NotepadEntity notepadentity)
    {
        if (notepadentity != null)
        {
            noteEditText.setText(notepadentity.getContent());
        }
    }

    private void saveCurrentNote()
    {
        if (currentNote != null)
        {
            if (notelist.get(currentNotePosition) != null)
            {
                currentNote.setContent(noteEditText.getText().toString());
                ((NotepadEntity)notelist.get(currentNotePosition)).setContent(noteEditText.getText().toString());
                ArrayList arraylist = new ArrayList();
                arraylist.add(currentNote);
                StorageKeeper.instance().addNotes(arraylist);
            }
        } else
        {
            Object obj = noteEditText.getText().toString();
            if (obj != null && ((String) (obj)).length() != 0)
            {
                NotepadEntity notepadentity = new NotepadEntity();
                String s = ((String) (obj)).split(" ")[0];
                if (s != null && s.length() != 0)
                {
                    notepadentity.setTitle(s);
                } else
                {
                    notepadentity.setTitle(((String) (obj)));
                }
                notepadentity.setContent(((String) (obj)));
                notepadentity.setNoteDate(System.currentTimeMillis());
                obj = new ArrayList();
                ((List) (obj)).add(notepadentity);
                StorageKeeper.instance().addNotes(((List) (obj)));
                return;
            }
        }
    }

    private void setNewNoteData()
    {
        currentNote = null;
        noteEditText.setText("");
    }

    private void showDeleteDialog()
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final NotepadEditFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == -1)
                {
                    StorageKeeper.instance().delNote(currentNote);
                    shouldNotBeSaved = true;
                    getHoldActivity().finish();
                }
            }

            
            {
                this$0 = NotepadEditFragment.this;
                super();
            }
        };
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getHoldActivity());
        builder.setMessage(com.biznessapps.layout.R.string.delete_note);
        builder.setPositiveButton(com.biznessapps.layout.R.string.yes, onclicklistener);
        builder.setNegativeButton(com.biznessapps.layout.R.string.no, onclicklistener);
        builder.show();
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        deleteBtn = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.note_delete_btn);
        newNoteBtn = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.edit_note_add_note);
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), newNoteBtn.getDrawable());
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), deleteBtn.getDrawable());
        scrollView = (ScrollView)viewgroup.findViewById(com.biznessapps.layout.R.id.scrollView);
        scrollView.setSmoothScrollingEnabled(true);
        noteEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.edit_text);
        ViewUtils.setRootBgColor((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.data_container), settings);
        if (ViewUtils.getColorBrightness(settings.getGlobalBgColor()) >= 0.5F)
        {
            noteEditText.setTextColor(0xff000000);
            return;
        } else
        {
            noteEditText.setTextColor(-1);
            return;
        }
    }

    public void loadData()
    {
        notelist = (List)AppCore.getInstance().getCachingManager().getData((new StringBuilder()).append("NOTEPAD_NOTE_LIST").append(tabId).toString());
        if (notelist == null)
        {
            notelist = new ArrayList();
        }
        currentNote = (NotepadEntity)getIntent().getSerializableExtra("EDIT_NOTE_EXTRA");
        currentNotePosition = getIntent().getIntExtra("LIST_POSITION_EXTRA", 0);
        ImageView imageview;
        int i;
        if (currentNote != null)
        {
            loadNoteData(currentNote);
        } else
        {
            setNewNoteData();
        }
        imageview = deleteBtn;
        if (currentNote != null)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
    }

    public void onClick(View view)
    {
        if (view != deleteBtn) goto _L2; else goto _L1
_L1:
        if (currentNote == null) goto _L4; else goto _L3
_L3:
        showDeleteDialog();
_L6:
        return;
_L4:
        shouldNotBeSaved = true;
        getHoldActivity().finish();
        return;
_L2:
        if (view == newNoteBtn)
        {
            saveCurrentNote();
            shouldNotBeSaved = true;
            getHoldActivity().finish();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.notepad_edit_view, null);
        initSettingsData();
        tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
        initViews(root);
        initListeners();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        return root;
    }

    public void onPause()
    {
        super.onPause();
        if (!shouldNotBeSaved)
        {
            saveCurrentNote();
        }
    }



/*
    static boolean access$102(NotepadEditFragment notepadeditfragment, boolean flag)
    {
        notepadeditfragment.shouldNotBeSaved = flag;
        return flag;
    }

*/
}
