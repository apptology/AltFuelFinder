.class public Lcom/biznessapps/rss/RssEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "RssEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x33dccb852b8ab700L


# instance fields
.field private creator:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private isAudioType:Z

.field private link:Ljava/lang/String;

.field private rssUrl:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tintColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public canPlay()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->rssUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->rssUrl:Ljava/lang/String;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->rssUrl:Ljava/lang/String;

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->rssUrl:Ljava/lang/String;

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->rssUrl:Ljava/lang/String;

    const-string v1, ".flac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getRssUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->rssUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTintColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/biznessapps/rss/RssEntity;->tintColor:Ljava/lang/String;

    return-object v0
.end method

.method public isAudioType()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/biznessapps/rss/RssEntity;->isAudioType:Z

    return v0
.end method

.method public setAudioType(Z)V
    .locals 0
    .param p1, "isAudioType"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/biznessapps/rss/RssEntity;->isAudioType:Z

    .line 115
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0
    .param p1, "creator"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->creator:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->date:Ljava/util/Date;

    .line 102
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->icon:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->link:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRssUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rssUrl"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->rssUrl:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->section:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->subtitle:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->summary:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTintColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "tintColor"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/biznessapps/rss/RssEntity;->tintColor:Ljava/lang/String;

    .line 98
    return-void
.end method
