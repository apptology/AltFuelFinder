.class Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "GlobalSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/search/GlobalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/news/SearchEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/search/GlobalSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/search/GlobalSearchFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    .line 187
    sget v0, Lcom/biznessapps/layout/R$layout;->global_search_item:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 188
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 189
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 194
    if-nez p2, :cond_3

    .line 195
    iget-object v4, p0, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;->layoutItemResourceId:I

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 196
    new-instance v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;

    invoke-direct {v2, v8}, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;-><init>(Lcom/biznessapps/search/GlobalSearchFragment$1;)V

    .line 197
    .local v2, "holder":Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;
    sget v4, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;->content:Landroid/widget/TextView;

    .line 198
    sget v4, Lcom/biznessapps/layout/R$id;->row_icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 199
    sget v4, Lcom/biznessapps/layout/R$id;->right_arrow_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;->rightArrowView:Landroid/widget/ImageView;

    .line 201
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 205
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/news/SearchEntity;

    .line 206
    .local v3, "item":Lcom/biznessapps/news/SearchEntity;
    if-eqz v3, :cond_2

    .line 207
    iget-object v4, v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 209
    .local v1, "hasImage":Z
    const/4 v0, 0x1

    .line 210
    .local v0, "enabledRightArrow":Z
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getNewsType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :cond_0
    iget-object v7, v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;->rightArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v4, v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v4, p0, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6, v7}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 217
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->hasColor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getItemColor()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getItemTextColor()I

    move-result v4

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/widget/TextView;

    iget-object v7, v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;->content:Landroid/widget/TextView;

    aput-object v7, v6, v5

    invoke-virtual {p0, v4, v6}, Lcom/biznessapps/search/GlobalSearchFragment$SearchAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 222
    .end local v0    # "enabledRightArrow":Z
    .end local v1    # "hasImage":Z
    :cond_2
    return-object p2

    .line 203
    .end local v2    # "holder":Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;
    .end local v3    # "item":Lcom/biznessapps/news/SearchEntity;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;

    .restart local v2    # "holder":Lcom/biznessapps/search/GlobalSearchFragment$ViewHolder;
    goto :goto_0

    .restart local v0    # "enabledRightArrow":Z
    .restart local v1    # "hasImage":Z
    .restart local v3    # "item":Lcom/biznessapps/news/SearchEntity;
    :cond_4
    move v4, v6

    .line 213
    goto :goto_1
.end method
