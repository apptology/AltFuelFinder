.class public Lcom/biznessapps/music/TracksAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "TracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/music/TracksAdapter$ViewHolder;,
        Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/music/PlaylistEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARTIST_NAME_FORMAT:Ljava/lang/String; = "%s %s"

.field private static final DURATION_FORMAT:Ljava/lang/String; = "%02d:%02d"


# instance fields
.field private listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

.field private showDuration:Z


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
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->music_track_item_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/music/TracksAdapter;)Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/TracksAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/music/TracksAdapter;->listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    return-object v0
.end method

.method private updateProgressButtonState(Lcom/biznessapps/widgets/progressbar/ProgressButton;Ljava/lang/String;)V
    .locals 3
    .param p1, "currentButton"    # Lcom/biznessapps/widgets/progressbar/ProgressButton;
    .param p2, "audioUrl"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    .line 116
    .local v0, "service":Lcom/biznessapps/player/PlayerServiceAccessor;
    invoke-virtual {v0, p2}, Lcom/biznessapps/player/PlayerServiceAccessor;->isCurrentSong(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getPlayerState()Lcom/biznessapps/player/PlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/player/PlayerState;->getState()I

    move-result v1

    .line 118
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 129
    :pswitch_0
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->WAITING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    .line 135
    .end local v1    # "state":I
    :goto_0
    return-void

    .line 120
    .restart local v1    # "state":I
    :pswitch_1
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PENDING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    goto :goto_0

    .line 123
    :pswitch_2
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PLAYING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    goto :goto_0

    .line 126
    :pswitch_3
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PAUSED:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    goto :goto_0

    .line 133
    .end local v1    # "state":I
    :cond_0
    sget-object v2, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->WAITING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {p1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setState(Lcom/biznessapps/widgets/progressbar/ProgressButton$States;)V

    goto :goto_0

    .line 118
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
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "holder":Lcom/biznessapps/music/TracksAdapter$ViewHolder;
    if-nez p2, :cond_3

    .line 54
    new-instance v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;

    .end local v2    # "holder":Lcom/biznessapps/music/TracksAdapter$ViewHolder;
    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/biznessapps/music/TracksAdapter$ViewHolder;-><init>(Lcom/biznessapps/music/TracksAdapter$1;)V

    .line 55
    .restart local v2    # "holder":Lcom/biznessapps/music/TracksAdapter$ViewHolder;
    iget-object v6, p0, Lcom/biznessapps/music/TracksAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/biznessapps/music/TracksAdapter;->layoutItemResourceId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    sget v6, Lcom/biznessapps/layout/R$id;->playlist_container:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->itemContainer:Landroid/view/ViewGroup;

    .line 57
    sget v6, Lcom/biznessapps/layout/R$id;->playlist_title_text:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 58
    sget v6, Lcom/biznessapps/layout/R$id;->playlist_bottom_text:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->bottomTextView:Landroid/widget/TextView;

    .line 59
    sget v6, Lcom/biznessapps/layout/R$id;->buy_icon:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->buyImage:Landroid/widget/ImageView;

    .line 60
    sget v6, Lcom/biznessapps/layout/R$id;->progress_button:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/widgets/progressbar/ProgressButton;

    iput-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    .line 61
    iget-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    iget-object v7, p0, Lcom/biznessapps/music/TracksAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setImageColor(I)V

    .line 62
    iget-object v6, p0, Lcom/biznessapps/music/TracksAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v6

    iget-object v7, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->buyImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/music/TracksAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/music/PlaylistEntity;

    .line 69
    .local v3, "item":Lcom/biznessapps/music/PlaylistEntity;
    if-eqz v3, :cond_2

    .line 70
    iget-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-boolean v6, p0, Lcom/biznessapps/music/TracksAdapter;->showDuration:Z

    if-eqz v6, :cond_4

    .line 72
    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->getDuration()I

    move-result v1

    .line 73
    .local v1, "duration":I
    div-int/lit8 v4, v1, 0x3c

    .line 74
    .local v4, "minCount":I
    rem-int/lit8 v5, v1, 0x3c

    .line 75
    .local v5, "secCount":I
    iget-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->bottomTextView:Landroid/widget/TextView;

    const-string v7, "%02d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v1    # "duration":I
    .end local v4    # "minCount":I
    .end local v5    # "secCount":I
    :cond_0
    :goto_1
    iget-object v7, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->buyImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->getItune()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->buyImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/biznessapps/music/TracksAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/biznessapps/music/TracksAdapter$1;-><init>(Lcom/biznessapps/music/TracksAdapter;Lcom/biznessapps/music/PlaylistEntity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    new-instance v7, Lcom/biznessapps/music/TracksAdapter$2;

    invoke-direct {v7, p0, v3}, Lcom/biznessapps/music/TracksAdapter$2;-><init>(Lcom/biznessapps/music/TracksAdapter;Lcom/biznessapps/music/PlaylistEntity;)V

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/progressbar/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->itemContainer:Landroid/view/ViewGroup;

    new-instance v7, Lcom/biznessapps/music/TracksAdapter$3;

    invoke-direct {v7, p0, v3}, Lcom/biznessapps/music/TracksAdapter$3;-><init>(Lcom/biznessapps/music/TracksAdapter;Lcom/biznessapps/music/PlaylistEntity;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->hasColor()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->getItemColor()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/biznessapps/music/TracksAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->getItemTextColor()I

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/widget/TextView;

    const/4 v8, 0x0

    iget-object v9, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->bottomTextView:Landroid/widget/TextView;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/biznessapps/music/TracksAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 109
    :cond_1
    iget-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->progressButton:Lcom/biznessapps/widgets/progressbar/ProgressButton;

    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->getPreviewUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/biznessapps/music/TracksAdapter;->updateProgressButtonState(Lcom/biznessapps/widgets/progressbar/ProgressButton;Ljava/lang/String;)V

    .line 111
    :cond_2
    return-object p2

    .line 65
    .end local v3    # "item":Lcom/biznessapps/music/PlaylistEntity;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/biznessapps/music/TracksAdapter$ViewHolder;
    check-cast v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/biznessapps/music/TracksAdapter$ViewHolder;
    goto/16 :goto_0

    .line 77
    .restart local v3    # "item":Lcom/biznessapps/music/PlaylistEntity;
    :cond_4
    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/biznessapps/music/TracksAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->artist:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "albumTag":Ljava/lang/String;
    iget-object v6, v2, Lcom/biznessapps/music/TracksAdapter$ViewHolder;->bottomTextView:Landroid/widget/TextView;

    const-string v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/biznessapps/music/PlaylistEntity;->getArtist()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 83
    .end local v0    # "albumTag":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x4

    goto/16 :goto_2
.end method

.method public setListener(Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/biznessapps/music/TracksAdapter;->listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    .line 44
    return-void
.end method

.method public setShowDuration()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/music/TracksAdapter;->showDuration:Z

    .line 40
    return-void
.end method
