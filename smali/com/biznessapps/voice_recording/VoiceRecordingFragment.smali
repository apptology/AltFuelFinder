.class public Lcom/biznessapps/voice_recording/VoiceRecordingFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "VoiceRecordingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;,
        Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;,
        Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioRecordTest"

.field private static final MIN_RECORDING_DURATION:J = 0xbb8L

.field private static final RECORDED_AUDIO_FILENAME_EXTENSION:Ljava/lang/String; = ".aac"

.field private static final RECORDED_FILENAME_TEMPLATE:Ljava/lang/String; = "%s/%s%s"

.field private static final TEST_NAME:Ljava/lang/String; = "test_template_name"

.field private static recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;


# instance fields
.field private adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

.field private descriptionTextView:Landroid/widget/TextView;

.field private fileDir:Ljava/io/File;

.field private handler:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;

.field private info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

.field private isRecording:Z

.field private lastUsedFileName:Ljava/lang/String;

.field private listView:Lcom/biznessapps/widgets/RefreshableListView;

.field private listViewHeader:Landroid/widget/TextView;

.field private listener:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;

.field private player:Landroid/media/MediaPlayer;

.field private recordImage:Landroid/widget/ImageView;

.field private recorder:Landroid/media/MediaRecorder;

.field private recordingLabel:Landroid/widget/TextView;

.field private recordingStartTime:J

.field private rootView:Landroid/view/ViewGroup;

