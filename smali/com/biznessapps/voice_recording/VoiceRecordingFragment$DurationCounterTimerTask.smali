.class public Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;
.super Ljava/util/TimerTask;
.source "VoiceRecordingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DurationCounterTimerTask"
.end annotation


# instance fields
.field private currentDuration:I

.field final synthetic this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V
    .locals 2

    .prologue
    .line 542
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    .line 543
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 545
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;->currentDuration:I

    .line 546
    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLabel:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1400(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1400(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 551
    iget v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;->currentDuration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;->currentDuration:I

    .line 552
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->handler:Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;
    invoke-static {v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1500(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$DurationCounterTimerTask;->currentDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 553
    .local v0, "completeMessage":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 554
    return-void
.end method
