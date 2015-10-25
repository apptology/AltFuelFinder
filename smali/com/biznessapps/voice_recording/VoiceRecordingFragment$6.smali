.class Lcom/biznessapps/voice_recording/VoiceRecordingFragment$6;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$saveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$6;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    iput-object p2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$6;->val$saveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 429
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$6;->val$saveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$6;->val$saveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 425
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 422
    return-void
.end method
