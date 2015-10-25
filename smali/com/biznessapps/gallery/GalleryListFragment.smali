.class public Lcom/biznessapps/gallery/GalleryListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.source "GalleryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragmentNew",
        "<",
        "Lcom/biznessapps/flickr/GalleryAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/biznessapps/gallery/GalleryListAdapter;

.field private galleryData:Lcom/biznessapps/gallery/GalleryData;

.field private preLoadedAlbum:Lcom/biznessapps/flickr/GalleryAlbum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;-><init>()V

    return-void
.end method

.method private openGalleryAlbum(Lcom/biznessapps/flickr/GalleryAlbum;ZZ)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/flickr/GalleryAlbum;
    .param p2, "tryToPreload"    # Z
    .param p3, "showParentTitle"    # Z

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/gallery/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "openGalleryIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/biznessapps/flickr/GalleryAlbum;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryListFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {p1}, Lcom/biznessapps/flickr/GalleryAlbum;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryData;->setItems(Ljava/util/List;)V

    .line 99
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryListFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {p1}, Lcom/biznessapps/flickr/GalleryAlbum;->isUseCoverflow()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryData;->setUseCoverflow(Z)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 104
    const-string v1, "GALLERY_PRELOAD_IMAGE_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    if-eqz p3, :cond_1

    .line 106
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :goto_1
    invoke-virtual {p0, v0}, Lcom/biznessapps/gallery/GalleryListFragment;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryListFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {p1}, Lcom/biznessapps/flickr/GalleryAlbum;->getUrls()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/gallery/GalleryData;->setImageItems(Ljava/util/List;)V

    goto :goto_0

    .line 108
    :cond_1
    const-string v1, "TAB_LABEL"

    invoke-virtual {p1}, Lcom/biznessapps/flickr/GalleryAlbum;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryListFragment;->sectionId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/gallery/GalleryListFragment;->findPreloadedItem(Ljava/util/List;Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->items:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 61
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 62
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->items:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/flickr/GalleryAlbum;

    .line 63
    .local v1, "item":Lcom/biznessapps/flickr/GalleryAlbum;
    invoke-direct {p0, v1, v6, v7}, Lcom/biznessapps/gallery/GalleryListFragment;->openGalleryAlbum(Lcom/biznessapps/flickr/GalleryAlbum;ZZ)V

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 81
    .end local v1    # "item":Lcom/biznessapps/flickr/GalleryAlbum;
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 67
    .local v2, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/flickr/GalleryAlbum;

    .line 68
    .restart local v1    # "item":Lcom/biznessapps/flickr/GalleryAlbum;
    invoke-virtual {p0, v1, v2}, Lcom/biznessapps/gallery/GalleryListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v1    # "item":Lcom/biznessapps/flickr/GalleryAlbum;
    :cond_2
    new-instance v3, Lcom/biznessapps/gallery/GalleryListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/gallery/GalleryListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v3, v4, v2, v5}, Lcom/biznessapps/gallery/GalleryListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->adapter:Lcom/biznessapps/gallery/GalleryListAdapter;

    .line 71
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryListFragment;->adapter:Lcom/biznessapps/gallery/GalleryListAdapter;

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryListFragment;->initListViewListener()V

    .line 73
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->preLoadedAlbum:Lcom/biznessapps/flickr/GalleryAlbum;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->preLoadedAlbum:Lcom/biznessapps/flickr/GalleryAlbum;

    invoke-virtual {v3}, Lcom/biznessapps/flickr/GalleryAlbum;->isUseAgain()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->preLoadedAlbum:Lcom/biznessapps/flickr/GalleryAlbum;

    invoke-direct {p0, v3, v7, v6}, Lcom/biznessapps/gallery/GalleryListFragment;->openGalleryAlbum(Lcom/biznessapps/flickr/GalleryAlbum;ZZ)V

    .line 75
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryListFragment;->preLoadedAlbum:Lcom/biznessapps/flickr/GalleryAlbum;

    invoke-virtual {v3, v6}, Lcom/biznessapps/flickr/GalleryAlbum;->setUseAgain(Z)V

    goto :goto_0

    .line 79
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    :cond_3
    invoke-static {p1}, Lcom/biznessapps/utils/ViewUtils;->showNoDataToast(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryManager;->getGalleryData()Lcom/biznessapps/gallery/GalleryData;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryListFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    .line 39
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryListFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v0}, Lcom/biznessapps/gallery/GalleryData;->getAlbums()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryListFragment;->items:Ljava/util/List;

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryListFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "bgUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method

.method protected findPreloadedItem(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "searchParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/GalleryAlbum;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/flickr/GalleryAlbum;

    .line 86
    .local v1, "item":Lcom/biznessapps/flickr/GalleryAlbum;
    invoke-virtual {v1}, Lcom/biznessapps/flickr/GalleryAlbum;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryListFragment;->preLoadedAlbum:Lcom/biznessapps/flickr/GalleryAlbum;

    if-nez v2, :cond_0

    .line 87
    iput-object v1, p0, Lcom/biznessapps/gallery/GalleryListFragment;->preLoadedAlbum:Lcom/biznessapps/flickr/GalleryAlbum;

    .line 88
    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryListFragment;->preLoadedAlbum:Lcom/biznessapps/flickr/GalleryAlbum;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/flickr/GalleryAlbum;->setUseAgain(Z)V

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/flickr/GalleryAlbum;
    :cond_1
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/flickr/GalleryAlbum;

    .line 55
    .local v0, "item":Lcom/biznessapps/flickr/GalleryAlbum;
    invoke-direct {p0, v0, v2, v2}, Lcom/biznessapps/gallery/GalleryListFragment;->openGalleryAlbum(Lcom/biznessapps/flickr/GalleryAlbum;ZZ)V

    .line 56
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->updateControlsWithData(Landroid/app/Activity;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/biznessapps/gallery/GalleryListFragment;->plugListView(Landroid/app/Activity;)V

    .line 34
    return-void
.end method
