.class public Lcom/biznessapps/news/SearchEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "SearchEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x219638ce318c5f79L


# instance fields
.field private itemId:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private newsDate:Ljava/lang/String;

.field private newsSource:I

.field private newsType:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field private sectionId:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 71
    iget-wide v0, p0, Lcom/biznessapps/news/SearchEntity;->timeStamp:J

    invoke-static {v0, v1}, Lcom/biznessapps/utils/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/news/SearchEntity;->date:Ljava/util/Date;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDateTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "time":Ljava/util/Date;
    :try_start_0
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/biznessapps/news/SearchEntity;->newsDate:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/Date;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "time":Ljava/util/Date;
    .local v2, "time":Ljava/util/Date;
    move-object v1, v2

    .line 66
    .end local v2    # "time":Ljava/util/Date;
    .restart local v1    # "time":Ljava/util/Date;
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->newsDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsSource()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/biznessapps/news/SearchEntity;->newsSource:I

    return v0
.end method

.method public getNewsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->newsType:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->sectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/biznessapps/news/SearchEntity;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->itemId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->link:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setNewsDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsDate"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->newsDate:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setNewsSource(I)V
    .locals 0
    .param p1, "newsSource"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/biznessapps/news/SearchEntity;->newsSource:I

    .line 142
    return-void
.end method

.method public setNewsType(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsType"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->newsType:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->section:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setSectionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->sectionId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->tabId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->text:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/biznessapps/news/SearchEntity;->thumbnail:Ljava/lang/String;

    .line 126
    return-void
.end method
