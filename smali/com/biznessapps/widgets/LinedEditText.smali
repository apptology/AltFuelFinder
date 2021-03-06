.class public Lcom/biznessapps/widgets/LinedEditText;
.super Landroid/widget/EditText;
.source "LinedEditText.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/LinedEditText;->mRect:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/LinedEditText;->mPaint:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/biznessapps/widgets/LinedEditText;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/biznessapps/widgets/LinedEditText;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/biznessapps/widgets/LinedEditText;->getHeight()I

    move-result v8

    .line 34
    .local v8, "height":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/LinedEditText;->getLineHeight()I

    move-result v10

    .line 36
    .local v10, "line_height":I
    div-int v7, v8, v10

    .line 38
    .local v7, "count":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/LinedEditText;->getLineCount()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/biznessapps/widgets/LinedEditText;->getLineCount()I

    move-result v7

    .line 41
    :cond_0
    iget-object v11, p0, Lcom/biznessapps/widgets/LinedEditText;->mRect:Landroid/graphics/Rect;

    .line 42
    .local v11, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/biznessapps/widgets/LinedEditText;->mPaint:Landroid/graphics/Paint;

    .line 43
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v11}, Lcom/biznessapps/widgets/LinedEditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v6

    .line 45
    .local v6, "baseline":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 47
    iget v0, v11, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p0}, Lcom/biznessapps/widgets/LinedEditText;->getLineHeight()I

    move-result v0

    add-int/2addr v6, v0

    .line 45
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    return-void
.end method
