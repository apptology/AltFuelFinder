.class Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2$1;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->onRemove(Lcom/biznessapps/voice_recording/RecordEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;

.field final synthetic val$item:Lcom/biznessapps/voice_recording/RecordEntity;


# direct methods
.method constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;Lcom/biznessapps/voice_recording/RecordEntity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2$1;->this$1:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;

    iput-object p2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2$1;->val$item:Lcom/biznessapps/voice_recording/RecordEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2$1;->this$1:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;

    iget-object v0, v0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$2$1;->val$item:Lcom/biznessapps/voice_recording/RecordEntity;

    invoke-virtual {v1}, Lcom/biznessapps/voice_recording/RecordEntity;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->deleteAudioFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$700(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Ljava/lang/String;)V

    .line 186
    return-void
.end method
