.class public Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "AroundUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/around_us/AroundUsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AroundUsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
        ">;"
    }
.end annotation


# instance fields
.field private greenColor:Ljava/lang/String;

.field private greenIconDrawable:Landroid/graphics/drawable/Drawable;

.field private purpleColor:Ljava/lang/String;

.field private purpleIconDrawable:Landroid/graphics/drawable/Drawable;

.field private redColor:Ljava/lang/String;

.field private redIconDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsActivity;


# direct methods
.method public constructor <init>(Lcom/biznessapps/around_us/AroundUsActivity;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    .line 472
    sget v0, Lcom/biznessapps/layout/R$layout;->around_us_row:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 473
    invoke-virtual {p1}, Lcom/biznessapps/around_us/AroundUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->around_us_red_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->redIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 474
    invoke-virtual {p1}, Lcom/biznessapps/around_us/AroundUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->around_us_green_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->greenIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 475
    invoke-virtual {p1}, Lcom/biznessapps/around_us/AroundUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->around_us_purple_icon_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->purpleIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;
    invoke-static {p1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$200(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/around_us/AroundUsEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity;->getGreenColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->greenColor:Ljava/lang/String;

    .line 477
    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;
    invoke-static {p1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$200(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/around_us/AroundUsEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity;->getRedColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->redColor:Ljava/lang/String;

    .line 478
    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity;
    invoke-static {p1}, Lcom/biznessapps/around_us/AroundUsActivity;->access$200(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/around_us/AroundUsEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity;->getPurpleColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->purpleColor:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->redColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->redIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->purpleColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->purpleIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->greenColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->greenIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 482
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 487
    if-nez p2, :cond_2

    .line 488
    iget-object v5, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->layoutItemResourceId:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 489
    new-instance v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;

    invoke-direct {v0, v7}, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;-><init>(Lcom/biznessapps/around_us/AroundUsActivity$1;)V

    .line 491
    .local v0, "holder":Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;
    sget v5, Lcom/biznessapps/layout/R$id;->around_us_description:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 492
    sget v5, Lcom/biznessapps/layout/R$id;->around_us_distance:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->distanceView:Landroid/widget/TextView;

    .line 493
    sget v5, Lcom/biznessapps/layout/R$id;->around_us_category_name:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->categoryView:Landroid/widget/TextView;

    .line 494
    sget v5, Lcom/biznessapps/layout/R$id;->icon_image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 495
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 500
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 501
    .local v2, "item":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    iget-object v5, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->categoryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getCategoryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v5, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->descriptionView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->distanceView:Landroid/widget/TextView;

    invoke-static {v5, v6, v2}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 506
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 507
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getItemColor()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getItemTextColor()I

    move-result v5

    new-array v6, v9, [Landroid/widget/TextView;

    iget-object v7, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->descriptionView:Landroid/widget/TextView;

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 511
    :cond_0
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v3

    .line 512
    .local v3, "itemColor":I
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/widget/TextView;

    iget-object v6, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->categoryView:Landroid/widget/TextView;

    aput-object v6, v5, v8

    iget-object v6, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->distanceView:Landroid/widget/TextView;

    aput-object v6, v5, v9

    invoke-virtual {p0, v3, v5}, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 513
    const/4 v4, 0x0

    .line 514
    .local v4, "leftDrawableIndex":I
    iget-object v5, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->distanceView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v3, v5}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 517
    sget v5, Lcom/biznessapps/layout/R$id;->icon_image_border:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 518
    .local v1, "iconBorderView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 520
    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 521
    iget-object v5, p0, Lcom/biznessapps/around_us/AroundUsActivity$AroundUsListAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v2}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v7}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledImage(Ljava/lang/String;Landroid/view/View;)V

    .line 523
    :cond_1
    invoke-virtual {p2, v8}, Landroid/view/View;->setClickable(Z)V

    .line 524
    return-object p2

    .line 497
    .end local v0    # "holder":Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;
    .end local v1    # "iconBorderView":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    .end local v3    # "itemColor":I
    .end local v4    # "leftDrawableIndex":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/around_us/AroundUsActivity$ViewHolder;
    goto/16 :goto_0
.end method
