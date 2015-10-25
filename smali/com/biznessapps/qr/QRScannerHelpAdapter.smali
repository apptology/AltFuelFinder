.class public Lcom/biznessapps/qr/QRScannerHelpAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "QRScannerHelpAdapter.java"


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
    .line 21
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->qr_scanner_help_row:I

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
    .line 27
    if-nez p2, :cond_1

    .line 28
    iget-object v2, p0, Lcom/biznessapps/qr/QRScannerHelpAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/qr/QRScannerHelpAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 29
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;-><init>()V

    .line 31
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;
    sget v2, Lcom/biznessapps/layout/R$id;->help_description_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->setTextViewText(Landroid/widget/TextView;)V

    .line 32
    sget v2, Lcom/biznessapps/layout/R$id;->help_position_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->setTextViewDate(Landroid/widget/TextView;)V

    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/qr/QRScannerHelpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 39
    .local v1, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/qr/QRScannerHelpAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/qr/QRScannerHelpAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 48
    :cond_0
    return-object p2

    .line 35
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;
    .end local v1    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MessageItem;
    goto :goto_0
.end method
