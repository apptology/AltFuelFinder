.class public Lcom/biznessapps/common/style/BZSectionStyle;
.super Lcom/biznessapps/common/style/BZCommonStyle;
.source "BZSectionStyle.java"


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
.field private static instance:Lcom/biznessapps/common/style/BZSectionStyle;


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
    iput-boolean v3, p0, Lcom/biznessapps/common/style/BZSectionStyle;->mUseTransparency:Z

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZSectionStyle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/biznessapps/common/style/BZSectionStyle;->instance:Lcom/biznessapps/common/style/BZSectionStyle;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/biznessapps/common/style/BZSectionStyle;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/style/BZSectionStyle;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/style/BZSectionStyle;->instance:Lcom/biznessapps/common/style/BZSectionStyle;

    .line 26
    :cond_0
    sget-object v0, Lcom/biznessapps/common/style/BZSectionStyle;->instance:Lcom/biznessapps/common/style/BZSectionStyle;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/biznessapps/api/UiSettings;Landroid/view/View;)V
    .locals 4
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 54
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/biznessapps/common/style/BZSectionStyle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v3

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 57
    iget-boolean v1, p0, Lcom/biznessapps/common/style/BZSectionStyle;->mUseTransparency:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v0

    .line 58
    .local v0, "sectionBarColor":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 64
    .end local v0    # "sectionBarColor":I
    :cond_0
    :goto_1
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v0

    goto :goto_0

    .line 61
    .restart local v0    # "sectionBarColor":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "sectionView"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/biznessapps/common/style/BZSectionStyle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 44
    iget-boolean v1, p0, Lcom/biznessapps/common/style/BZSectionStyle;->mUseTransparency:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v0

    .line 45
    .local v0, "sectionBarColor":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 50
    :goto_1
    return-void

    .line 44
    .end local v0    # "sectionBarColor":I
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v0

    goto :goto_0

    .line 48
    .restart local v0    # "sectionBarColor":I
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/view/View;

    .prologue
    .line 18
    check-cast p1, Lcom/biznessapps/api/UiSettings;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZSectionStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/View;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZSectionStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZSectionStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setTransparency(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/biznessapps/common/style/BZSectionStyle;->mUseTransparency:Z

    .line 38
    return-void
.end method
