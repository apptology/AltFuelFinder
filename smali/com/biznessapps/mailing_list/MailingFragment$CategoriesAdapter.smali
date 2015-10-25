.class public Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "MailingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/mailing_list/MailingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoriesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/mailing_list/MailingListEntity$Category;",
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
            "Lcom/biznessapps/mailing_list/MailingListEntity$Category;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/mailing_list/MailingListEntity$Category;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->mailing_list_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 311
    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 316
    invoke-virtual {p0, p1}, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/mailing_list/MailingListEntity$Category;

    .line 318
    .local v2, "item":Lcom/biznessapps/mailing_list/MailingListEntity$Category;
    if-nez p2, :cond_1

    .line 319
    iget-object v4, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;->layoutItemResourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 320
    new-instance v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;

    invoke-direct {v1, v6}, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;-><init>(Lcom/biznessapps/mailing_list/MailingFragment$1;)V

    .line 322
    .local v1, "holder":Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;
    sget v4, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 323
    sget v4, Lcom/biznessapps/layout/R$id;->turn_function_button:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;->turnButton:Landroid/widget/ImageView;

    .line 324
    sget v4, Lcom/biznessapps/layout/R$id;->turn_circle_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;->circleView:Landroid/widget/ImageView;

    .line 326
    iget-object v3, v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;->turnButton:Landroid/widget/ImageView;

    .line 327
    .local v3, "turnButton":Landroid/widget/ImageView;
    iget-object v0, v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;->circleView:Landroid/widget/ImageView;

    .line 328
    .local v0, "circleView":Landroid/widget/ImageView;
    new-instance v4, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$1;-><init>(Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;Lcom/biznessapps/mailing_list/MailingListEntity$Category;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {v2}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->isSelected()Z

    move-result v4

    iget-object v5, p0, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v0, v3, v5}, Lcom/biznessapps/utils/ViewUtils;->updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    .line 337
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 342
    .end local v0    # "circleView":Landroid/widget/ImageView;
    .end local v3    # "turnButton":Landroid/widget/ImageView;
    :goto_0
    if-eqz v2, :cond_0

    .line 343
    iget-object v4, v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v2}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->getItemColor()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 345
    iget-object v4, v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/mailing_list/MailingListEntity$Category;->getItemTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    :cond_0
    return-object p2

    .line 339
    .end local v1    # "holder":Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/biznessapps/mailing_list/MailingFragment$CategoriesAdapter$ViewHolder;
    goto :goto_0
.end method
