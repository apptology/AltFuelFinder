.class public Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YoutubeRssItem"
.end annotation


# instance fields
.field private countHintTextView:Landroid/widget/TextView;

.field private creatorImageView:Landroid/widget/ImageView;

.field private creatorNameView:Landroid/widget/TextView;

.field private infoContainer:Landroid/view/ViewGroup;

.field private publishedDateView:Landroid/widget/TextView;

.field private ratingAverageTextView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private viewCountTextView:Landroid/widget/TextView;

.field private youtubeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountHintTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->countHintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCreatorImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->creatorImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCreatorNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->creatorNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInfoContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->infoContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPublishedDateView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->publishedDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRatingAverageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->ratingAverageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getViewCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->viewCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getYoutubeImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->youtubeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setCountHintTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "countHintTextView"    # Landroid/widget/TextView;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->countHintTextView:Landroid/widget/TextView;

    .line 457
    return-void
.end method

.method public setCreatorImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "creatorImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->creatorImageView:Landroid/widget/ImageView;

    .line 433
    return-void
.end method

.method public setCreatorNameView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "creatorNameView"    # Landroid/widget/TextView;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->creatorNameView:Landroid/widget/TextView;

    .line 481
    return-void
.end method

.method public setInfoContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "infoContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->infoContainer:Landroid/view/ViewGroup;

    .line 416
    return-void
.end method

.method public setPublishedDateView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "publishedDateView"    # Landroid/widget/TextView;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->publishedDateView:Landroid/widget/TextView;

    .line 473
    return-void
.end method

.method public setRatingAverageTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "ratingAverageTextView"    # Landroid/widget/TextView;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->ratingAverageTextView:Landroid/widget/TextView;

    .line 465
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->titleView:Landroid/widget/TextView;

    .line 441
    return-void
.end method

.method public setViewCountTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "viewCountTextView"    # Landroid/widget/TextView;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->viewCountTextView:Landroid/widget/TextView;

    .line 449
    return-void
.end method

.method public setYoutubeImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "youtubeImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->youtubeImageView:Landroid/widget/ImageView;

    .line 424
    return-void
.end method
