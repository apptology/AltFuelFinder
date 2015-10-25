.class public Lcom/biznessapps/widgets/LoaderImageView;
.super Landroid/widget/FrameLayout;
.source "LoaderImageView.java"


# static fields
.field private static final COMPLETE:I = 0x0

.field private static final FAILED:I = 0x1

.field private static final LOADING_COMPLETED:I = 0x2


# instance fields
.field private final imageLoadedHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field private mImageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

.field private mImageView:Landroid/widget/ImageView;

.field private mSpinner:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/biznessapps/widgets/LoaderImageView$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/widgets/LoaderImageView$1;-><init>(Lcom/biznessapps/widgets/LoaderImageView;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->imageLoadedHandler:Landroid/os/Handler;

    .line 208
    new-instance v1, Lcom/biznessapps/widgets/LoaderImageView$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/LoaderImageView$2;-><init>(Lcom/biznessapps/widgets/LoaderImageView;)V

    iput-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .line 53
    const-string v1, "image"

    invoke-interface {p2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/LoaderImageView;->instantiate(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/biznessapps/widgets/LoaderImageView;->instantiate(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/biznessapps/widgets/LoaderImageView$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/LoaderImageView$1;-><init>(Lcom/biznessapps/widgets/LoaderImageView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->imageLoadedHandler:Landroid/os/Handler;

    .line 208
    new-instance v0, Lcom/biznessapps/widgets/LoaderImageView$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/LoaderImageView$2;-><init>(Lcom/biznessapps/widgets/LoaderImageView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/LoaderImageView;->instantiate(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/LoaderImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/widgets/LoaderImageView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/LoaderImageView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/LoaderImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/LoaderImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/LoaderImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->imageLoadedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private instantiate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mContext:Landroid/content/Context;

    .line 114
    :try_start_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 116
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    .line 117
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 121
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 124
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;

    .line 125
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 130
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/LoaderImageView;->addView(Landroid/view/View;)V

    .line 133
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/LoaderImageView;->addView(Landroid/view/View;)V

    .line 135
    if-eqz p2, :cond_0

    .line 136
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected getDefaultImageLoaderParams(Ljava/lang/String;)Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 197
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 199
    .local v0, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 200
    iget-object v1, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 201
    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 202
    invoke-virtual {v0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 205
    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    return-void
.end method

.method public setImageBitmap(IZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "imgSrc"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 85
    if-eqz p2, :cond_1

    .line 86
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imgSrc"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 75
    if-eqz p2, :cond_1

    .line 76
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .prologue
    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    if-nez p2, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/LoaderImageView;->getDefaultImageLoaderParams(Ljava/lang/String;)Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    move-result-object p2

    .line 155
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .line 157
    .local v1, "oldParams":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    invoke-virtual {p2, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 158
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 159
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 161
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView;->mImageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v2, p2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "oldParams":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method
