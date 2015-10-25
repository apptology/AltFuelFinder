.class public Lcom/biznessapps/fan_wall/NewFanWallAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "NewFanWallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/fan_wall/CommentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

.field private isParentAdapter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isParentAdapter"    # Z
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;Z",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->new_fan_wall_item_layout:I

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 106
    new-instance v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fan_wall/NewFanWallAdapter$1;-><init>(Lcom/biznessapps/fan_wall/NewFanWallAdapter;)V

    iput-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .line 30
    iput-boolean p3, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->isParentAdapter:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    if-nez p2, :cond_1

    .line 37
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->layoutItemResourceId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;-><init>(Lcom/biznessapps/fan_wall/NewFanWallAdapter$1;)V

    .line 40
    .local v0, "holder":Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;
    sget v6, Lcom/biznessapps/layout/R$id;->fan_wall_comment:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->commentView:Landroid/widget/TextView;

    .line 41
    sget v6, Lcom/biznessapps/layout/R$id;->fan_wall_name:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 42
    sget v6, Lcom/biznessapps/layout/R$id;->fan_wall_time_ago:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->timeAgoView:Landroid/widget/TextView;

    .line 43
    sget v6, Lcom/biznessapps/layout/R$id;->fan_wall_comment_replies:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->repliesView:Landroid/widget/TextView;

    .line 44
    sget v6, Lcom/biznessapps/layout/R$id;->fan_wall_comment_item_image:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/widgets/LoaderImageView;

    iput-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->itemImage:Lcom/biznessapps/widgets/LoaderImageView;

    .line 45
    sget v6, Lcom/biznessapps/layout/R$id;->fan_wall_upload_image:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/widgets/LoaderImageView;

    iput-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->uploadedImage:Lcom/biznessapps/widgets/LoaderImageView;

    .line 46
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v6

    iget-object v7, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->repliesView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->repliesView:Landroid/widget/TextView;

    sget v7, Lcom/biznessapps/layout/R$string;->reply:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->repliesView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 55
    .local v1, "item":Lcom/biznessapps/fan_wall/CommentEntity;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getComment()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "text":Ljava/lang/String;
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->commentView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->timeAgoView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/biznessapps/utils/DateUtils;->getStringInterval(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->itemImage:Lcom/biznessapps/widgets/LoaderImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/LoaderImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->itemImage:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v6, v1}, Lcom/biznessapps/widgets/LoaderImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 66
    .local v2, "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 67
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->itemImage:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v2, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 68
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 69
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 70
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    invoke-virtual {v2, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 72
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->itemImage:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 77
    .end local v2    # "param":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :goto_1
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->uploadedImage:Lcom/biznessapps/widgets/LoaderImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/LoaderImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getUploadImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->uploadedImage:Lcom/biznessapps/widgets/LoaderImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/LoaderImageView;->setVisibility(I)V

    .line 81
    new-instance v3, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 82
    .local v3, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->uploadedImage:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v3, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 83
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 84
    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getUploadImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 85
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 86
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 87
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 89
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->uploadedImage:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getUploadImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 94
    .end local v3    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :goto_2
    iget-object v7, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->repliesView:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->isParentAdapter:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getReplies()I

    move-result v6

    if-lez v6, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->replies:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "replies":Ljava/lang/String;
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->repliesView:Landroid/widget/TextView;

    const-string v7, "%d %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getReplies()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v4    # "replies":Ljava/lang/String;
    :goto_4
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/biznessapps/fan_wall/NewFanWallAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .end local v5    # "text":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 51
    .end local v0    # "holder":Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;
    goto/16 :goto_0

    .line 74
    .restart local v1    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_2
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->itemImage:Lcom/biznessapps/widgets/LoaderImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/biznessapps/widgets/LoaderImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_1

    .line 91
    :cond_3
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->uploadedImage:Lcom/biznessapps/widgets/LoaderImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/LoaderImageView;->setVisibility(I)V

    goto :goto_2

    .line 94
    :cond_4
    const/16 v6, 0x8

    goto :goto_3

    .line 99
    :cond_5
    iget-object v6, v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter$ViewHolder;->repliesView:Landroid/widget/TextView;

    sget v7, Lcom/biznessapps/layout/R$string;->reply:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method
