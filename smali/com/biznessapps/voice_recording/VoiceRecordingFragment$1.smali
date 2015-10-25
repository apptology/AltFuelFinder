.class Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;
    invoke-static {}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$000()Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    move-result-object v1

    monitor-enter v1

    .line 157
    :try_start_0
    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;
    invoke-static {}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$000()Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->canUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;
    invoke-static {}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$000()Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->setCanUse(Z)V

    .line 159
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->isRecording:Z
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$100(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->stopRecording()V
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$200(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$400(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$500(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_0
    monitor-exit v1

    .line 167
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$1;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->startRecording()V
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$300(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
