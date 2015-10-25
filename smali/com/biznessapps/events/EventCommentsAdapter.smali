.class public Lcom/biznessapps/events/EventCommentsAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "EventCommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;
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


# static fields
.field public static final ABSOLUTE_TIMESTAMP:I = 0x0

.field public static final OFFSET_TIMESTAMP_FROM_SERVER:I = 0x1


# instance fields
.field private imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

.field private timestampType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timestampType"    # I
    .param p4, "layoutId"    # I
    .param p5, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/events/EventCommentsAdapter;->timestampType:I

    .line 93
    new-instance v0, Lcom/biznessapps/events/EventCommentsAdapter$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/events/EventCommentsAdapter$1;-><init>(Lcom/biznessapps/events/EventCommentsAdapter;)V

    iput-object v0, p0, Lcom/biznessapps/events/EventCommentsAdapter;->imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    .line 37
    iput p2, p0, Lcom/biznessapps/events/EventCommentsAdapter;->timestampType:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timestampType"    # I
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    sget v4, Lcom/biznessapps/layout/R$layout;->list_event_comment_item:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/events/EventCommentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 43
    if-nez p2, :cond_1

    .line 44
    iget-object v5, p0, Lcom/biznessapps/events/EventCommentsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/events/EventCommentsAdapter;->layoutItemResourceId:I

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    new-instance v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;

    invoke-direct {v1, v9}, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;-><init>(Lcom/biznessapps/events/EventCommentsAdapter$1;)V

    .line 47
    .local v1, "holder":Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;
    sget v5, Lcom/biznessapps/layout/R$id;->name_text_view:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 48
    sget v5, Lcom/biznessapps/layout/R$id;->content_text_view:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    .line 49
    sget v5, Lcom/biznessapps/layout/R$id;->row_icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 50
    sget v5, Lcom/biznessapps/layout/R$id;->time_text_view:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->timeAgo:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventCommentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 58
    .local v2, "item":Lcom/biznessapps/fan_wall/CommentEntity;
    if-eqz v2, :cond_0

    .line 59
    iget-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    iget-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_1
    iget v5, p0, Lcom/biznessapps/events/EventCommentsAdapter;->timestampType:I

    if-ne v5, v10, :cond_3

    .line 68
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 74
    .local v0, "date":Ljava/util/Date;
    :goto_2
    iget-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->timeAgo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/events/EventCommentsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/biznessapps/utils/DateUtils;->getStringInterval(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    iget-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v5, p0, Lcom/biznessapps/events/EventCommentsAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/biznessapps/events/EventCommentsAdapter;->imageLoadCallback:Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    invoke-virtual {v5, v6, v7, v8}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledBackground(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 85
    :goto_3
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getItemColor()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/biznessapps/events/EventCommentsAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getItemTextColor()I

    move-result v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/widget/TextView;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    aput-object v8, v6, v7

    iget-object v7, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    aput-object v7, v6, v10

    const/4 v7, 0x2

    iget-object v8, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->timeAgo:Landroid/widget/TextView;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/events/EventCommentsAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 90
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    return-object p2

    .line 53
    .end local v1    # "holder":Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;
    .end local v2    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;
    goto/16 :goto_0

    .line 63
    .restart local v2    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_2
    iget-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->comment:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getTimeStamp()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v3, v5, v7

    .line 72
    .local v3, "timestamp":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_2

    .line 79
    .end local v3    # "timestamp":J
    :cond_4
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageId()I

    move-result v5

    if-lez v5, :cond_5

    .line 80
    iget-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 82
    :cond_5
    iget-object v5, v1, Lcom/biznessapps/events/EventCommentsAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method
