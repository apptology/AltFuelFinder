.class public Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordLocker"
.end annotation


# instance fields
.field private canUse:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->canUse:Z

    return-void
.end method


# virtual methods
.method public canUse()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->canUse:Z

    return v0
.end method

.method public setCanUse(Z)V
    .locals 0
    .param p1, "canUse"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$RecordLocker;->canUse:Z

    .line 572
    return-void
.end method
