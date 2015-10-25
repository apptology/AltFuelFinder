.class public abstract Lcom/biznessapps/common/style/BZCommonStyle;
.super Ljava/lang/Object;
.source "BZCommonStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field final mTypeParameterClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Landroid/content/Context;Z[Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addFilterStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z[",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/biznessapps/common/style/BZCommonStyle;, "Lcom/biznessapps/common/style/BZCommonStyle<TT;TX;>;"
    .local p3, "typeParameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/biznessapps/common/style/BZCommonStyle;->mTypeParameterClasses:[Ljava/lang/Class;

    .line 25
    iput-object p1, p0, Lcom/biznessapps/common/style/BZCommonStyle;->mContext:Landroid/content/Context;

    .line 27
    if-eqz p2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/biznessapps/common/style/BZCommonStyle;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/common/style/BZStyleManager;->addStyle(Lcom/biznessapps/common/style/BZCommonStyle;)V

    .line 30
    :cond_0
    return-void
.end method

.method varargs constructor <init>(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/biznessapps/common/style/BZCommonStyle;, "Lcom/biznessapps/common/style/BZCommonStyle<TT;TX;>;"
    .local p2, "typeParameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/biznessapps/common/style/BZCommonStyle;-><init>(Landroid/content/Context;Z[Ljava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method public apply(ILjava/lang/Object;)V
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/biznessapps/common/style/BZCommonStyle;, "Lcom/biznessapps/common/style/BZCommonStyle<TT;TX;>;"
    .local p2, "component":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/biznessapps/common/style/BZCommonStyle;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public apply(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/biznessapps/common/style/BZCommonStyle;, "Lcom/biznessapps/common/style/BZCommonStyle<TT;TX;>;"
    .local p1, "setting":Ljava/lang/Object;, "TX;"
    move-object v0, p2

    .line 104
    .local v0, "button":Landroid/view/View;, "TT;"
    invoke-virtual {p0, p1, v0}, Lcom/biznessapps/common/style/BZCommonStyle;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 3
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/biznessapps/common/style/BZCommonStyle;, "Lcom/biznessapps/common/style/BZCommonStyle<TT;TX;>;"
    .local p1, "settings":Ljava/lang/Object;, "TX;"
    if-nez p2, :cond_1

    .line 58
    :cond_0
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/biznessapps/common/style/BZCommonStyle;->isAvailableType(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/biznessapps/common/style/BZCommonStyle;->apply(Ljava/lang/Object;Landroid/view/View;)V

    .line 49
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .restart local v1    # "view":Landroid/view/View;
    :cond_3
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 55
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Lcom/biznessapps/common/style/BZCommonStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public varargs apply(Ljava/lang/Object;Landroid/view/ViewGroup;[Landroid/view/View;)V
    .locals 5
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "exceptViews"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Landroid/view/ViewGroup;",
            "[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/biznessapps/common/style/BZCommonStyle;, "Lcom/biznessapps/common/style/BZCommonStyle<TT;TX;>;"
    .local p1, "setting":Ljava/lang/Object;, "TX;"
    if-nez p2, :cond_1

    .line 89
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "view":Landroid/view/View;
    if-eqz p3, :cond_5

    .line 70
    const/4 v0, 0x1

    .line 71
    .local v0, "available":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_2

    .line 72
    aget-object v4, p3, v2

    if-ne v3, v4, :cond_4

    .line 73
    const/4 v0, 0x0

    .line 78
    :cond_2
    if-nez v0, :cond_5

    .line 65
    .end local v0    # "available":Z
    .end local v2    # "j":I
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .restart local v0    # "available":Z
    .restart local v2    # "j":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "available":Z
    .end local v2    # "j":I
    :cond_5
    invoke-virtual {p0, v3}, Lcom/biznessapps/common/style/BZCommonStyle;->isAvailableType(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    invoke-virtual {p0, p1, v3}, Lcom/biznessapps/common/style/BZCommonStyle;->apply(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_2

    .line 85
    :cond_6
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 86
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {p0, p1, v3}, Lcom/biznessapps/common/style/BZCommonStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    goto :goto_2
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TT;)V"
        }
    .end annotation
.end method

.method public varargs apply(Ljava/lang/Object;[Landroid/view/View;)V
    .locals 3
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/biznessapps/common/style/BZCommonStyle;, "Lcom/biznessapps/common/style/BZCommonStyle<TT;TX;>;"
    .local p1, "setting":Ljava/lang/Object;, "TX;"
    if-nez p2, :cond_1

    .line 99
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 96
    aget-object v1, p2, v0

    .line 97
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Lcom/biznessapps/common/style/BZCommonStyle;->apply(Ljava/lang/Object;Landroid/view/View;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAvailableType(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 34
    .local p0, "this":Lcom/biznessapps/common/style/BZCommonStyle;, "Lcom/biznessapps/common/style/BZCommonStyle<TT;TX;>;"
    const/4 v0, 0x0

    .line 35
    .local v0, "available":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/common/style/BZCommonStyle;->mTypeParameterClasses:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/biznessapps/common/style/BZCommonStyle;->mTypeParameterClasses:[Ljava/lang/Class;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 42
    :cond_0
    return v0

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
