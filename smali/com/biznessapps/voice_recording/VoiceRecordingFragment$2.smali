.class Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;


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
    .line 169
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlay(Lcom/biznessapps/voice_recording/RecordEntity;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/voice_recording/RecordEntity;

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/biznessapps/voice_recording/RecordEntity;->canPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->startPlaying(Lcom/biznessapps/voice_recording/RecordEntity;)V
    invoke-static {v0, p1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$800(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Lcom/biznessapps/voice_recording/RecordEntity;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->stopPlaying()V
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$900(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    goto :goto_0
.end method

.method public onRemove(Lcom/biznessapps/voice_recording/RecordEntity;)V
    .locals 3
    .param p1, "item"    # Lcom/biznessapps/voice_recording/RecordEntity;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->voice_removing:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    invoke-virtual {v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2$1;

    invoke-direct {v2, p0, p1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2$1;-><init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;Lcom/biznessapps/voice_recording/RecordEntity;)V

    invoke-static {v1, v0, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public onShare(Lcom/biznessapps/voice_recording/RecordEntity;)V
    .locals 6
    .param p1, "item"    # Lcom/biznessapps/voice_recording/RecordEntity;

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/biznessapps/voice_recording/RecordEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    invoke-virtual {v2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;
    invoke-static {v3}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$600(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Lcom/biznessapps/email_photo/EmailPhotoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->info:Lcom/biznessapps/email_photo/EmailPhotoEntity;
    invoke-static {v4}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$600(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Lcom/biznessapps/email_photo/EmailPhotoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/email_photo/EmailPhotoEntity;->getSubject()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v3, v4, v5, v0}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 176
    return-void
.end method
