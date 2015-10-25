.class public Lcom/biznessapps/events/EventAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "EventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/events/EventEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private isEventV2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/events/EventEntity;",
            ">;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 31
    sget v0, Lcom/biznessapps/layout/R$layout;->list_event_v2_item:I

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/biznessapps/events/EventAdapter;->isEventV2:Z

    .line 32
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 37
    if-nez p2, :cond_2

    .line 38
    iget-object v4, p0, Lcom/biznessapps/events/EventAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/biznessapps/events/EventAdapter;->layoutItemResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v1, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;

    invoke-direct {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;-><init>()V

    .line 41
    .local v1, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;
    sget v4, Lcom/biznessapps/layout/R$id;->event_top_text:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->setTopTextView(Landroid/widget/TextView;)V

    .line 42
    sget v4, Lcom/biznessapps/layout/R$id;->event_text:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->setTextViewText(Landroid/widget/TextView;)V

    .line 43
    sget v4, Lcom/biznessapps/layout/R$id;->event_date_text:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->setDateTextView(Landroid/widget/TextView;)V

    .line 44
    sget v4, Lcom/biznessapps/layout/R$id;->calendar_text:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->setTextViewCalendar(Landroid/widget/TextView;)V

    .line 45
    sget v4, Lcom/biznessapps/layout/R$id;->right_arrow_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->setRightArrowView(Landroid/widget/ImageView;)V

    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/events/EventEntity;

    .line 52
    .local v2, "item":Lcom/biznessapps/events/EventEntity;
    if-eqz v2, :cond_1

    .line 53
    sget v4, Lcom/biznessapps/layout/R$id;->calendar_month_text:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "monthTextView":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getMonth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getTextViewCalendar()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getDateTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    iget-boolean v4, p0, Lcom/biznessapps/events/EventAdapter;->isEventV2:Z

    invoke-static {v4, v2}, Lcom/biznessapps/location/LocationUtils;->getAddress(ZLcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getTopTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getTopTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :goto_1
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->hasColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getItemColor()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/biznessapps/events/EventAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v2}, Lcom/biznessapps/events/EventEntity;->getItemTextColor()I

    move-result v4

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getDateTextView()Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getTextViewCalendar()Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getTopTextView()Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/biznessapps/events/EventAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 74
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "monthTextView":Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 48
    .end local v1    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;
    .end local v2    # "item":Lcom/biznessapps/events/EventEntity;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;

    .restart local v1    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;
    goto/16 :goto_0

    .line 65
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v2    # "item":Lcom/biznessapps/events/EventEntity;
    .restart local v3    # "monthTextView":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v1}, Lcom/biznessapps/common/adapters/ListItemHolder$EventItem;->getTopTextView()Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
