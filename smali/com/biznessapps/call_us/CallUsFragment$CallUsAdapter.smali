.class public Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "CallUsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/call_us/CallUsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallUsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/call_us/CallUsEntity;",
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
            "Lcom/biznessapps/call_us/CallUsEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/call_us/CallUsEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->call_us_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 113
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

    .line 121
    if-nez p2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;-><init>(Lcom/biznessapps/call_us/CallUsFragment$1;)V

    .line 124
    .local v0, "holder":Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->title_text_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 125
    sget v2, Lcom/biznessapps/layout/R$id;->phone_text_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/call_us/CallUsEntity;

    .line 134
    .local v1, "item":Lcom/biznessapps/call_us/CallUsEntity;
    if-eqz v1, :cond_0

    .line 135
    iget-object v2, v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/call_us/CallUsEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/call_us/CallUsEntity;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v1}, Lcom/biznessapps/call_us/CallUsEntity;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v1}, Lcom/biznessapps/call_us/CallUsEntity;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v1}, Lcom/biznessapps/call_us/CallUsEntity;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 142
    :cond_0
    return-object p2

    .line 129
    .end local v0    # "holder":Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/call_us/CallUsEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/call_us/CallUsFragment$CallUsAdapter$ViewHolder;
    goto :goto_0
.end method
