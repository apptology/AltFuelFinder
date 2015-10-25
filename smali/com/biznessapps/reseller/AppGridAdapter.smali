.class public Lcom/biznessapps/reseller/AppGridAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "AppGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/reseller/AppGridAdapter$1;,
        Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
        ">;"
    }
.end annotation


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
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->reseller_app_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/biznessapps/reseller/AppGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;

    .line 28
    .local v1, "item":Lcom/biznessapps/reseller/ResellerInfo$AppInfo;
    if-nez p2, :cond_0

    .line 29
    iget-object v3, p0, Lcom/biznessapps/reseller/AppGridAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/biznessapps/reseller/AppGridAdapter;->layoutItemResourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v0, Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;

    invoke-direct {v0, v5}, Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;-><init>(Lcom/biznessapps/reseller/AppGridAdapter$1;)V

    .line 32
    .local v0, "holder":Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;
    sget v3, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 33
    sget v3, Lcom/biznessapps/layout/R$id;->text_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :goto_0
    iget-object v3, v0, Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 41
    .local v2, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 42
    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 43
    iget-object v3, v0, Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 44
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 45
    iget-object v3, p0, Lcom/biznessapps/reseller/AppGridAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v3, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 46
    return-object p2

    .line 37
    .end local v0    # "holder":Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;
    .end local v2    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/reseller/AppGridAdapter$ViewHolder;
    goto :goto_0
.end method
