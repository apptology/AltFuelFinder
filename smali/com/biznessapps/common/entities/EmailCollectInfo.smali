.class public Lcom/biznessapps/common/entities/EmailCollectInfo;
.super Ljava/lang/Object;
.source "EmailCollectInfo.java"


# instance fields
.field private body:Ljava/lang/String;

.field private tabIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/entities/EmailCollectInfo;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getTabIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/common/entities/EmailCollectInfo;->tabIds:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/entities/EmailCollectInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/common/entities/EmailCollectInfo;->body:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTabIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "tabIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/common/entities/EmailCollectInfo;->tabIds:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/biznessapps/common/entities/EmailCollectInfo;->title:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public showForTab(Ljava/lang/String;)Z
    .locals 2
    .param p1, "currentTabId"    # Ljava/lang/String;

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/biznessapps/common/entities/EmailCollectInfo;->tabIds:Ljava/util/List;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/entities/EmailCollectInfo;->tabIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
