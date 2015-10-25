.class public Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;
.super Landroid/os/Handler;
.source "VoiceRecordingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimerHandler"
.end annotation


# static fields
.field private static final UPDATE_DURATION_COUNTER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getSecInTimeFormat(I)Ljava/lang/String;
    .locals 10
    .param p1, "totalSecNumber"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 529
    const-string v4, "%02d:%02d"

    .line 530
    .local v4, "secFormat":Ljava/lang/String;
    if-gez p1, :cond_0

    move v0, v5

    .line 531
    .local v0, "isNegative":Z
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    rem-int/lit8 v2, v7, 0x3c

    .line 532
    .local v2, "numberOfSec":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v1, v7, 0x3c

    .line 533
    .local v1, "numberOfMin":I
    if-eqz v0, :cond_1

    const-string v3, "-"

    .line 534
    .local v3, "prefix":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v0    # "isNegative":Z
    .end local v1    # "numberOfMin":I
    .end local v2    # "numberOfSec":I
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    move v0, v6

    .line 530
    goto :goto_0

    .line 533
    .restart local v0    # "isNegative":Z
    .restart local v1    # "numberOfMin":I
    .restart local v2    # "numberOfSec":I
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "inputMessage"    # Landroid/os/Message;

    .prologue
    .line 520
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 522
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 523
    .local v0, "duration":I
    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->recordingLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->access$1400(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$TimerHandler;->getSecInTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
