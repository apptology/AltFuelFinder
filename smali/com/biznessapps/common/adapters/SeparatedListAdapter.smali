.class public Lcom/biznessapps/common/adapters/SeparatedListAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">",
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field public final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionBarColorId:I

.field private sectionBarTextColorId:I

.field public final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 30
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    .line 31
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 32
    invoke-virtual {p3}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sectionBarColorId:I

    .line 33
    invoke-virtual {p3}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sectionBarTextColorId:I

    .line 34
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 37
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "correctedSection":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 44
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    invoke-virtual {p0}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->notifyDataSetInvalidated()V

    .line 46
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 71
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    const/4 v2, 0x0

    .line 72
    .local v2, "total":I
    iget-object v3, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 73
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    .line 75
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public getItem(I)Lcom/biznessapps/common/entities/CommonListEntity;
    .locals 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    iget-object v4, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "section":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 52
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 55
    .local v3, "size":I
    if-nez p1, :cond_0

    .line 56
    check-cast v2, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 65
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "size":I
    :goto_1
    return-object v2

    .line 58
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/String;
    .restart local v3    # "size":I
    :cond_0
    if-ge p1, v3, :cond_1

    .line 59
    add-int/lit8 v4, p1, -0x1

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/common/entities/CommonListEntity;

    move-object v2, v4

    goto :goto_1

    .line 63
    :cond_1
    sub-int/2addr p1, v3

    .line 64
    goto :goto_0

    .line 65
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 21
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->getItem(I)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 90
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    const/4 v4, 0x1

    .line 91
    .local v4, "type":I
    iget-object v5, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "section":Ljava/lang/String;
    iget-object v5, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 93
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 96
    .local v3, "size":I
    if-nez p1, :cond_0

    .line 97
    const/4 v5, 0x0

    .line 107
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "size":I
    :goto_1
    return v5

    .line 99
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/String;
    .restart local v3    # "size":I
    :cond_0
    if-ge p1, v3, :cond_1

    .line 100
    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_1

    .line 104
    :cond_1
    sub-int/2addr p1, v3

    .line 105
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 106
    goto :goto_0

    .line 107
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    const/4 v5, 0x0

    .line 128
    .local v5, "sectionnum":I
    invoke-virtual {p0}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$dimen;->section_header_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 129
    .local v4, "sectionSize":I
    iget-object v8, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "section":Ljava/lang/String;
    iget-object v8, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 131
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 133
    .local v6, "size":I
    if-nez p1, :cond_2

    .line 134
    iget-object v8, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, "sectionName":Ljava/lang/String;
    iget-object v8, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v5, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 136
    .local v7, "view":Landroid/view/View;
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    move-object v8, v7

    .line 137
    check-cast v8, Landroid/widget/TextView;

    iget v9, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sectionBarTextColorId:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v8, v7

    .line 138
    check-cast v8, Landroid/widget/TextView;

    iget v9, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sectionBarColorId:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 139
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v7

    .line 140
    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 155
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "sectionName":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v7

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/String;
    .restart local v3    # "sectionName":Ljava/lang/String;
    .restart local v6    # "size":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_1
    move-object v8, v7

    .line 142
    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_1

    .line 147
    .end local v3    # "sectionName":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    :cond_2
    if-ge p1, v6, :cond_3

    .line 148
    add-int/lit8 v8, p1, -0x1

    invoke-interface {v0, v8, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_1

    .line 152
    :cond_3
    sub-int/2addr p1, v6

    .line 153
    add-int/lit8 v5, v5, 0x1

    .line 154
    goto :goto_0

    .line 155
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v6    # "size":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 81
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    const/4 v2, 0x1

    .line 82
    .local v2, "total":I
    iget-object v3, p0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 83
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 85
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    .local p0, "this":Lcom/biznessapps/common/adapters/SeparatedListAdapter;, "Lcom/biznessapps/common/adapters/SeparatedListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
