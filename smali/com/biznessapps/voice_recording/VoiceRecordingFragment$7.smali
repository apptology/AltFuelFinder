.class Lcom/biznessapps/voice_recording/VoiceRecordingFragment$7;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/voice_recording/VoiceRecordingFragment;->sortItemsByDate(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/biznessapps/voice_recording/RecordEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/voice_recording/VoiceRecordingFragment;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$7;->this$0:Lcom/biznessapps/voice_recording/VoiceRecordingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/voice_recording/RecordEntity;Lcom/biznessapps/voice_recording/RecordEntity;)I
    .locals 4
    .param p1, "firstObj"    # Lcom/biznessapps/voice_recording/RecordEntity;
    .param p2, "secondObj"    # Lcom/biznessapps/voice_recording/RecordEntity;

    .prologue
    .line 501
    invoke-virtual {p1}, Lcom/biznessapps/voice_recording/RecordEntity;->getFileDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/biznessapps/voice_recording/RecordEntity;->getFileDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 502
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    .line 503
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/voice_recording/RecordEntity;->getFileDate()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/biznessapps/voice_recording/RecordEntity;->getFileDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 504
    const/4 v0, 0x0

    goto :goto_0

    .line 506
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 498
    check-cast p1, Lcom/biznessapps/voice_recording/RecordEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/voice_recording/RecordEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/voice_recording/VoiceRecordingFragment$7;->compare(Lcom/biznessapps/voice_recording/RecordEntity;Lcom/biznessapps/voice_recording/RecordEntity;)I

    move-result v0

    return v0
.end method
