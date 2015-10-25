.class public Lcom/biznessapps/common/style/BZStyleManager;
.super Ljava/lang/Object;
.source "BZStyleManager.java"


# static fields
.field private static instance:Lcom/biznessapps/common/style/BZStyleManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/style/BZCommonStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/style/BZStyleManager;->mStyleList:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/biznessapps/common/style/BZStyleManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/biznessapps/common/style/BZStyleManager;->instance:Lcom/biznessapps/common/style/BZStyleManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/biznessapps/common/style/BZStyleManager;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/style/BZStyleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/style/BZStyleManager;->instance:Lcom/biznessapps/common/style/BZStyleManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/biznessapps/common/style/BZStyleManager;->instance:Lcom/biznessapps/common/style/BZStyleManager;

    return-object v0
.end method


# virtual methods
.method addStyle(Lcom/biznessapps/common/style/BZCommonStyle;)V
    .locals 1
    .param p1, "newStyle"    # Lcom/biznessapps/common/style/BZCommonStyle;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/common/style/BZStyleManager;->mStyleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public applyColor(ILandroid/view/View;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/common/style/BZStyleManager;->mStyleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/biznessapps/common/style/BZStyleManager;->mStyleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/style/BZCommonStyle;

    .line 102
    .local v1, "style":Lcom/biznessapps/common/style/BZCommonStyle;
    invoke-virtual {v1, p2}, Lcom/biznessapps/common/style/BZCommonStyle;->isAvailableType(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {v1, p1, p2}, Lcom/biznessapps/common/style/BZCommonStyle;->apply(ILjava/lang/Object;)V

    .line 107
    .end local v1    # "style":Lcom/biznessapps/common/style/BZCommonStyle;
    :cond_0
    return-void

    .line 100
    .restart local v1    # "style":Lcom/biznessapps/common/style/BZCommonStyle;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public applyColor(ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_1

    .line 65
    :cond_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 60
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/ViewGroup;)V

    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .restart local v1    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/View;)V

    goto :goto_1
.end method

.method public varargs applyColor(ILandroid/view/ViewGroup;[Landroid/view/View;)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "exceptViews"    # [Landroid/view/View;

    .prologue
    .line 69
    if-nez p2, :cond_1

    .line 95
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 76
    .local v3, "view":Landroid/view/View;
    if-eqz p3, :cond_4

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "available":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_2

    .line 79
    aget-object v4, p3, v2

    if-ne v3, v4, :cond_3

    .line 80
    const/4 v0, 0x0

    .line 85
    :cond_2
    if-nez v0, :cond_4

    .line 72
    .end local v0    # "available":Z
    .end local v2    # "j":I
    .end local v3    # "view":Landroid/view/View;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .restart local v0    # "available":Z
    .restart local v2    # "j":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "available":Z
    .end local v2    # "j":I
    :cond_4
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    .line 90
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {p0, p1, v3}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/ViewGroup;)V

    goto :goto_2

    .line 92
    .restart local v3    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, p1, v3}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/View;)V

    goto :goto_2
.end method

.method public initStyles()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/common/style/BZStyleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/style/BZListViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZListViewStyle;

    .line 40
    iget-object v0, p0, Lcom/biznessapps/common/style/BZStyleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/style/BZSectionStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZSectionStyle;

    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/style/BZStyleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTabStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTabStyle;

    .line 42
    iget-object v0, p0, Lcom/biznessapps/common/style/BZStyleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/style/BZStyleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    .line 44
    iget-object v0, p0, Lcom/biznessapps/common/style/BZStyleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    .line 45
    return-void
.end method
