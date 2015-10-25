// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.email_photo.EmailPhotoEntity;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.HardwareUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.biznessapps.voice_recording:
//            RecordEntity, VoiceRecordingAdapter

public class VoiceRecordingFragment extends CommonFragment
{
    public class DurationCounterTimerTask extends TimerTask
    {

        private int currentDuration;
        final VoiceRecordingFragment this$0;

        public boolean cancel()
        {
            recordingLabel.setVisibility(4);
            return super.cancel();
        }

        public void run()
        {
            currentDuration = currentDuration + 1;
            handler.obtainMessage(1, Integer.valueOf(currentDuration)).sendToTarget();
        }

        public DurationCounterTimerTask()
        {
            this$0 = VoiceRecordingFragment.this;
            super();
            currentDuration = -1;
            recordingLabel.setVisibility(0);
        }
    }

    public static class RecordLocker
    {

        private boolean canUse;

        public boolean canUse()
        {
            return canUse;
        }

        public void setCanUse(boolean flag)
        {
            canUse = flag;
        }

        public RecordLocker()
        {
            canUse = true;
        }
    }

    public class TimerHandler extends Handler
    {

        private static final int UPDATE_DURATION_COUNTER = 1;
        final VoiceRecordingFragment this$0;

        private String getSecInTimeFormat(int i)
        {
            String s;
            boolean flag;
            int j;
            if (i < 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            j = Math.abs(i);
            i = Math.abs(i) / 60;
            if (flag)
            {
                s = "-";
            } else
            {
                s = "";
            }
            return (new StringBuilder()).append(s).append(String.format("%02d:%02d", new Object[] {
                Integer.valueOf(i % 60), Integer.valueOf(j % 60)
            })).toString();
        }

        public void handleMessage(Message message)
        {
            int i;
            switch (message.what)
            {
            default:
                return;

            case 1: // '\001'
                i = ((Integer)message.obj).intValue();
                break;
            }
            recordingLabel.setText(getSecInTimeFormat(i));
        }

        public TimerHandler()
        {
            this$0 = VoiceRecordingFragment.this;
            super();
        }
    }


    private static final String LOG_TAG = "AudioRecordTest";
    private static final long MIN_RECORDING_DURATION = 3000L;
    private static final String RECORDED_AUDIO_FILENAME_EXTENSION = ".aac";
    private static final String RECORDED_FILENAME_TEMPLATE = "%s/%s%s";
    private static final String TEST_NAME = "test_template_name";
    private static RecordLocker recordingLocker = new RecordLocker();
    private VoiceRecordingAdapter adapter;
    private TextView descriptionTextView;
    private File fileDir;
    private TimerHandler handler;
    private EmailPhotoEntity info;
    private boolean isRecording;
    private String lastUsedFileName;
    private RefreshableListView listView;
    private TextView listViewHeader;
    private VoiceRecordingAdapter.OnRecordClickListener listener;
    private MediaPlayer player;
    private ImageView recordImage;
    private MediaRecorder recorder;
    private TextView recordingLabel;
    private long recordingStartTime;
    private ViewGroup rootView;
    private String tabId;
    private Timer timer;

    public VoiceRecordingFragment()
    {
        player = null;
        recorder = null;
    }

    private void deleteAudioFile(String s)
    {
        boolean flag = false;
        boolean flag1 = (new File(getRecordedFileName(s))).delete();
        if (flag1)
        {
            flag = true;
        }
_L2:
        if (!flag)
        {
            Toast.makeText(getApplicationContext(), "Can't delete file: selected file is blocked", 1).show();
        }
        refreshListView();
        return;
        s;
        Log.w("AudioRecordTest", "deleteAudioFile() failure");
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String getRecordedFileName(String s)
    {
        return String.format("%s/%s%s", new Object[] {
            fileDir.getAbsolutePath(), s, ".aac"
        });
    }

    private void initFileDir()
    {
        if (HardwareUtils.getExternalPath() != null)
        {
            try
            {
                fileDir = new File((new StringBuilder()).append(HardwareUtils.getExternalPath()).append("/").append("stored_video_files").toString());
                if (!fileDir.exists())
                {
                    fileDir.mkdir();
                }
                return;
            }
            catch (Exception exception)
            {
                Log.e("AudioRecordTest", "folder not created", exception);
            }
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sdcard_missed));
            return;
        }
    }

