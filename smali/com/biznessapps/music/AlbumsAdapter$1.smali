.class Lcom/biznessapps/music/AlbumsAdapter$1;
.super Ljava/lang/Object;
.source "AlbumsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/music/AlbumsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/music/AlbumsAdapter;

.field final synthetic val$arrowImage:Landroid/widget/ImageView;

.field final synthetic val$item:Lcom/biznessapps/music/AlbumEntity;

.field final synthetic val$tracksListView:Lcom/biznessapps/widgets/RefreshableListView;


# direct methods
.method constructor <init>(Lcom/biznessapps/music/AlbumsAdapter;Lcom/biznessapps/music/AlbumEntity;Lcom/biznessapps/widgets/RefreshableListView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->this$0:Lcom/biznessapps/music/AlbumsAdapter;

    iput-object p2, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$item:Lcom/biznessapps/music/AlbumEntity;

    iput-object p3, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$tracksListView:Lcom/biznessapps/widgets/RefreshableListView;

    iput-object p4, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$arrowImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    iget-object v4, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$item:Lcom/biznessapps/music/AlbumEntity;

    invoke-virtual {v4}, Lcom/biznessapps/music/AlbumEntity;->isExtended()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 65
    .local v0, "shouldExtend":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    new-instance v1, Lcom/biznessapps/music/TracksAdapter;

    iget-object v4, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->this$0:Lcom/biznessapps/music/AlbumsAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/music/AlbumsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$item:Lcom/biznessapps/music/AlbumEntity;

    invoke-virtual {v5}, Lcom/biznessapps/music/AlbumEntity;->getTracks()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->this$0:Lcom/biznessapps/music/AlbumsAdapter;

    # getter for: Lcom/biznessapps/music/AlbumsAdapter;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v6}, Lcom/biznessapps/music/AlbumsAdapter;->access$000(Lcom/biznessapps/music/AlbumsAdapter;)Lcom/biznessapps/api/UiSettings;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->wrapWithItemSettings(Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->this$0:Lcom/biznessapps/music/AlbumsAdapter;

    # getter for: Lcom/biznessapps/music/AlbumsAdapter;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v6}, Lcom/biznessapps/music/AlbumsAdapter;->access$100(Lcom/biznessapps/music/AlbumsAdapter;)Lcom/biznessapps/api/UiSettings;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/biznessapps/music/TracksAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 67
    .local v1, "tracksAdapter":Lcom/biznessapps/music/TracksAdapter;
    invoke-virtual {v1}, Lcom/biznessapps/music/TracksAdapter;->setShowDuration()V

    .line 68
    iget-object v4, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->this$0:Lcom/biznessapps/music/AlbumsAdapter;

    # getter for: Lcom/biznessapps/music/AlbumsAdapter;->listener:Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;
    invoke-static {v4}, Lcom/biznessapps/music/AlbumsAdapter;->access$200(Lcom/biznessapps/music/AlbumsAdapter;)Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/biznessapps/music/TracksAdapter;->setListener(Lcom/biznessapps/music/TracksAdapter$OnTrackClickListener;)V

    .line 69
    iget-object v4, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$tracksListView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v3}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 70
    iget-object v4, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$tracksListView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v4, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$tracksListView:Lcom/biznessapps/widgets/RefreshableListView;

    # invokes: Lcom/biznessapps/music/AlbumsAdapter;->setListViewHeight(Landroid/widget/ListView;)V
    invoke-static {v4}, Lcom/biznessapps/music/AlbumsAdapter;->access$300(Landroid/widget/ListView;)V

    .line 73
    iget-object v4, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$tracksListView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v3}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 74
    iget-object v3, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$arrowImage:Landroid/widget/ImageView;

    sget v4, Lcom/biznessapps/layout/R$drawable;->arrow_up:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 75
    iget-object v3, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$item:Lcom/biznessapps/music/AlbumEntity;

    invoke-virtual {v3, v2}, Lcom/biznessapps/music/AlbumEntity;->setExtended(Z)V

    .line 81
    .end local v1    # "tracksAdapter":Lcom/biznessapps/music/TracksAdapter;
    :goto_1
    return-void

    .end local v0    # "shouldExtend":Z
    :cond_0
    move v0, v3

    .line 64
    goto :goto_0

    .line 77
    .restart local v0    # "shouldExtend":Z
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$tracksListView:Lcom/biznessapps/widgets/RefreshableListView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/biznessapps/widgets/RefreshableListView;->setVisibility(I)V

    .line 78
    iget-object v2, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$arrowImage:Landroid/widget/ImageView;

    sget v4, Lcom/biznessapps/layout/R$drawable;->arrow_down:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    iget-object v2, p0, Lcom/biznessapps/music/AlbumsAdapter$1;->val$item:Lcom/biznessapps/music/AlbumEntity;

    invoke-virtual {v2, v3}, Lcom/biznessapps/music/AlbumEntity;->setExtended(Z)V

    goto :goto_1
.end method
