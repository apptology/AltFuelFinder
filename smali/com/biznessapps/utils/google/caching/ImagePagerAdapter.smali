.class public Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ImagePagerAdapter.java"


# instance fields
.field private mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field private mImageUrls:[Ljava/lang/String;

.field private mImageViewId:I

.field private mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/biznessapps/utils/google/caching/ImageFetcher;[Ljava/lang/String;II)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "fetcher"    # Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .param p3, "imageUrls"    # [Ljava/lang/String;
    .param p4, "layoutId"    # I
    .param p5, "imageViewId"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    iput-object p2, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 22
    iput-object p3, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mImageUrls:[Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mImageViewId:I

    .line 24
    iput p4, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mLayoutId:I

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mImageUrls:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    iget-object v1, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mImageUrls:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mLayoutId:I

    iget v3, p0, Lcom/biznessapps/utils/google/caching/ImagePagerAdapter;->mImageViewId:I

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageDetailFragment;->newInstance(Lcom/biznessapps/utils/google/caching/ImageFetcher;Ljava/lang/String;II)Lcom/biznessapps/utils/google/caching/ImageDetailFragment;

    move-result-object v0

    return-object v0
.end method
