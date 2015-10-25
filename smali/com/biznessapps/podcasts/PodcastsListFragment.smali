.class public Lcom/biznessapps/podcasts/PodcastsListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.source "PodcastsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragmentNew",
        "<",
        "Lcom/biznessapps/rss/RssEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

.field private audioButton:Landroid/widget/Button;

.field private audioButtonClickListener:Landroid/view/View$OnClickListener;

.field private audioRssItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/rss/RssEntity;",
            ">;"
        }
    .end annotation
.end field

.field private audioTabSelected:Z

.field private buttonsContainer:Landroid/view/ViewGroup;

.field private currentPlayingItem:Lcom/biznessapps/rss/RssEntity;

.field private playerListener:Lcom/biznessapps/player/PlayerStateListener;

.field private podcastClickListener:Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;

.field private videoButton:Landroid/widget/Button;

.field private videoButtonClickListener:Landroid/view/View$OnClickListener;

.field private videoRssItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/rss/RssEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioRssItems:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoRssItems:Ljava/util/List;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioTabSelected:Z

    .line 258
    new-instance v0, Lcom/biznessapps/podcasts/PodcastsListFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/podcasts/PodcastsListFragment$1;-><init>(Lcom/biznessapps/podcasts/PodcastsListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    .line 273
    new-instance v0, Lcom/biznessapps/podcasts/PodcastsListFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/podcasts/PodcastsListFragment$2;-><init>(Lcom/biznessapps/podcasts/PodcastsListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioButtonClickListener:Landroid/view/View$OnClickListener;

    .line 280
    new-instance v0, Lcom/biznessapps/podcasts/PodcastsListFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/podcasts/PodcastsListFragment$3;-><init>(Lcom/biznessapps/podcasts/PodcastsListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoButtonClickListener:Landroid/view/View$OnClickListener;

    .line 287
    new-instance v0, Lcom/biznessapps/podcasts/PodcastsListFragment$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/podcasts/PodcastsListFragment$4;-><init>(Lcom/biznessapps/podcasts/PodcastsListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->podcastClickListener:Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/podcasts/PodcastsListFragment;)Lcom/biznessapps/podcasts/PodcastAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/podcasts/PodcastsListFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/podcasts/PodcastsListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/podcasts/PodcastsListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/biznessapps/podcasts/PodcastsListFragment;->selectTab(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/podcasts/PodcastsListFragment;ILcom/biznessapps/rss/RssEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/podcasts/PodcastsListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/biznessapps/rss/RssEntity;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/podcasts/PodcastsListFragment;->playPodcast(ILcom/biznessapps/rss/RssEntity;)V

    return-void
.end method

.method private extractUrlsFromData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/rss/RssEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/player/MusicItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "previewUrls":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/player/MusicItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/rss/RssEntity;

    .line 149
    .local v1, "item":Lcom/biznessapps/rss/RssEntity;
    new-instance v2, Lcom/biznessapps/player/MusicItem;

    invoke-direct {v2}, Lcom/biznessapps/player/MusicItem;-><init>()V

    .line 150
    .local v2, "musicItem":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {v1}, Lcom/biznessapps/rss/RssEntity;->getRssUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v1}, Lcom/biznessapps/rss/RssEntity;->getRssUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/player/MusicItem;->setUrl(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Lcom/biznessapps/rss/RssEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/player/MusicItem;->setSongInfo(Ljava/lang/String;)V

    .line 153
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    .end local v1    # "item":Lcom/biznessapps/rss/RssEntity;
    .end local v2    # "musicItem":Lcom/biznessapps/player/MusicItem;
    :cond_1
    return-object v3
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/rss/RssEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/rss/RssEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    move-object v0, p1

    .line 254
    :cond_0
    return-object v0

    .line 244
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/rss/RssEntity;

    .line 245
    .local v2, "item":Lcom/biznessapps/rss/RssEntity;
    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openWebView(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    :cond_0
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 235
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private playPodcast(ILcom/biznessapps/rss/RssEntity;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/biznessapps/rss/RssEntity;

    .prologue
    .line 195
    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p2}, Lcom/biznessapps/rss/RssEntity;->canPlay()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 197
    new-instance v1, Lcom/biznessapps/player/MusicItem;

    invoke-direct {v1}, Lcom/biznessapps/player/MusicItem;-><init>()V

    .line 198
    .local v1, "musicItem":Lcom/biznessapps/player/MusicItem;
    invoke-virtual {p2}, Lcom/biznessapps/rss/RssEntity;->getRssUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/player/MusicItem;->setUrl(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Lcom/biznessapps/rss/RssEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/player/MusicItem;->setSongInfo(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->getCurrentSong()Lcom/biznessapps/player/MusicItem;

    move-result-object v0

    .line 202
    .local v0, "currentSong":Lcom/biznessapps/player/MusicItem;
    if-eqz v0, :cond_3

    .line 203
    invoke-virtual {v0}, Lcom/biznessapps/player/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/biznessapps/rss/RssEntity;->getRssUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 204
    .local v2, "sameSong":Z
    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->getPlayerState()Lcom/biznessapps/player/PlayerState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->pause()V

    .line 224
    .end local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .end local v1    # "musicItem":Lcom/biznessapps/player/MusicItem;
    .end local v2    # "sameSong":Z
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .restart local v1    # "musicItem":Lcom/biznessapps/player/MusicItem;
    .restart local v2    # "sameSong":Z
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 212
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    goto :goto_0

    .line 215
    .end local v2    # "sameSong":Z
    :cond_3
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Lcom/biznessapps/player/MusicItem;)V

    goto :goto_0

    .line 220
    .end local v0    # "currentSong":Lcom/biznessapps/player/MusicItem;
    .end local v1    # "musicItem":Lcom/biznessapps/player/MusicItem;
    :cond_4
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 221
    invoke-virtual {p2}, Lcom/biznessapps/rss/RssEntity;->getRssUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/biznessapps/podcasts/PodcastsListFragment;->openWebView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 9
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 114
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 115
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    invoke-static {v3}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v0

    .line 116
    .local v0, "hasNoData":Z
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/biznessapps/podcasts/PodcastsListFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    .line 144
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioRssItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 120
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoRssItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/rss/RssEntity;

    .line 122
    .local v2, "item":Lcom/biznessapps/rss/RssEntity;
    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->isAudioType()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioRssItems:Ljava/util/List;

    iget-object v7, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioRssItems:Ljava/util/List;

    invoke-virtual {p0, v2, v7}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_1
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoRssItems:Ljava/util/List;

    iget-object v7, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoRssItems:Ljava/util/List;

    invoke-virtual {p0, v2, v7}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    .end local v2    # "item":Lcom/biznessapps/rss/RssEntity;
    :cond_2
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioRssItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 131
    .local v4, "noAudio":Z
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoRssItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    .line 132
    .local v5, "noVideo":Z
    if-nez v4, :cond_3

    if-eqz v5, :cond_5

    .line 133
    :cond_3
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->buttonsContainer:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 136
    if-eqz v4, :cond_4

    .line 137
    iput-boolean v8, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioTabSelected:Z

    .line 142
    :cond_4
    :goto_2
    iget-boolean v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioTabSelected:Z

    invoke-direct {p0, v6}, Lcom/biznessapps/podcasts/PodcastsListFragment;->selectTab(Z)V

    goto :goto_0

    .line 140
    :cond_5
    iget-object v6, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->buttonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method private selectTab(Z)V
    .locals 4
    .param p1, "audioTab"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioTabSelected:Z

    if-eq v0, p1, :cond_1

    .line 161
    :cond_0
    iput-boolean p1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioTabSelected:Z

    .line 163
    iget-boolean v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioTabSelected:Z

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Lcom/biznessapps/podcasts/PodcastAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioRssItems:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/podcasts/PodcastAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->podcastClickListener:Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/podcasts/PodcastAdapter;->setListener(Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->updateUI()V

    .line 173
    return-void

    .line 166
    :cond_2
    new-instance v0, Lcom/biznessapps/podcasts/PodcastAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoRssItems:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/podcasts/PodcastAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

    goto :goto_0
.end method

.method private updateButtonState()V
    .locals 4

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioTabSelected:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 186
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 189
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->adapter:Lcom/biznessapps/podcasts/PodcastAdapter;

    invoke-virtual {v0}, Lcom/biznessapps/podcasts/PodcastAdapter;->notifyDataSetChanged()V

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->updateButtonState()V

    .line 181
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PODCAST_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->items:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/biznessapps/layout/R$layout;->podcast_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    const-string v0, "rss.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->initViews(Landroid/view/ViewGroup;)V

    .line 53
    sget v0, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->buttonsContainer:Landroid/view/ViewGroup;

    .line 54
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->buttonsContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 56
    sget v0, Lcom/biznessapps/layout/R$id;->audio_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioButton:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->audioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/biznessapps/layout/R$id;->video_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->videoButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    invoke-static {v0}, Lcom/biznessapps/player/PlayerService;->addListener(Lcom/biznessapps/player/PlayerStateListener;)V

    .line 63
    invoke-direct {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->updateUI()V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    sget v1, Lcom/biznessapps/layout/R$layout;->podcast_layout:I

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->root:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->initSettingsData()V

    .line 76
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 77
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->loadData()V

    .line 79
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->openCustomDialogs()V

    .line 80
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->playerListener:Lcom/biznessapps/player/PlayerStateListener;

    invoke-static {v0}, Lcom/biznessapps/player/PlayerService;->removeListener(Lcom/biznessapps/player/PlayerStateListener;)V

    .line 87
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 297
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseRssList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->items:Ljava/util/List;

    .line 97
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PODCAST_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->updateControlsWithData(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {p0}, Lcom/biznessapps/podcasts/PodcastsListFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/podcasts/PodcastsListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/biznessapps/podcasts/PodcastsListFragment;->extractUrlsFromData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->addUrlsQueue(Ljava/util/List;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/biznessapps/podcasts/PodcastsListFragment;->plugListView(Landroid/app/Activity;)V

    .line 105
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
