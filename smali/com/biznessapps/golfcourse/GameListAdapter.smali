.class public Lcom/biznessapps/golfcourse/GameListAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "GameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/golfcourse/GameListLayoutItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final GOLF_COURSE_CREATED_DATE_FORMAT:Ljava/lang/String; = "MMMM dd, yyyy"


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
            "Lcom/biznessapps/golfcourse/GameListLayoutItem;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/GameListLayoutItem;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_game_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v8, p0, Lcom/biznessapps/golfcourse/GameListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/biznessapps/golfcourse/GameListAdapter;->layoutItemResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/GameListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/GameListLayoutItem;

    .line 45
    .local v2, "item":Lcom/biznessapps/golfcourse/GameListLayoutItem;
    iget-object v1, v2, Lcom/biznessapps/golfcourse/GameListLayoutItem;->game:Lcom/biznessapps/golfcourse/model/Game;

    .line 46
    .local v1, "game":Lcom/biznessapps/golfcourse/model/Game;
    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v0

    .line 48
    .local v0, "course":Lcom/biznessapps/golfcourse/model/Course;
    if-eqz v2, :cond_1

    .line 50
    sget v8, Lcom/biznessapps/layout/R$id;->ivThumbnail:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 51
    .local v4, "ivThumbnail":Landroid/widget/ImageView;
    sget v8, Lcom/biznessapps/layout/R$id;->tvName:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 52
    .local v6, "tvName":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->tvPlayers:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 53
    .local v7, "tvPlayers":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->tvCreatedDate:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 54
    .local v5, "tvDate":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->ivRightArrow:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 57
    .local v3, "ivArrow":Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 59
    iget-object v8, v0, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 60
    iget-object v8, p0, Lcom/biznessapps/golfcourse/GameListAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    iget-object v9, v0, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedImage(Ljava/lang/String;Landroid/view/View;)V

    .line 66
    :goto_0
    iget-object v8, v0, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v8, v1, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    if-nez v8, :cond_3

    .line 70
    const-string v8, "0"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_1
    iget-wide v8, v1, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    const-string v10, "MMMM dd, yyyy"

    invoke-static {v8, v9, v10}, Lcom/biznessapps/utils/CommonUtils;->getDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/GameListLayoutItem;->hasColor()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 84
    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/GameListLayoutItem;->getItemColor()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/biznessapps/golfcourse/GameListAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/GameListAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v9

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/GameListLayoutItem;->getItemTextColor()I

    move-result v10

    move-object v8, p2

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/view/View;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v9, v10, v8, v11}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/ViewGroup;[Landroid/view/View;)V

    .line 89
    .end local v3    # "ivArrow":Landroid/widget/ImageView;
    .end local v4    # "ivThumbnail":Landroid/widget/ImageView;
    .end local v5    # "tvDate":Landroid/widget/TextView;
    .end local v6    # "tvName":Landroid/widget/TextView;
    .end local v7    # "tvPlayers":Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 62
    .restart local v3    # "ivArrow":Landroid/widget/ImageView;
    .restart local v4    # "ivThumbnail":Landroid/widget/ImageView;
    .restart local v5    # "tvDate":Landroid/widget/TextView;
    .restart local v6    # "tvName":Landroid/widget/TextView;
    .restart local v7    # "tvPlayers":Landroid/widget/TextView;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v8, v1, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 75
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    const-string v8, ""

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
