.class public Lcom/biznessapps/golfcourse/SelectCourseAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "SelectCourseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
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
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->golf_course_select_course_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v8, p0, Lcom/biznessapps/golfcourse/SelectCourseAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/biznessapps/golfcourse/SelectCourseAdapter;->layoutItemResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/SelectCourseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 43
    .local v1, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Course;

    .line 44
    .local v0, "course":Lcom/biznessapps/golfcourse/model/Course;
    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 46
    if-eqz v1, :cond_1

    .line 48
    sget v8, Lcom/biznessapps/layout/R$id;->ivThumbnail:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 49
    .local v2, "ivThumbnail":Landroid/widget/ImageView;
    sget v8, Lcom/biznessapps/layout/R$id;->tvName:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 50
    .local v4, "tvName":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->tvHoles:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 51
    .local v3, "tvHoles":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->tvPars:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    .local v5, "tvPars":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->tvStaticHoles:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 54
    .local v6, "tvStaticHoles":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$string;->holes_colon:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 55
    sget v8, Lcom/biznessapps/layout/R$id;->tvStaticPars:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 56
    .local v7, "tvStaticPars":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->pars:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!!!!!!!!!!!!!!!!!!! course = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    if-eqz v0, :cond_5

    .line 62
    iget-object v8, v0, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 63
    iget-object v8, p0, Lcom/biznessapps/golfcourse/SelectCourseAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    iget-object v9, v0, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v8, v9, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedImage(Ljava/lang/String;Landroid/view/View;)V

    .line 69
    :goto_1
    iget-object v8, v0, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v8

    if-nez v8, :cond_4

    .line 73
    const-string v8, "0"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_2
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getTotalPars()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_3
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 89
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemColor()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/biznessapps/golfcourse/SelectCourseAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SelectCourseAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v9

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemTextColor()I

    move-result v10

    move-object v8, p2

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v11, 0x1

    new-array v11, v11, [Landroid/view/View;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-virtual {v9, v10, v8, v11}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/ViewGroup;[Landroid/view/View;)V

    .line 93
    .end local v2    # "ivThumbnail":Landroid/widget/ImageView;
    .end local v3    # "tvHoles":Landroid/widget/TextView;
    .end local v4    # "tvName":Landroid/widget/TextView;
    .end local v5    # "tvPars":Landroid/widget/TextView;
    .end local v6    # "tvStaticHoles":Landroid/widget/TextView;
    .end local v7    # "tvStaticPars":Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 44
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 65
    .restart local v2    # "ivThumbnail":Landroid/widget/ImageView;
    .restart local v3    # "tvHoles":Landroid/widget/TextView;
    .restart local v4    # "tvName":Landroid/widget/TextView;
    .restart local v5    # "tvPars":Landroid/widget/TextView;
    .restart local v6    # "tvStaticHoles":Landroid/widget/TextView;
    .restart local v7    # "tvStaticPars":Landroid/widget/TextView;
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 81
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    const-string v8, ""

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-string v8, ""

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
