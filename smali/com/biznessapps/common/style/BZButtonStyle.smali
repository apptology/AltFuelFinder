.class public Lcom/biznessapps/common/style/BZButtonStyle;
.super Lcom/biznessapps/common/style/BZCommonStyle;
.source "BZButtonStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/style/BZCommonStyle",
        "<",
        "Landroid/widget/Button;",
        "Lcom/biznessapps/api/UiSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/biznessapps/common/style/BZButtonStyle;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/widget/Button;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/common/style/BZCommonStyle;-><init>(Landroid/content/Context;[Ljava/lang/Class;)V

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/biznessapps/common/style/BZButtonStyle;->instance:Lcom/biznessapps/common/style/BZButtonStyle;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/biznessapps/common/style/BZButtonStyle;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/style/BZButtonStyle;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/style/BZButtonStyle;->instance:Lcom/biznessapps/common/style/BZButtonStyle;

    .line 27
    :cond_0
    sget-object v0, Lcom/biznessapps/common/style/BZButtonStyle;->instance:Lcom/biznessapps/common/style/BZButtonStyle;

    return-object v0
.end method


# virtual methods
.method public apply(IILandroid/widget/Button;)V
    .locals 1
    .param p1, "bgColor"    # I
    .param p2, "txtColor"    # I
    .param p3, "button"    # Landroid/widget/Button;

    .prologue
    .line 40
    invoke-virtual {p3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 46
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(ILandroid/widget/Button;)V

    .line 47
    return-void

    .line 43
    :cond_0
    invoke-virtual {p3, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public apply(ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "txtColor"    # I
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_1

    .line 66
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

    .line 60
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/biznessapps/common/style/BZButtonStyle;->isAvailableType(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    check-cast v1, Landroid/widget/Button;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(ILandroid/widget/Button;)V

    .line 57
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .restart local v1    # "view":Landroid/view/View;
    :cond_3
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 63
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, p1, v1}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(ILandroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public apply(ILandroid/widget/Button;)V
    .locals 0
    .param p1, "txtColor"    # I
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    .line 50
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 51
    return-void
.end method

.method public bridge synthetic apply(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p2, Landroid/widget/Button;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(ILandroid/widget/Button;)V

    return-void
.end method

.method public apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V
    .locals 2
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 37
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/biznessapps/api/UiSettings;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/widget/Button;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    return-void
.end method
