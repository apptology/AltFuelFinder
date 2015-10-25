.class Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;
.super Ljava/lang/Object;
.source "LoopPagerAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;-><init>(Landroid/support/v4/view/ViewPager;Ljava/util/List;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

.field final synthetic val$viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    iput-object p2, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;->val$viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 71
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    # setter for: Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->currentPos:I
    invoke-static {v1, p1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->access$002(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;I)I

    .line 60
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    invoke-virtual {v1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->getCount()I

    move-result v0

    .line 62
    .local v0, "pageCount":I
    if-nez p1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;->val$viewPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 68
    .end local v0    # "pageCount":I
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v0    # "pageCount":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;->val$viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 53
    return-void
.end method
