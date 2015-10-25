.class public Lcom/biznessapps/voice_recording/RecordEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "RecordEntity.java"


# static fields
.field private static final AAC_FORMAT:Ljava/lang/String; = ".aac"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6475a2ba378bc51fL


# instance fields
.field private canPlay:Z

.field private date:J

.field private duration:J

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/biznessapps/voice_recording/RecordEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/voice_recording/RecordEntity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileDir"    # Ljava/io/File;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 31
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->canPlay:Z

    .line 34
    const-string v4, ".aac"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "aacIndex":I
    if-lez v0, :cond_0

    .line 36
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->name:Ljava/lang/String;

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/voice_recording/RecordEntity;->fileName:Ljava/lang/String;

    .line 41
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->filePath:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->filePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->size:J

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->date:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 52
    .local v3, "mp":Landroid/media/MediaPlayer;
    :try_start_1
    iget-object v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 54
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->duration:J

    .line 55
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :goto_1
    return-void

    .line 45
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/biznessapps/voice_recording/RecordEntity;->LOG_TAG:Ljava/lang/String;

    const-string v5, "file.length() failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/biznessapps/voice_recording/RecordEntity;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/biznessapps/voice_recording/RecordEntity;->LOG_TAG:Ljava/lang/String;

    const-string v5, "mp.getDuration() failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public canPlay()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/biznessapps/voice_recording/RecordEntity;->canPlay:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/biznessapps/voice_recording/RecordEntity;->duration:J

    return-wide v0
.end method

.method public getFileDate()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/biznessapps/voice_recording/RecordEntity;->date:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/voice_recording/RecordEntity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/voice_recording/RecordEntity;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/voice_recording/RecordEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/biznessapps/voice_recording/RecordEntity;->size:J

    return-wide v0
.end method

.method public setCanPlay(Z)V
    .locals 0
    .param p1, "canPlay"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/biznessapps/voice_recording/RecordEntity;->canPlay:Z

    .line 95
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/biznessapps/voice_recording/RecordEntity;->duration:J

    .line 83
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/biznessapps/voice_recording/RecordEntity;->size:J

    .line 75
    return-void
.end method
