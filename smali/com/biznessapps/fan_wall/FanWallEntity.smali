.class public Lcom/biznessapps/fan_wall/FanWallEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "FanWallEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x38b2ccf432a943c1L


# instance fields
.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fan_wall/FanWallEntity;->comments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addComment(Lcom/biznessapps/fan_wall/CommentEntity;)V
    .locals 1
    .param p1, "comment"    # Lcom/biznessapps/fan_wall/CommentEntity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallEntity;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallEntity;->comments:Ljava/util/List;

    return-object v0
.end method

.method public setComments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanWallEntity;->comments:Ljava/util/List;

    .line 25
    return-void
.end method
