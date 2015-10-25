.class Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VoiceRecordingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field dateView:Landroid/widget/TextView;

.field durationView:Landroid/widget/TextView;

.field lineView:Landroid/widget/ImageView;

.field nameView:Landroid/widget/TextView;

.field playImage:Landroid/widget/ImageView;

.field removeImage:Landroid/widget/ImageView;

.field shareImage:Landroid/widget/ImageView;

.field sizeView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$1;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/biznessapps/voice_recording/VoiceRecordingAdapter$ViewHolder;-><init>()V

    return-void
.end method
