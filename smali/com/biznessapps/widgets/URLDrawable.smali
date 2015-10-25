.class public Lcom/biznessapps/widgets/URLDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "URLDrawable.java"


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 11
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/widgets/URLDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/biznessapps/widgets/URLDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    :cond_0
    return-void
.end method