.field private tabId:Ljava/lang/String;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    invoke-direct {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;-><init>()V

    sput-object v0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    .line 76
    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    .line 563
    return-void
.end method

.method static synthetic access$000()Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->isRecording:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->lastUsedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->refreshListView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->renameAudioFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->handler:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->stopRecording()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->startRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Lcom/biznessapps/email_photo/EmailPhotoEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->deleteAudioFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Lcom/biznessapps/voice_recording/RecordEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;
    .param p1, "x1"    # Lcom/biznessapps/voice_recording/RecordEntity;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->startPlaying(Lcom/biznessapps/voice_recording/RecordEntity;)V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->stopPlaying()V

    return-void
.end method

.method private deleteAudioFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "selectedFileName"    # Ljava/lang/String;

    .prologue
    .line 472
    const/4 v2, 0x0

    .line 474
    .local v2, "wasDeleted":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getRecordedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    const/4 v2, 0x1

    .line 480
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Can\'t delete file: selected file is blocked"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 483
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->refreshListView()V

    .line 484
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AudioRecordTest"

    const-string v4, "deleteAudioFile() failure"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRecordedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 446
    const-string v0, "%s/%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->fileDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, ".aac"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initFileDir()V
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lcom/biznessapps/utils/HardwareUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 214
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/biznessapps/utils/HardwareUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stored_video_files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->fileDir:Ljava/io/File;

    .line 215
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->fileDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->fileDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AudioRecordTest"

    const-string v2, "folder not created"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->sdcard_missed:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initListeners()V
    .locals 7

    .prologue
    .line 153
    iget-object v4, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordImage:Landroid/widget/ImageView;

    new-instance v5, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v4, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;

    invoke-direct {v4, p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    iput-object v4, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listener:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/voice_recording/RecordEntity;>;"
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->obtainFilesInfo()Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/voice_recording/RecordEntity;>;"
    invoke-direct {p0, v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->sortItemsByDate(Ljava/util/List;)V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/voice_recording/RecordEntity;

    .line 203
    .local v2, "item":Lcom/biznessapps/voice_recording/RecordEntity;
    iget-object v4, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v2    # "item":Lcom/biznessapps/voice_recording/RecordEntity;
    :cond_0
    new-instance v4, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v4, v5, v3, v6}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v4, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    .line 207
    iget-object v4, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    iget-object v5, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listener:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;

    invoke-virtual {v4, v5}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->setListener(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;)V

    .line 208
    iget-object v4, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v5, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    return-void
.end method

.method private obtainFilesInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/voice_recording/RecordEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/voice_recording/RecordEntity;>;"
    iget-object v7, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->fileDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "filesInDir":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 460
    .local v3, "filesInDirAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 461
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v2, v7

    check-cast v2, [Ljava/lang/String;

    .line 463
    if-eqz v2, :cond_0

    .line 464
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 465
    .local v1, "fileInDir":Ljava/lang/String;
    new-instance v7, Lcom/biznessapps/voice_recording/RecordEntity;

    iget-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->fileDir:Ljava/io/File;

    invoke-direct {v7, v1, v8}, Lcom/biznessapps/voice_recording/RecordEntity;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 468
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "fileInDir":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-object v6
.end method

.method private refreshListView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 228
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->obtainFilesInfo()Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/voice_recording/RecordEntity;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 230
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/voice_recording/RecordEntity;>;"
    invoke-direct {p0, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->sortItemsByDate(Ljava/util/List;)V

    .line 231
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/voice_recording/RecordEntity;

    .line 232
    .local v1, "item":Lcom/biznessapps/voice_recording/RecordEntity;
    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->lastUsedFileName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->lastUsedFileName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/biznessapps/voice_recording/RecordEntity;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    invoke-virtual {v1, v9}, Lcom/biznessapps/voice_recording/RecordEntity;->setCanPlay(Z)V

    .line 235
    :cond_0
    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v4, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v1    # "item":Lcom/biznessapps/voice_recording/RecordEntity;
    :cond_1
    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->clear()V

    .line 238
    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    invoke-virtual {v6, v4}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->addAll(Ljava/util/Collection;)V

    .line 239
    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->notifyDataSetChanged()V

    .line 240
    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    invoke-virtual {v6}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->getSizeInformation()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "sizeInfo":Ljava/lang/String;
    sget v6, Lcom/biznessapps/layout/R$string;->recordings:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->adapter:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    invoke-virtual {v8}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "recordsInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listViewHeader:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method private renameAudioFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "newFileName"    # Ljava/lang/String;

    .prologue
    .line 488
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "test_template_name"

    invoke-direct {p0, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getRecordedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getRecordedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AudioRecordTest"

    const-string v3, "renameAudioFile() failure"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sortItemsByDate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/voice_recording/RecordEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/voice_recording/RecordEntity;>;"
    new-instance v0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$7;

    invoke-direct {v0, p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$7;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 510
    return-void
.end method

.method private startPlaying(Lcom/biznessapps/voice_recording/RecordEntity;)V
    .locals 5
    .param p1, "item"    # Lcom/biznessapps/voice_recording/RecordEntity;

    .prologue
    const/4 v4, 0x3

    .line 287
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->isInState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->stopPlaying()V

    .line 292
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 293
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 294
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 296
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 299
    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->fileDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/biznessapps/voice_recording/RecordEntity;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 301
    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$3;

    invoke-direct {v3, p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$3;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 310
    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 311
    invoke-virtual {p1}, Lcom/biznessapps/voice_recording/RecordEntity;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->lastUsedFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->refreshListView()V

    .line 316
    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AudioRecordTest"

    const-string v3, "prepare() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startRecording()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 330
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/biznessapps/player/PlayerServiceAccessor;->isInState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->stopPlaying()V

    .line 335
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 336
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 339
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 346
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 347
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 348
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    const-string v1, "test_template_name"

    invoke-direct {p0, v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getRecordedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingStartTime:J

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 353
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 356
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->timer:Ljava/util/Timer;

    .line 357
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;

    invoke-direct {v1, p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 362
    sget-object v0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    invoke-virtual {v0, v7}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->setCanUse(Z)V

    .line 364
    iput-boolean v7, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->isRecording:Z

    .line 365
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordImage:Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->stop_recording:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 366
    return-void

    .line 358
    :catch_0
    move-exception v6

    .line 359
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "AudioRecordTest"

    const-string v1, "prepare() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopPlaying()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 321
    iput-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->lastUsedFileName:Ljava/lang/String;

    .line 322
    iput-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->refreshListView()V

    .line 325
    return-void
.end method

.method private stopRecording()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingStartTime:J

    sub-long v3, v8, v10

    .line 371
    .local v3, "duration":J
    iget-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    if-eqz v8, :cond_1

    const-wide/16 v8, 0xbb8

    cmp-long v8, v3, v8

    if-lez v8, :cond_1

    .line 373
    iget-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->timer:Ljava/util/Timer;

    if-eqz v8, :cond_0

    .line 374
    iget-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->timer:Ljava/util/Timer;

    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V

    .line 375
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->timer:Ljava/util/Timer;

    .line 378
    :cond_0
    iget-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLabel:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->stop()V

    .line 382
    iput-boolean v12, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->isRecording:Z

    .line 383
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingStartTime:J

    .line 384
    iget-object v8, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordImage:Landroid/widget/ImageView;

    sget v9, Lcom/biznessapps/layout/R$drawable;->start_recording:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$layout;->voice_recording_dialog:I

    invoke-static {v8, v9}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v7

    .line 387
    .local v7, "view":Landroid/view/View;
    sget v8, Lcom/biznessapps/layout/R$id;->name_editview:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 388
    .local v5, "editText":Landroid/widget/EditText;
    sget v8, Lcom/biznessapps/layout/R$id;->cancel_button:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 389
    .local v1, "cancelButton":Landroid/widget/Button;
    sget v8, Lcom/biznessapps/layout/R$id;->save_button:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 391
    .local v6, "saveButton":Landroid/widget/Button;
    invoke-virtual {v6, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 393
    sget v8, Lcom/biznessapps/layout/R$string;->voice_recording:I

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 396
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v8, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;

    invoke-direct {v8, p0, v5, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v8, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$5;

    invoke-direct {v8, p0, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$5;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    new-instance v8, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$6;

    invoke-direct {v8, p0, v6}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$6;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Landroid/widget/Button;)V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 436
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->title:I

    invoke-virtual {v8, v9}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->save:I

    invoke-virtual {v8, v9}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {v8, v9}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 443
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "cancelButton":Landroid/widget/Button;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v5    # "editText":Landroid/widget/EditText;
    .end local v6    # "saveButton":Landroid/widget/Button;
    .end local v7    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 441
    :cond_1
    sget-object v8, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->setCanUse(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOICE_RECORDING_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/email_photo/EmailPhotoEntity;

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    .line 282
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v0}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    const-string v0, "voice_recording.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 135
    sget v0, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 136
    sget v0, Lcom/biznessapps/layout/R$id;->list_view_header:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listViewHeader:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/biznessapps/layout/R$id;->voice_recording_timer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLabel:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/biznessapps/layout/R$id;->voice_recording_image:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordImage:Landroid/widget/ImageView;

    .line 140
    sget v0, Lcom/biznessapps/layout/R$id;->voice_recording_description:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->descriptionTextView:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/biznessapps/layout/R$id;->voice_recording_root:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->rootView:Landroid/view/ViewGroup;

    .line 142
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->descriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listViewHeader:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 146
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listViewHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 147
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->listViewHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    sget v0, Lcom/biznessapps/layout/R$layout;->voice_recording_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->root:Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->initSettingsData()V

    .line 107
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->initFileDir()V

    .line 108
    new-instance v0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;

    invoke-direct {v0, p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->handler:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;

    .line 109
    sget-object v0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->setCanUse(Z)V

    .line 110
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 111
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->initListeners()V

    .line 112
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->loadData()V

    .line 113
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->refreshListView()V

    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->openCustomDialogs()V

    .line 116
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 124
    iput-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 128
    iput-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    .line 130
    :cond_1
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->tabId:Ljava/lang/String;

    .line 248
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseVoiceData(Ljava/lang/String;)Lcom/biznessapps/email_photo/EmailPhotoEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    .line 258
    invoke-virtual {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOICE_RECORDING_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 264
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v0}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->descriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;

    invoke-virtual {v1}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    return-void
.end method
