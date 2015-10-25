.class public Lcom/biznessapps/utils/google/caching/ImageGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageGridAdapter.java"


# instance fields
.field private mActionBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field private mImageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private mItemHeight:I

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biznessapps/utils/google/caching/ImageFetcher;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageFetcher"    # Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/biznessapps/utils/google/caching/ImageFetcher;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mItemHeight:I

    .line 24
    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    .line 25
    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mActionBarHeight:I

    .line 31
    iput-object p2, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 32
    iput-object p3, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageUrls:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageViewLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageUrls:Ljava/util/List;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    if-ge p1, v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    sub-int v0, p1, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    iget v1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    if-ge p1, v1, :cond_1

    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 79
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mActionBarHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p2

    .line 102
    :goto_0
    return-object v0

    .line 86
    :cond_1
    if-nez p2, :cond_3

    .line 87
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "imageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageViewLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mItemHeight:I

    if-eq v1, v2, :cond_2

    .line 96
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageViewLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageUrls:Ljava/util/List;

    iget v3, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    sub-int v3, p1, v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadGalleryImage(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_3
    move-object v0, p2

    .line 91
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public setItemHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 112
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mItemHeight:I

    if-ne p1, v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_0
    iput p1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mItemHeight:I

    .line 116
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mItemHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageViewLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 118
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->setImageSize(I)V

    .line 119
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/biznessapps/utils/google/caching/ImageGridAdapter;->mNumColumns:I

    .line 124
    return-void
.end method
