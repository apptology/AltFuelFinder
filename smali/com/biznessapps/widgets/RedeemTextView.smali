.class public Lcom/biznessapps/widgets/RedeemTextView;
.super Landroid/widget/TextView;
.source "RedeemTextView.java"


# static fields
.field private static final ANGLE:I = 0x1a


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    invoke-virtual {p0}, Lcom/biznessapps/widgets/RedeemTextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 30
    .local v1, "py":F
    invoke-virtual {p0}, Lcom/biznessapps/widgets/RedeemTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 31
    .local v0, "px":F
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 38
    return-void
.end method
