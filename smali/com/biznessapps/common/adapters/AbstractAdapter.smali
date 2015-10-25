.class public abstract Lcom/biznessapps/common/adapters/AbstractAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AbstractAdapter.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;",
        "Lcom/biznessapps/constants/AppConstants;"
    }
.end annotation


# instance fields
.field protected currentItemIndex:I

.field protected imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected layoutItemResourceId:I

.field private positionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected settings:Lcom/biznessapps/api/UiSettings;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<TT;>;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 46
    return-void
.end method

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
            "<TT;>;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    invoke-virtual {p0}, Lcom/biznessapps/common/adapters/AbstractAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->currentItemIndex:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->positionListeners:Ljava/util/List;

    .line 50
    iput p3, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->layoutItemResourceId:I

    .line 51
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 52
    iput-object p4, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    .line 53
    return-void
.end method


# virtual methods
.method public addPositionListener(Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;)V
    .locals 1
    .param p1, "listenerToAdd"    # Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    .prologue
    .line 71
    .local p0, "this":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->positionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method protected checkPositioning(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    .local p0, "this":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/common/adapters/AbstractAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->positionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    .line 63
    .local v1, "item":Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;
    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1, p1}, Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;->onLastPositionAchieved(I)V

    goto :goto_0

    .line 68
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;
    :cond_1
    return-void
.end method

.method protected getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p1, "unselectedColor"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, p1}, Lcom/biznessapps/utils/CommonUtils;->getListItemDrawable(Lcom/biznessapps/api/UiSettings;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public removePositionListener(Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;)V
    .locals 1
    .param p1, "listenerToRemove"    # Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    .prologue
    .line 75
    .local p0, "this":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->positionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 0
    .param p1, "currentItemIndex"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<TT;>;"
    iput p1, p0, Lcom/biznessapps/common/adapters/AbstractAdapter;->currentItemIndex:I

    .line 57
    return-void
.end method

.method protected varargs setTextColorToView(I[Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textColor"    # I
    .param p2, "views"    # [Landroid/widget/TextView;

    .prologue
    .line 96
    .local p0, "this":Lcom/biznessapps/common/adapters/AbstractAdapter;, "Lcom/biznessapps/common/adapters/AbstractAdapter<TT;>;"
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 98
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
