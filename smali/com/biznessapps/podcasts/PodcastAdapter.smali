.class public Lcom/biznessapps/podcasts/PodcastAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "PodcastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;,
        Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/rss/RssEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/rss/RssEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->podcast_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/podcasts/PodcastAdapter;)Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/podcasts/PodcastAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/podcasts/PodcastAdapter;->listener:Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;

    return-object v0
.end method

.method private updateProgressButtonState(Lcom/biznessapps/widgets/progressbar/ProgressButton;Ljava/lang/String;)V
    .locals 3
    .param p1, "currentButton"    # Lcom/biznessapps/widgets/progressbar/ProgressButton;
    .param p2, "audioUrl"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    .line 104
    .local v0, "service":Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-virtual {v0, p2}, Lcom/biznessapps/player/PlayerServiceAccessor;->isCurrentSong(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getPlayerState()Lcom/biznessapps/player/PlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v1

    .line 106
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 117
    :pswitch_0
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->WAITING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    .line 123
    .end local v1    # "state":I
    :goto_0
    return-void

    .line 108
    .restart local v1    # "state":I
    :pswitch_1
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PENDING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    goto :goto_0

    .line 111
    :pswitch_2
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PLAYING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    goto :goto_0

    .line 114
    :pswitch_3
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PAUSED:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    goto :goto_0

    .line 121
    .end local v1    # "state":I
    :cond_0
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->WAITING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    if-nez p2, :cond_2

    .line 47
    iget-object v3, p0, Lcom/biznessapps/podcasts/PodcastAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/biznessapps/podcasts/PodcastAdapter;->layoutItemResourceId:I

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;

    invoke-direct {v1, v8}, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;-><init>(Lcom/biznessapps/podcasts/PodcastAdapter$1;)V

    .line 51
    .local v1, "holder":Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;
    sget v3, Lcom/biznessapps/layout/R$id;->playlist_container:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->itemContainer:Landroid/view/ViewGroup;

    .line 52
    sget v3, Lcom/biznessapps/layout/R$id;->podcast_subtitle_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 53
    sget v3, Lcom/biznessapps/layout/R$id;->podcast_title_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 54
    sget v3, Lcom/biznessapps/layout/R$id;->progress_button:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/widgets/progressbar/ProgressButton;

    iput-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    .line 55
    iget-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    iget-object v7, p0, Lcom/biznessapps/podcasts/PodcastAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setImageColor(I)V

    .line 56
    sget v3, Lcom/biznessapps/layout/R$id;->video_image:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/podcasts/PodcastAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/rss/RssEntity;

    .line 67
    .local v2, "item":Lcom/biznessapps/rss/RssEntity;
    if-eqz v2, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 69
    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->getRssUrl()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "audioUrl":Ljava/lang/String;
    iget-object v7, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->videoImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->isAudioType()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->isAudioType()Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {v3, v6}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setVisibility(I)V

    .line 73
    iget-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->getSubtitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->itemContainer:Landroid/view/ViewGroup;

    new-instance v6, Lcom/biznessapps/podcasts/PodcastAdapter$1;

    invoke-direct {v6, p0, p1, v2}, Lcom/biznessapps/podcasts/PodcastAdapter$1;-><init>(Lcom/biznessapps/podcasts/PodcastAdapter;ILcom/biznessapps/rss/RssEntity;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    new-instance v6, Lcom/biznessapps/podcasts/PodcastAdapter$2;

    invoke-direct {v6, p0, p1, v2}, Lcom/biznessapps/podcasts/PodcastAdapter$2;-><init>(Lcom/biznessapps/podcasts/PodcastAdapter;ILcom/biznessapps/rss/RssEntity;)V

    invoke-virtual {v3, v6}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->hasColor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->getItemColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/podcasts/PodcastAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v2}, Lcom/biznessapps/rss/RssEntity;->getItemTextColor()I

    move-result v3

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/widget/TextView;

    iget-object v7, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->title:Landroid/widget/TextView;

    aput-object v7, v6, v5

    iget-object v5, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    aput-object v5, v6, v4

    invoke-virtual {p0, v3, v6}, Lcom/biznessapps/podcasts/PodcastAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 97
    :cond_1
    iget-object v3, v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    invoke-direct {p0, v3, v0}, Lcom/biznessapps/podcasts/PodcastAdapter;->updateProgressButtonState(Lcom/biznessapps/widgets/progressbar/ProgressButton;Ljava/lang/String;)V

    .line 99
    return-object p2

    .line 62
    .end local v0    # "audioUrl":Ljava/lang/String;
    .end local v1    # "holder":Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;
    .end local v2    # "item":Lcom/biznessapps/rss/RssEntity;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/biznessapps/podcasts/PodcastAdapter$ViewHolder;
    goto :goto_0

    .restart local v2    # "item":Lcom/biznessapps/rss/RssEntity;
    :cond_3
    move v3, v5

    .line 67
    goto :goto_1

    .restart local v0    # "audioUrl":Ljava/lang/String;
    :cond_4
    move v3, v5

    .line 70
    goto :goto_2
.end method

.method public setListener(Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/biznessapps/podcasts/PodcastAdapter;->listener:Lcom/biznessapps/podcasts/PodcastAdapter$OnPodcastClickListener;

    .line 34
    return-void
.end method