    private void initListeners()
    {
        recordImage.setOnClickListener(new android.view.View.OnClickListener() );
        listener = new VoiceRecordingAdapter.OnRecordClickListener() {

            final VoiceRecordingFragment this$0;

            public void onPlay(RecordEntity recordentity)
            {
                if (recordentity.canPlay())
                {
                    startPlaying(recordentity);
                    return;
                } else
                {
                    stopPlaying();
                    return;
                }
            }

            public void onRemove(RecordEntity recordentity)
            {
                String s = getString(com.biznessapps.layout.R.string.voice_removing);
                ViewUtils.showDialog(getHoldActivity(), s, recordentity. new Runnable() {

                    final _cls2 this$1;
                    final RecordEntity val$item;

                    public void run()
                    {
                        deleteAudioFile(item.getName());
                    }

            
            {
                this$1 = final__pcls2;
                item = RecordEntity.this;
                super();
            }
                });
            }

            public void onShare(RecordEntity recordentity)
            {
                recordentity = new File(recordentity.getFilePath());
                ViewUtils.email(getHoldActivity(), info.getEmail(), info.getSubject(), "", recordentity);
            }

            
            {
                this$0 = VoiceRecordingFragment.this;
                super();
            }
        };
        ArrayList arraylist = new ArrayList();
        Object obj = obtainFilesInfo();
        sortItemsByDate(((List) (obj)));
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(ViewUtils.getWrappedItem((RecordEntity)((Iterator) (obj)).next(), arraylist, settings))) { }
        adapter = new VoiceRecordingAdapter(getApplicationContext(), arraylist, settings);
        adapter.setListener(listener);
        listView.setAdapter(adapter);
    }

    private List obtainFilesInfo()
    {
        ArrayList arraylist = new ArrayList();
        List list = Arrays.asList(fileDir.list());
        Collections.sort(list);
        String as[] = (String[])(String[])list.toArray();
        if (as != null)
        {
            int j = as.length;
            for (int i = 0; i < j; i++)
            {
                arraylist.add(new RecordEntity(as[i], fileDir));
            }

        }
        return arraylist;
    }

    private void refreshListView()
    {
        Object obj1 = obtainFilesInfo();
        Object obj = new LinkedList();
        sortItemsByDate(((List) (obj1)));
        RecordEntity recordentity;
        for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); ((List) (obj)).add(ViewUtils.getWrappedItem(recordentity, ((List) (obj)), settings)))
        {
            recordentity = (RecordEntity)((Iterator) (obj1)).next();
            if (lastUsedFileName != null && lastUsedFileName.equalsIgnoreCase(recordentity.getFileName()))
            {
                recordentity.setCanPlay(false);
            }
        }

        adapter.clear();
        adapter.addAll(((java.util.Collection) (obj)));
        adapter.notifyDataSetChanged();
        obj = adapter.getSizeInformation();
        obj = String.format(getString(com.biznessapps.layout.R.string.recordings), new Object[] {
            Integer.valueOf(adapter.getCount()), obj
        });
        listViewHeader.setText(((CharSequence) (obj)));
    }

    private void renameAudioFile(String s)
    {
        try
        {
            File file = new File(getRecordedFileName("test_template_name"));
            if (file.exists())
            {
                file.renameTo(new File(getRecordedFileName(s)));
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.w("AudioRecordTest", "renameAudioFile() failure");
        }
    }

    private void sortItemsByDate(List list)
    {
        Collections.sort(list, new Comparator() {

            final VoiceRecordingFragment this$0;

            public int compare(RecordEntity recordentity, RecordEntity recordentity1)
            {
                if (recordentity.getFileDate() < recordentity1.getFileDate())
                {
                    return 1;
                }
                return recordentity.getFileDate() != recordentity1.getFileDate() ? -1 : 0;
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((RecordEntity)obj, (RecordEntity)obj1);
            }

            
            {
                this$0 = VoiceRecordingFragment.this;
                super();
            }
        });
    }

    private void startPlaying(RecordEntity recordentity)
    {
        if (getPlayerServiceAccessor().isInState(1))
        {
            getPlayerServiceAccessor().stop();
        }
        stopPlaying();
        AudioManager audiomanager = (AudioManager)getApplicationContext().getSystemService("audio");
        audiomanager.setMode(3);
        audiomanager.setSpeakerphoneOn(false);
        player = new MediaPlayer();
        try
        {
            player.setAudioStreamType(3);
            player.setDataSource((new StringBuilder()).append(fileDir.getAbsolutePath()).append("/").append(recordentity.getFileName()).toString());
            player.prepare();
            player.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

                final VoiceRecordingFragment this$0;

                public void onCompletion(MediaPlayer mediaplayer)
                {
                    player.stop();
                    lastUsedFileName = null;
                    refreshListView();
                }

            
            {
                this$0 = VoiceRecordingFragment.this;
                super();
            }
            });
            player.start();
            lastUsedFileName = recordentity.getFileName();
        }
        // Misplaced declaration of an exception variable
        catch (RecordEntity recordentity)
        {
            Log.e("AudioRecordTest", "prepare() failed");
        }
        refreshListView();
    }

    private void startRecording()
    {
        if (getPlayerServiceAccessor().isInState(1))
        {
            getPlayerServiceAccessor().stop();
        }
        stopPlaying();
        if (recorder == null)
        {
            recorder = new MediaRecorder();
        }
        recorder.reset();
        recorder.setAudioSource(1);
        recorder.setOutputFormat(2);
        recorder.setAudioEncoder(3);
        recorder.setOutputFile(getRecordedFileName("test_template_name"));
        recordingStartTime = System.currentTimeMillis();
        try
        {
            recorder.prepare();
            if (timer != null)
            {
                timer.cancel();
            }
            timer = new Timer();
            timer.scheduleAtFixedRate(new DurationCounterTimerTask(), 0L, 1000L);
        }
        catch (IOException ioexception)
        {
            Log.e("AudioRecordTest", "prepare() failed");
        }
        recorder.start();
        recordingLocker.setCanUse(true);
        isRecording = true;
        recordImage.setBackgroundResource(com.biznessapps.layout.R.drawable.stop_recording);
    }

    private void stopPlaying()
    {
        if (player != null)
        {
            player.release();
            lastUsedFileName = null;
            player = null;
        }
        refreshListView();
    }

    private void stopRecording()
    {
        long l = System.currentTimeMillis();
        long l1 = recordingStartTime;
        if (recorder != null && l - l1 > 3000L)
        {
            if (timer != null)
            {
                timer.cancel();
                timer = null;
            }
            recordingLabel.setText("");
            recorder.stop();
            isRecording = false;
            recordingStartTime = 0L;
            recordImage.setBackgroundResource(com.biznessapps.layout.R.drawable.start_recording);
            final AlertDialog dialog = new android.app.AlertDialog.Builder(getHoldActivity());
            View view = ViewUtils.loadLayout(getHoldActivity().getApplicationContext(), com.biznessapps.layout.R.layout.voice_recording_dialog);
            final EditText editText = (EditText)view.findViewById(com.biznessapps.layout.R.id.name_editview);
            Button button = (Button)view.findViewById(com.biznessapps.layout.R.id.cancel_button);
            final Button saveButton = (Button)view.findViewById(com.biznessapps.layout.R.id.save_button);
            saveButton.setEnabled(false);
            dialog.setView(view);
            dialog.setTitle(com.biznessapps.layout.R.string.voice_recording);
            dialog.setCancelable(false);
            dialog = dialog.create();
            saveButton.setOnClickListener(new android.view.View.OnClickListener() {

                final VoiceRecordingFragment this$0;
                final AlertDialog val$dialog;
                final EditText val$editText;

                public void onClick(View view1)
                {
                    view1 = editText.getText().toString();
                    if (StringUtils.isNotEmpty(view1))
                    {
                        renameAudioFile(view1);
                        refreshListView();
                        dialog.cancel();
                    }
                    VoiceRecordingFragment.recordingLocker.setCanUse(true);
                }

            
            {
                this$0 = VoiceRecordingFragment.this;
                editText = edittext;
                dialog = alertdialog;
                super();
            }
            });
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final VoiceRecordingFragment this$0;
                final AlertDialog val$dialog;

                public void onClick(View view1)
                {
                    deleteAudioFile("test_template_name");
                    refreshListView();
                    dialog.cancel();
                    VoiceRecordingFragment.recordingLocker.setCanUse(true);
                }

            
            {
                this$0 = VoiceRecordingFragment.this;
                dialog = alertdialog;
                super();
            }
            });
            editText.addTextChangedListener(new TextWatcher() {

                final VoiceRecordingFragment this$0;
                final Button val$saveButton;

                public void afterTextChanged(Editable editable)
                {
                    if (editable != null && StringUtils.isNotEmpty(editable.toString()))
                    {
                        saveButton.setEnabled(true);
                        return;
                    } else
                    {
                        saveButton.setEnabled(false);
                        return;
                    }
                }

                public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

                public void onTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

            
            {
                this$0 = VoiceRecordingFragment.this;
                saveButton = button;
                super();
            }
            });
            editText.setHint(getHoldActivity().getString(com.biznessapps.layout.R.string.title));
            saveButton.setText(getHoldActivity().getString(com.biznessapps.layout.R.string.save));
            button.setText(getHoldActivity().getString(com.biznessapps.layout.R.string.cancel));
            dialog.show();
            return;
        } else
        {
            recordingLocker.setCanUse(true);
            return;
        }
    }

    protected boolean canUseCachedData()
    {
        info = (EmailPhotoEntity)cacher().getData((new StringBuilder()).append("VOICE_RECORDING_INFO_PROPERTY").append(tabId).toString());
        return info != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        if (info != null)
        {
            return info.getImageUrl();
        } else
        {
            return null;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("voice_recording.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return rootView;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        listView = (RefreshableListView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view);
        listViewHeader = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view_header);
        recordingLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.voice_recording_timer);
        recordImage = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.voice_recording_image);
        descriptionTextView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.voice_recording_description);
        rootView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.voice_recording_root);
        descriptionTextView.setTextColor(settings.getFeatureTextColor());
        listViewHeader.setText(com.biznessapps.layout.R.string.comments);
        ViewUtils.setRootBgColor(rootView, settings);
        listViewHeader.setBackgroundColor(settings.getTransparentSectionBarColor());
        CommonUtils.setColorWithoutMutation(settings.getButtonBgColor(), recordImage.getBackground());
        listViewHeader.setTextColor(settings.getSectionTextColor());
        recordingLabel.setTextColor(settings.getFeatureTextColor());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.voice_recording_layout, null);
        initSettingsData();
        initFileDir();
        handler = new TimerHandler();
        recordingLocker.setCanUse(true);
        initViews(root);
        initListeners();
        loadData();
        refreshListView();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (recorder != null)
        {
            recorder.release();
            recorder = null;
        }
        if (player != null)
        {
            player.release();
            player = null;
        }
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        info = JsonParser.parseVoiceData(s);
        return cacher().saveData((new StringBuilder()).append("VOICE_RECORDING_INFO_PROPERTY").append(tabId).toString(), info);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (StringUtils.isNotEmpty(info.getDescription()))
        {
            descriptionTextView.setText(info.getDescription());
        }
    }






/*
    static String access$1102(VoiceRecordingFragment voicerecordingfragment, String s)
    {
        voicerecordingfragment.lastUsedFileName = s;
        return s;
    }

*/












}
