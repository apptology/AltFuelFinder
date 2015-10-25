.class public Lcom/biznessapps/widgets/ExtendedViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ExtendedViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 21
    instance-of v0, p1, Lcom/biznessapps/widgets/TouchImageView;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lcom/biznessapps/widgets/TouchImageView;

    .end local p1    # "v":Landroid/view/View;
    neg-int v0, p3

    invoke-virtual {p1, v0}, Lcom/biznessapps/widgets/TouchImageView;->canScrollHorizontallyFroyo(I)Z

    move-result v0

    .line 30
    :goto_0
    return v0

    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    goto :goto_0
.end method
