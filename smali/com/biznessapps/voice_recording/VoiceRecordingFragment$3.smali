.class Lcom/biznessapps/voice_recording/VoiceRecordingFragment$3;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->startPlaying(Lcom/biznessapps/voice_recording/RecordEntity;)V
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
    .line 301
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$3;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$3;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1000(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 306
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$3;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->lastUsedFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1102(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$3;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->refreshListView()V
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1200(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V

    .line 308
    return-void
.end method
