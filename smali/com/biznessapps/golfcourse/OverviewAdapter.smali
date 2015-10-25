.class public Lcom/biznessapps/golfcourse/OverviewAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "OverviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mUnitType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p4, "unitType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_overview_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 42
    iput p4, p0, Lcom/biznessapps/golfcourse/OverviewAdapter;->mUnitType:I

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    monitor-enter p0

    if-nez p2, :cond_0

    .line 48
    :try_start_0
    iget-object v11, p0, Lcom/biznessapps/golfcourse/OverviewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v12, p0, Lcom/biznessapps/golfcourse/OverviewAdapter;->layoutItemResourceId:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    :cond_0
    sget v11, Lcom/biznessapps/layout/R$id;->tvHoleNumber:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 52
    .local v8, "tvHoleNumber":Landroid/widget/TextView;
    sget v11, Lcom/biznessapps/layout/R$id;->tvPars:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 53
    .local v9, "tvPars":Landroid/widget/TextView;
    sget v11, Lcom/biznessapps/layout/R$id;->tvYards:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 54
    .local v10, "tvYards":Landroid/widget/TextView;
    sget v11, Lcom/biznessapps/layout/R$id;->ivHoleThumbnail:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 56
    .local v4, "ivThumbnail":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/OverviewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 57
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Hole;

    .line 59
    .local v1, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v11, v1, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$string;->pars:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "pars":Ljava/lang/String;
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v1, Lcom/biznessapps/golfcourse/model/Hole;->tee1:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "tee":Ljava/lang/String;
    iget v11, p0, Lcom/biznessapps/golfcourse/OverviewAdapter;->mUnitType:I

    packed-switch v11, :pswitch_data_0

    .line 72
    :goto_0
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v11, v1, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 76
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v2

    .line 78
    .local v2, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v5, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 79
    .local v5, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 80
    iget-object v11, v1, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 82
    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 83
    new-instance v11, Lcom/biznessapps/golfcourse/OverviewAdapter$1;

    invoke-direct {v11, p0}, Lcom/biznessapps/golfcourse/OverviewAdapter$1;-><init>(Lcom/biznessapps/golfcourse/OverviewAdapter;)V

    invoke-virtual {v5, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 92
    invoke-virtual {v2, v5}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 97
    .end local v2    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v5    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :goto_1
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 98
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemColor()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/biznessapps/golfcourse/OverviewAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v12

    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemTextColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v11, v0

    invoke-virtual {v12, v13, v11}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    monitor-exit p0

    return-object p2

    .line 66
    :pswitch_0
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$string;->yards:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    goto/16 :goto_0

    .line 69
    :pswitch_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/OverviewAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$string;->meters:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 94
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 47
    .end local v1    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v3    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v4    # "ivThumbnail":Landroid/widget/ImageView;
    .end local v6    # "pars":Ljava/lang/String;
    .end local v7    # "tee":Ljava/lang/String;
    .end local v8    # "tvHoleNumber":Landroid/widget/TextView;
    .end local v9    # "tvPars":Landroid/widget/TextView;
    .end local v10    # "tvYards":Landroid/widget/TextView;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
