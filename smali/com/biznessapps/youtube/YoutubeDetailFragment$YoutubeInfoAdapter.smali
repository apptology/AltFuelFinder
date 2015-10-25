.class public Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "YoutubeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/youtube/YoutubeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YoutubeInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;>;"
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .line 366
    sget v0, Lcom/biznessapps/layout/R$layout;->youtube_info_item_layout:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 367
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 374
    if-nez p2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 378
    new-instance v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;

    invoke-direct {v0, v4}, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment$1;)V

    .line 379
    .local v0, "holder":Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->label_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;->label:Landroid/widget/TextView;

    .line 380
    sget v2, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 381
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 388
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;

    .line 389
    .local v1, "item":Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;
    if-eqz v1, :cond_0

    .line 390
    iget-object v2, v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v2, v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->getLabelValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;->title:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;->label:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 398
    :cond_0
    return-object p2

    .line 384
    .end local v0    # "holder":Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;
    goto :goto_0
.end method
