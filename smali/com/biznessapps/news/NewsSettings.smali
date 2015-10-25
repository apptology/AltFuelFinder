.class public Lcom/biznessapps/news/NewsSettings;
.super Ljava/lang/Object;
.source "NewsSettings.java"


# instance fields
.field private background:Ljava/lang/String;

.field private googleSearchKey:Ljava/lang/String;

.field private googleSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation
.end field

.field private twitterSearchKey:Ljava/lang/String;

.field private twitterSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/news/NewsSettings;->googleSearchList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/news/NewsSettings;->twitterSearchList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/biznessapps/news/NewsSettings;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleSearchKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/news/NewsSettings;->googleSearchKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleSearchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/news/NewsSettings;->googleSearchList:Ljava/util/List;

    return-object v0
.end method

.method public getTwitterSearchKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/news/NewsSettings;->twitterSearchKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterSearchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/news/NewsSettings;->twitterSearchList:Ljava/util/List;

    return-object v0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/biznessapps/news/NewsSettings;->background:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setGoogleSearchKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "googleSearchKey"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/biznessapps/news/NewsSettings;->googleSearchKey:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setGoogleSearchList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "googleSearchList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/news/NewsSettings;->googleSearchList:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setTwitterSearchKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterSearchKey"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/biznessapps/news/NewsSettings;->twitterSearchKey:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTwitterSearchList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "twitterSearchList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/news/NewsSettings;->twitterSearchList:Ljava/util/List;

    .line 55
    return-void
.end method
