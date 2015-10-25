.class public Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "ContactsMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/contact/ContactsMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpeningHoursAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/contact/ContactsMapActivity;


# direct methods
.method public constructor <init>(Lcom/biznessapps/contact/ContactsMapActivity;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;->this$0:Lcom/biznessapps/contact/ContactsMapActivity;

    .line 401
    sget v0, Lcom/biznessapps/layout/R$layout;->opening_hours_row:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 402
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

    .line 409
    if-nez p2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 413
    new-instance v0, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;

    invoke-direct {v0, v4}, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;-><init>(Lcom/biznessapps/contact/ContactsMapActivity$1;)V

    .line 414
    .local v0, "holder":Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->left_label_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;->leftLabel:Landroid/widget/TextView;

    .line 415
    sget v2, Lcom/biznessapps/layout/R$id;->right_label_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;->rightLabel:Landroid/widget/TextView;

    .line 416
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 424
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;

    .line 425
    .local v1, "item":Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;
    if-eqz v1, :cond_0

    .line 426
    iget-object v2, v0, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;->leftLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->getLeftLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v2, v0, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;->rightLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->getRightLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {v1}, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v1}, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    invoke-virtual {v1}, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;->leftLabel:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;->rightLabel:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 433
    :cond_0
    return-object p2

    .line 420
    .end local v0    # "holder":Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;
    goto :goto_0
.end method
