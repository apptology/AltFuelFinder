.class public Lcom/biznessapps/common/style/BZImageViewStyle;
.super Lcom/biznessapps/common/style/BZCommonStyle;
.source "BZImageViewStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/style/BZCommonStyle",
        "<",
        "Landroid/widget/ImageView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/biznessapps/common/style/BZImageViewStyle;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/widget/ImageView;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/common/style/BZCommonStyle;-><init>(Landroid/content/Context;[Ljava/lang/Class;)V

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v0, Lcom/biznessapps/common/style/BZImageViewStyle;->instance:Lcom/biznessapps/common/style/BZImageViewStyle;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/biznessapps/common/style/BZImageViewStyle;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/style/BZImageViewStyle;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/style/BZImageViewStyle;->instance:Lcom/biznessapps/common/style/BZImageViewStyle;

    .line 23
    :cond_0
    sget-object v0, Lcom/biznessapps/common/style/BZImageViewStyle;->instance:Lcom/biznessapps/common/style/BZImageViewStyle;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/Integer;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Integer;Landroid/widget/ImageView;)V

    return-void
.end method
