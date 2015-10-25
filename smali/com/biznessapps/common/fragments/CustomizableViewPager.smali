.class public Lcom/biznessapps/common/fragments/CustomizableViewPager;
.super Lcom/biznessapps/widgets/ExtendedViewPager;
.source "CustomizableViewPager.java"


# instance fields
.field private enableScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/ExtendedViewPager;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/fragments/CustomizableViewPager;->enableScrolling:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/ExtendedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/fragments/CustomizableViewPager;->enableScrolling:Z

    .line 28
    return-void
.end method


# virtual methods
.method public enableScrolling(Z)V
    .locals 0
    .param p1, "shouldBeEnabled"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/biznessapps/common/fragments/CustomizableViewPager;->enableScrolling:Z

    .line 37
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/biznessapps/common/fragments/CustomizableViewPager;->enableScrolling:Z

    if-nez v0, :cond_0

    .line 44
    iget-boolean v0, p0, Lcom/biznessapps/common/fragments/CustomizableViewPager;->enableScrolling:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/fragments/CustomizableViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/biznessapps/widgets/ExtendedViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
