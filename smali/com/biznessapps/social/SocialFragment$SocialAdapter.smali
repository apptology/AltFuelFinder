.class public Lcom/biznessapps/social/SocialFragment$SocialAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "SocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/social/SocialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/social/SocialFragment$SocialItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/social/SocialFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/social/SocialFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/social/SocialFragment$SocialItem;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 576
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/social/SocialFragment$SocialItem;>;"
    iput-object p1, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->this$0:Lcom/biznessapps/social/SocialFragment;

    .line 577
    sget v0, Lcom/biznessapps/layout/R$layout;->social_row:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 578
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 585
    if-nez p2, :cond_1

    .line 586
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 589
    new-instance v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;

    invoke-direct {v0, v6}, Lcom/biznessapps/social/SocialFragment$ViewHolder;-><init>(Lcom/biznessapps/social/SocialFragment$1;)V

    .line 590
    .local v0, "holder":Lcom/biznessapps/social/SocialFragment$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->label_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->label:Landroid/widget/TextView;

    .line 591
    sget v2, Lcom/biznessapps/layout/R$id;->button_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->button:Landroid/widget/Button;

    .line 592
    sget v2, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 593
    sget v2, Lcom/biznessapps/layout/R$id;->icon_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 594
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 595
    iget-object v2, p0, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 596
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 603
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/social/SocialFragment$SocialItem;

    .line 604
    .local v1, "item":Lcom/biznessapps/social/SocialFragment$SocialItem;
    if-eqz v1, :cond_0

    .line 605
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->getLabelValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->getLabelValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->button:Landroid/widget/Button;

    new-instance v3, Lcom/biznessapps/social/SocialFragment$SocialAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/biznessapps/social/SocialFragment$SocialAdapter$1;-><init>(Lcom/biznessapps/social/SocialFragment$SocialAdapter;Lcom/biznessapps/social/SocialFragment$SocialItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->getIconId()I

    move-result v2

    if-lez v2, :cond_2

    .line 616
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->getIconId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 617
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    invoke-virtual {v1}, Lcom/biznessapps/social/SocialFragment$SocialItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    iget-object v4, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->title:Landroid/widget/TextView;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->label:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/social/SocialFragment$SocialAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 631
    :cond_0
    return-object p2

    .line 599
    .end local v0    # "holder":Lcom/biznessapps/social/SocialFragment$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/social/SocialFragment$SocialItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/social/SocialFragment$ViewHolder;
    goto :goto_0

    .line 621
    .restart local v1    # "item":Lcom/biznessapps/social/SocialFragment$SocialItem;
    :cond_2
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    iget-object v2, v0, Lcom/biznessapps/social/SocialFragment$ViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
