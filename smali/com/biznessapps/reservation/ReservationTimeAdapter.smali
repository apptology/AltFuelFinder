.class public Lcom/biznessapps/reservation/ReservationTimeAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "ReservationTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/reservation/entities/ReservationTimeItem;",
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
            "Lcom/biznessapps/reservation/entities/ReservationTimeItem;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->service_time_cell:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    if-nez p2, :cond_1

    .line 28
    new-instance v8, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;

    invoke-direct {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;-><init>()V

    .line 29
    .local v8, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationTimeAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/reservation/ReservationTimeAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    sget v2, Lcom/biznessapps/layout/R$id;->service_time_cell_from:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 31
    .local v10, "timeFromView":Landroid/widget/TextView;
    invoke-virtual {v8, v10}, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->setTimeFromView(Landroid/widget/TextView;)V

    .line 32
    sget v2, Lcom/biznessapps/layout/R$id;->service_time_cell_to:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 33
    .local v11, "timeToView":Landroid/widget/TextView;
    invoke-virtual {v8, v11}, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->setTimeToView(Landroid/widget/TextView;)V

    .line 34
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .end local v10    # "timeFromView":Landroid/widget/TextView;
    .end local v11    # "timeToView":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationTimeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    .line 40
    .local v9, "item":Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v9}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getFrom()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    invoke-virtual {v9}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getFrom()I

    move-result v5

    rem-int/lit8 v5, v5, 0x3c

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .line 41
    .local v0, "dateFrom":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v9}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getTo()I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v9}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getTo()I

    move-result v6

    rem-int/lit8 v6, v6, 0x3c

    invoke-direct/range {v1 .. v6}, Ljava/util/Date;-><init>(IIIII)V

    .line 42
    .local v1, "dateTo":Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm a"

    invoke-direct {v7, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v7, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->getTimeFromView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->getTimeToView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v9}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v9}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/reservation/ReservationTimeAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v9}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->getTimeFromView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;->getTimeToView()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/reservation/ReservationTimeAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 52
    :cond_0
    return-object p2

    .line 36
    .end local v0    # "dateFrom":Ljava/util/Date;
    .end local v1    # "dateTo":Ljava/util/Date;
    .end local v7    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v8    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;
    .end local v9    # "item":Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;

    .restart local v8    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$ReservationTimeItem;
    goto :goto_0
.end method
