.class public Lcom/biznessapps/fan_wall/CommentEntity;
.super Lcom/biznessapps/common/entities/MapEntity;
.source "CommentEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x4c95d13451fed476L


# instance fields
.field private comment:Ljava/lang/String;

.field private replies:I

.field private uploadImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/biznessapps/common/entities/MapEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "timeInMillisec"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "profileIconUrl"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/biznessapps/common/entities/MapEntity;-><init>()V

    .line 22
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/biznessapps/fan_wall/CommentEntity;->timeStamp:J

    .line 23
    iput-object p3, p0, Lcom/biznessapps/fan_wall/CommentEntity;->title:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/biznessapps/fan_wall/CommentEntity;->comment:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/biznessapps/fan_wall/CommentEntity;->imageUrl:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/fan_wall/CommentEntity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneralInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/fan_wall/CommentEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getReplies()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/biznessapps/fan_wall/CommentEntity;->replies:I

    return v0
.end method

.method public getUploadImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/fan_wall/CommentEntity;->uploadImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/biznessapps/fan_wall/CommentEntity;->comment:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setReplies(I)V
    .locals 0
    .param p1, "replies"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/biznessapps/fan_wall/CommentEntity;->replies:I

    .line 42
    return-void
.end method

.method public setUploadImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadImageUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/fan_wall/CommentEntity;->uploadImageUrl:Ljava/lang/String;

    .line 50
    return-void
.end method
