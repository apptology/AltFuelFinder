.class public Lcom/biznessapps/utils/google/caching/ImageDetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageDetailFragment.java"


# static fields
.field private static final IMAGE_DATA_EXTRA:Ljava/lang/String; = "extra_image_data"

.field private static final IMAGE_VIEW_EXTRA:Ljava/lang/String; = "extra_imageview_id"

.field private static final LAYOUT_EXTRA:Ljava/lang/String; = "extra_layout_id"


# instance fields
.field private mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field private mImageUrl:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewId:I

.field private mLayoutId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 63
    return-void
.end method

.method public static newInstance(Lcom/biznessapps/utils/google/caching/ImageFetcher;Ljava/lang/String;II)Lcom/biznessapps/utils/google/caching/ImageDetailFragment;
    .locals 3
    .param p0, "fetcher"    # Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "layoutId"    # I
    .param p3, "imageViewId"    # I

    .prologue
    .line 47
    new-instance v1, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;

    invoke-direct {v1}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;-><init>()V

    .line 48
    .local v1, "f":Lcom/biznessapps/utils/google/caching/ImageDetailFragment;
    invoke-virtual {v1, p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->setImageFetcher(Lcom/biznessapps/utils/google/caching/ImageFetcher;)V

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_image_data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "extra_layout_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    const-string v2, "extra_imageview_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadAppImage(Ljava/lang/String;Landroid/view/View;)V

    .line 96
    const-class v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/biznessapps/utils/google/caching/Utils;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_image_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_layout_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mLayoutId:I

    .line 77
    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_imageview_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageViewId:I

    .line 78
    return-void

    :cond_1
    move-object v0, v1

    .line 75
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 76
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    iget v1, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "v":Landroid/view/View;
    iget v1, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    .line 86
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker;->cancelWork(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setImageFetcher(Lcom/biznessapps/utils/google/caching/ImageFetcher;)V
    .locals 0
    .param p1, "fetcher"    # Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 67
    return-void
.end method
