.class Lcom/biznessapps/voice_recording/VoiceRecordingFragment$5;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$5;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    iput-object p2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$5;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    const-string v1, "test_template_name"

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->deleteAudioFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$700(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$5;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->refreshListView()V
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1200(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    .line 415
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 416
    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;
    invoke-static {}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$000()Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->setCanUse(Z)V

    .line 417
    return-void
.end method
