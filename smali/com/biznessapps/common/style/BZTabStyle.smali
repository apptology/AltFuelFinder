.class public Lcom/biznessapps/common/style/BZTabStyle;
.super Lcom/biznessapps/common/style/BZCommonStyle;
.source "BZTabStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/style/BZCommonStyle",
        "<",
        "Landroid/widget/TextView;",
        "Lcom/biznessapps/api/UiSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/biznessapps/common/style/BZTabStyle;


# instance fields
.field private mNavigationTextShadowColor:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v2, v0}, Lcom/biznessapps/common/style/BZCommonStyle;-><init>(Landroid/content/Context;Z[Ljava/lang/Class;)V

    .line 27
    iput-boolean v2, p0, Lcom/biznessapps/common/style/BZTabStyle;->mNavigationTextShadowColor:Z

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTabStyle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lcom/biznessapps/common/style/BZTabStyle;->instance:Lcom/biznessapps/common/style/BZTabStyle;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/biznessapps/common/style/BZTabStyle;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/style/BZTabStyle;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/style/BZTabStyle;->instance:Lcom/biznessapps/common/style/BZTabStyle;

    .line 24
    :cond_0
    sget-object v0, Lcom/biznessapps/common/style/BZTabStyle;->instance:Lcom/biznessapps/common/style/BZTabStyle;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "setting"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 41
    return-void
.end method

.method public apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "setting"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "tabView"    # Landroid/widget/TextView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/biznessapps/common/style/BZTabStyle;->mNavigationTextShadowColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextShadowColor()I

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 16
    check-cast p1, Lcom/biznessapps/api/UiSettings;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZTabStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/biznessapps/api/UiSettings;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZTabStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/TextView;)V

    return-void
.end method

.method public setNavigationTextShadowColor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/biznessapps/common/style/BZTabStyle;->mNavigationTextShadowColor:Z

    .line 36
    return-void
.end method
