.class public Lcom/biznessapps/widgets/BitmapDrawableNoMinimumSize;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "BitmapDrawableNoMinimumSize.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method
