.class public Lcom/biznessapps/youtube/YoutubeRssEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "YoutubeRssEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x50c148c37bfeb8f7L


# instance fields
.field private counts:Ljava/lang/String;

.field private creator:Ljava/lang/String;

.field private creatorAvatar:Ljava/lang/String;

.field private feedlinkCountHint:Ljava/lang/String;

.field private feedlinkHref:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private mediaThumbnailUrl:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private published:Ljava/lang/String;

.field private ratingAverage:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field private statisticsViewCount:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCounts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->counts:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->creatorAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->date:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 146
    iget-wide v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->timeStamp:J

    invoke-static {v0, v1}, Lcom/biznessapps/utils/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->date:Ljava/util/Date;

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/common/entities/CommonListEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFeedlinkCountHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->feedlinkCountHint:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedlinkHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->feedlinkHref:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->mediaThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPublished()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->published:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingAverage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->ratingAverage:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticsViewCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->statisticsViewCount:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public setCounts(Ljava/lang/String;)V
    .locals 0
    .param p1, "counts"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->counts:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0
    .param p1, "creator"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->creator:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setCreatorAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "creatorAvatar"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->creatorAvatar:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setFeedlinkCountHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedlinkCountHint"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->feedlinkCountHint:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setFeedlinkHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedlinkHref"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->feedlinkHref:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->link:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMediaThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaThumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->mediaThumbnailUrl:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->note:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setPublished(Ljava/lang/String;)V
    .locals 0
    .param p1, "published"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->published:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setRatingAverage(Ljava/lang/String;)V
    .locals 0
    .param p1, "ratingAverage"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->ratingAverage:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->section:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setStatisticsViewCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "statisticsViewCount"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->statisticsViewCount:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->subtitle:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeRssEntity;->summary:Ljava/lang/String;

    .line 37
    return-void
.end method
