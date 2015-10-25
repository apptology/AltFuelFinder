.class public Lcom/biznessapps/music/AlbumsAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "AlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/music/AlbumsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/music/AlbumEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

.field private songsLabel:Ljava/lang/String;


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
            "Lcom/biznessapps/music/AlbumEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/AlbumEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->music_album_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 34
    sget v0, Lcom/biznessapps/layout/R$string;->songs:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/music/AlbumsAdapter;->songsLabel:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/music/AlbumsAdapter;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/AlbumsAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/music/AlbumsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/music/AlbumsAdapter;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/AlbumsAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/music/AlbumsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/music/AlbumsAdapter;)Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/music/AlbumsAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/music/AlbumsAdapter;->listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListView;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/biznessapps/music/AlbumsAdapter;->setListViewHeight(Landroid/widget/ListView;)V

    return-void
.end method

.method private static setListViewHeight(Landroid/widget/ListView;)V
    .locals 9
    .param p0, "listview"    # Landroid/widget/ListView;

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 105
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    const/4 v4, 0x0

    .line 106
    .local v4, "totalHeight":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v5

    .line 107
    .local v5, "width":I
    const/4 v7, 0x0

    invoke-interface {v1, v8, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "listItem":Landroid/view/View;
    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 109
    .local v6, "widthSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 111
    .local v0, "itemHeight":I
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    mul-int v4, v0, v7

    .line 113
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 114
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 117
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    iget-object v9, p0, Lcom/biznessapps/music/AlbumsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/biznessapps/music/AlbumsAdapter;->layoutItemResourceId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 41
    .local v6, "root":Landroid/view/View;
    sget v9, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 42
    .local v1, "arrowImage":Landroid/widget/ImageView;
    sget v9, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/widgets/RefreshableListView;

    .line 43
    .local v8, "tracksListView":Lcom/biznessapps/widgets/RefreshableListView;
    sget v9, Lcom/biznessapps/layout/R$id;->album_name_view:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    .local v0, "albumNameView":Landroid/widget/TextView;
    sget v9, Lcom/biznessapps/layout/R$id;->artist_name_view:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "artistNameView":Landroid/widget/TextView;
    sget v9, Lcom/biznessapps/layout/R$id;->songs_info_view:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 46
    .local v7, "songInfoView":Landroid/widget/TextView;
    sget v9, Lcom/biznessapps/layout/R$id;->icon_image:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 49
    .local v3, "iconImage":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/biznessapps/music/AlbumsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/music/AlbumEntity;

    .line 50
    .local v5, "item":Lcom/biznessapps/music/AlbumEntity;
    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->getArtistName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v9, p0, Lcom/biznessapps/music/AlbumsAdapter;->songsLabel:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->getSongsCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v9, Lcom/biznessapps/layout/R$color;->transparent:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 54
    iget-object v9, p0, Lcom/biznessapps/music/AlbumsAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->getAlbumUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 55
    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->hasColor()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 56
    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->getItemColor()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/biznessapps/music/AlbumsAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->getItemTextColor()I

    move-result v9

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/widget/TextView;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/biznessapps/music/AlbumsAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 60
    :cond_0
    new-instance v9, Lcom/biznessapps/music/AlbumsAdapter$1;

    invoke-direct {v9, p0, v5, v8, v1}, Lcom/biznessapps/music/AlbumsAdapter$1;-><init>(Lcom/biznessapps/music/AlbumsAdapter;Lcom/biznessapps/music/AlbumEntity;Lcom/biznessapps/widgets/RefreshableListView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->isExtended()Z

    move-result v4

    .line 85
    .local v4, "isExtended":Z
    if-eqz v4, :cond_1

    .line 86
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/biznessapps/music/AlbumEntity;->setExtended(Z)V

    .line 87
    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    .line 89
    :cond_1
    if-eqz v4, :cond_2

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v8, v9}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 90
    return-object v6

    .line 89
    :cond_2
    const/16 v9, 0x8

    goto :goto_0
.end method

.method public setListener(Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/biznessapps/music/AlbumsAdapter;->listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    .line 30
    return-void
.end method
