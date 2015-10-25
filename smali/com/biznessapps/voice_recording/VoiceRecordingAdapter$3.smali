.class Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$3;
.super Ljava/lang/Object;
.source "VoiceRecordingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

.field final synthetic val$item:Lcom/biznessapps/voice_recording/RecordEntity;


# direct methods
.method constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;Lcom/biznessapps/voice_recording/RecordEntity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$3;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    iput-object p2, p0, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$3;->val$item:Lcom/biznessapps/voice_recording/RecordEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$3;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;

    # getter for: Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->listener:Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;
    invoke-static {v0}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;->access$100(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;)Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$3;->val$item:Lcom/biznessapps/voice_recording/RecordEntity;

    invoke-interface {v0, v1}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$OnRecordClickListener;->onShare(Lcom/biznessapps/voice_recording/RecordEntity;)V

    .line 84
    return-void
.end method
