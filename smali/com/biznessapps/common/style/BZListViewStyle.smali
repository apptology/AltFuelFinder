.class public Lcom/biznessapps/common/style/BZListViewStyle;
.super Lcom/biznessapps/common/style/BZCommonStyle;
.source "BZListViewStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/style/BZCommonStyle",
        "<",
        "Landroid/view/ViewGroup;",
        "Lcom/biznessapps/api/UiSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/biznessapps/common/style/BZListViewStyle;


# instance fields
.field private mUseTransparency:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v2, v0}, Lcom/biznessapps/common/style/BZCommonStyle;-><init>(Landroid/content/Context;Z[Ljava/lang/Class;)V

    .line 29
    iput-boolean v3, p0, Lcom/biznessapps/common/style/BZListViewStyle;->mUseTransparency:Z

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZListViewStyle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/biznessapps/common/style/BZListViewStyle;->instance:Lcom/biznessapps/common/style/BZListViewStyle;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/biznessapps/common/style/BZListViewStyle;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/style/BZListViewStyle;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/style/BZListViewStyle;->instance:Lcom/biznessapps/common/style/BZListViewStyle;

    .line 26
    :cond_0
    sget-object v0, Lcom/biznessapps/common/style/BZListViewStyle;->instance:Lcom/biznessapps/common/style/BZListViewStyle;

    return-object v0
.end method


# virtual methods
.method public apply(IIIIILandroid/view/ViewGroup;)V
    .locals 6
    .param p1, "evenRowColor"    # I
    .param p2, "evenRowTextColor"    # I
    .param p3, "oddRowColor"    # I
    .param p4, "oddRowTextColor"    # I
    .param p5, "buttonBgColor"    # I
    .param p6, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 68
    invoke-virtual {p6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 70
    .local v3, "view":Landroid/view/View;
    rem-int/lit8 v4, v1, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 71
    move v0, p1

    .line 72
    .local v0, "bgColor":I
    move v2, p2

    .line 78
    .local v2, "textColor":I
    :goto_1
    invoke-static {p5, v0}, Lcom/biznessapps/utils/CommonUtils;->getListItemDrawable(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/biznessapps/common/style/BZListViewStyle;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v4

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v4, v2, v3}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/ViewGroup;)V

    .line 67
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "bgColor":I
    .end local v2    # "textColor":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_0
    move v0, p3

    .line 75
    .restart local v0    # "bgColor":I
    move v2, p4

    .restart local v2    # "textColor":I
    goto :goto_1

    .line 82
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/common/style/BZListViewStyle;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/View;)V

    goto :goto_2

    .line 85
    .end local v0    # "bgColor":I
    .end local v2    # "textColor":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 45
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 47
    .local v3, "view":Landroid/view/View;
    rem-int/lit8 v4, v1, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 48
    iget-boolean v4, p0, Lcom/biznessapps/common/style/BZListViewStyle;->mUseTransparency:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getEvenRowColorTransparent()I

    move-result v0

    .line 49
    .local v0, "bgColor":I
    :goto_1
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v2

    .line 55
    .local v2, "textColor":I
    :goto_2
    invoke-static {p1, v0}, Lcom/biznessapps/utils/CommonUtils;->getListItemDrawable(Lcom/biznessapps/api/UiSettings;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 57
    iget-object v4, p0, Lcom/biznessapps/common/style/BZListViewStyle;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v4

    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v4, v2, v3}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/ViewGroup;)V

    .line 44
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "bgColor":I
    .end local v2    # "textColor":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getEvenRowColor()I

    move-result v0

    goto :goto_1

    .line 51
    :cond_1
    iget-boolean v4, p0, Lcom/biznessapps/common/style/BZListViewStyle;->mUseTransparency:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v0

    .line 52
    .restart local v0    # "bgColor":I
    :goto_4
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v2

    .restart local v2    # "textColor":I
    goto :goto_2

    .line 51
    .end local v0    # "bgColor":I
    .end local v2    # "textColor":I
    :cond_2
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getOddRowColor()I

    move-result v0

    goto :goto_4

    .line 59
    .restart local v0    # "bgColor":I
    .restart local v2    # "textColor":I
    :cond_3
    iget-object v4, p0, Lcom/biznessapps/common/style/BZListViewStyle;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/biznessapps/common/style/BZStyleManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZStyleManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/biznessapps/common/style/BZStyleManager;->applyColor(ILandroid/view/View;)V

    goto :goto_3

    .line 62
    .end local v0    # "bgColor":I
    .end local v2    # "textColor":I
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 18
    check-cast p1, Lcom/biznessapps/api/UiSettings;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZListViewStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/biznessapps/api/UiSettings;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZListViewStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setTransparency(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/biznessapps/common/style/BZListViewStyle;->mUseTransparency:Z

    .line 38
    return-void
.end method
