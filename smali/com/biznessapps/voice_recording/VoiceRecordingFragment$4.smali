.class Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;
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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    iput-object p2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->renameAudioFile(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1300(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->refreshListView()V
    invoke-static {v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1200(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    .line 404
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 406
    :cond_0
    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLocker:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;
    invoke-static {}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$000()Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->setCanUse(Z)V

    .line 407
    return-void
.end method
