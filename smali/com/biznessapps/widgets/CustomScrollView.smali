.class public Lcom/biznessapps/widgets/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# static fields
.field private static final MAX_HEIGHT:I = 0x78


# instance fields
.field private maxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x78

    iput v0, p0, Lcom/biznessapps/widgets/CustomScrollView;->maxHeight:I

    .line 24
    return-void
.end method

.method private dpToPx(Landroid/content/res/Resources;I)I
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "dp"    # I

    .prologue
    .line 37
    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CustomScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/biznessapps/widgets/CustomScrollView;->maxHeight:I

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/widgets/CustomScrollView;->dpToPx(Landroid/content/res/Resources;I)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 34
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/biznessapps/widgets/CustomScrollView;->maxHeight:I

    .line 28
    return-void
.end method
