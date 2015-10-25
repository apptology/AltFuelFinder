.class public Lcom/biznessapps/widgets/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;
    }
.end annotation


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field isCyclic:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

.field private scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;

.field scrollingListener:Lcom/biznessapps/widgets/wheel/WheelScroller$ScrollingListener;

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/biznessapps/widgets/wheel/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->visibleItems:I

    .line 43
    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    .line 57
    iput-boolean v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    .line 69
    new-instance v0, Lcom/biznessapps/widgets/wheel/ItemsCacher;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/ItemsCacher;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/biznessapps/widgets/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/WheelView$1;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingListener:Lcom/biznessapps/widgets/wheel/WheelScroller$ScrollingListener;

    .line 174
    new-instance v0, Lcom/biznessapps/widgets/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/WheelView$2;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 95
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->initData(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->visibleItems:I

    .line 43
    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    .line 57
    iput-boolean v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    .line 69
    new-instance v0, Lcom/biznessapps/widgets/wheel/ItemsCacher;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/ItemsCacher;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/biznessapps/widgets/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/WheelView$1;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingListener:Lcom/biznessapps/widgets/wheel/WheelScroller$ScrollingListener;

    .line 174
    new-instance v0, Lcom/biznessapps/widgets/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/WheelView$2;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 87
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->initData(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->visibleItems:I

    .line 43
    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    .line 57
    iput-boolean v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    .line 69
    new-instance v0, Lcom/biznessapps/widgets/wheel/ItemsCacher;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/ItemsCacher;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->changingListeners:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/biznessapps/widgets/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/WheelView$1;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingListener:Lcom/biznessapps/widgets/wheel/WheelScroller$ScrollingListener;

    .line 174
    new-instance v0, Lcom/biznessapps/widgets/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/wheel/WheelView$2;-><init>(Lcom/biznessapps/widgets/wheel/WheelView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 79
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->initData(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/widgets/wheel/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/wheel/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/widgets/wheel/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/wheel/WheelView;

    .prologue
    .line 21
    iget v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$102(Lcom/biznessapps/widgets/wheel/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/wheel/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$200(Lcom/biznessapps/widgets/wheel/WheelView;)Lcom/biznessapps/widgets/wheel/WheelScroller;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/wheel/WheelView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;

    return-object v0
.end method

.method private addViewItem(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "first"    # Z

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 715
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 716
    if-eqz p2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 722
    :goto_0
    const/4 v1, 0x1

    .line 725
    :cond_0
    return v1

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    .line 692
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 693
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    iget-object v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    new-instance v5, Lcom/biznessapps/widgets/wheel/ItemsRange;

    invoke-direct {v5}, Lcom/biznessapps/widgets/wheel/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/biznessapps/widgets/wheel/ItemsCacher;->recycleItems(Landroid/widget/LinearLayout;ILcom/biznessapps/widgets/wheel/ItemsRange;)I

    .line 699
    :goto_0
    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 700
    .local v0, "addItems":I
    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    .line 701
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/widgets/wheel/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    .line 700
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 695
    .end local v0    # "addItems":I
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->createItemsLayout()V

    goto :goto_0

    .line 705
    .restart local v0    # "addItems":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 384
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->initResourcesIfNecessary()V

    .line 387
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 390
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 392
    .local v0, "width":I
    if-ne p2, v5, :cond_1

    .line 393
    move v0, p1

    .line 405
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x14

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 408
    return v0

    .line 395
    :cond_1
    add-int/lit8 v0, v0, 0x14

    .line 398
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 400
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 401
    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 683
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 685
    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 8
    .param p1, "delta"    # I

    .prologue
    .line 527
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    .line 529
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v3

    .line 530
    .local v3, "itemHeight":I
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    div-int v0, v6, v3

    .line 532
    .local v0, "count":I
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    sub-int v5, v6, v0

    .line 533
    .local v5, "pos":I
    iget-object v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    invoke-interface {v6}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 535
    .local v2, "itemCount":I
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    rem-int v1, v6, v3

    .line 536
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_0

    .line 537
    const/4 v1, 0x0

    .line 539
    :cond_0
    iget-boolean v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 540
    if-lez v1, :cond_2

    .line 541
    add-int/lit8 v5, v5, -0x1

    .line 542
    add-int/lit8 v0, v0, 0x1

    .line 548
    :cond_1
    :goto_0
    if-gez v5, :cond_3

    .line 549
    add-int/2addr v5, v2

    goto :goto_0

    .line 543
    :cond_2
    if-gez v1, :cond_1

    .line 544
    add-int/lit8 v5, v5, 0x1

    .line 545
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 551
    :cond_3
    rem-int/2addr v5, v2

    .line 569
    :cond_4
    :goto_1
    iget v4, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    .line 570
    .local v4, "offset":I
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    if-eq v5, v6, :cond_a

    .line 571
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(IZ)V

    .line 577
    :goto_2
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    .line 578
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 579
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    .line 581
    :cond_5
    return-void

    .line 554
    .end local v4    # "offset":I
    :cond_6
    if-gez v5, :cond_7

    .line 555
    iget v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    .line 556
    const/4 v5, 0x0

    goto :goto_1

    .line 557
    :cond_7
    if-lt v5, v2, :cond_8

    .line 558
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    sub-int/2addr v6, v2

    add-int/lit8 v0, v6, 0x1

    .line 559
    add-int/lit8 v5, v2, -0x1

    goto :goto_1

    .line 560
    :cond_8
    if-lez v5, :cond_9

    if-lez v1, :cond_9

    .line 561
    add-int/lit8 v5, v5, -0x1

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    :cond_9
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_4

    if-gez v1, :cond_4

    .line 564
    add-int/lit8 v5, v5, 0x1

    .line 565
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 573
    .restart local v4    # "offset":I
    :cond_a
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 500
    .local v0, "center":I
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 501
    .local v1, "offset":I
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getWidth()I

    move-result v5

    add-int v6, v0, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 502
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 503
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 486
    iget v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 487
    .local v0, "top":I
    const/high16 v1, 0x41200000    # 10.0f

    neg-int v2, v0

    iget v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 489
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 491
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 492
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 471
    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 472
    .local v0, "height":I
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 473
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 475
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 476
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 477
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v2, 0x0

    .line 351
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    .line 355
    :cond_0
    iget v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x32

    sub-int v0, v1, v2

    .line 357
    .local v0, "desired":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    iget v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 366
    iget v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    .line 374
    :goto_0
    return v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    .line 371
    iget v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemHeight:I

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 744
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    invoke-interface {v1}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 745
    :cond_0
    const/4 v1, 0x0

    .line 757
    :goto_0
    return-object v1

    .line 747
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    invoke-interface {v1}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 748
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 749
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsCacher;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 751
    :cond_2
    :goto_1
    if-gez p1, :cond_3

    .line 752
    add-int/2addr p1, v0

    goto :goto_1

    .line 756
    :cond_3
    rem-int/2addr p1, v0

    .line 757
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsCacher;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getItemsRange()Lcom/biznessapps/widgets/wheel/ItemsRange;
    .locals 7

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 599
    const/4 v3, 0x0

    .line 621
    :goto_0
    return-object v3

    .line 602
    :cond_0
    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    .line 603
    .local v2, "first":I
    const/4 v0, 0x1

    .line 605
    .local v0, "count":I
    :goto_1
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 606
    add-int/lit8 v2, v2, -0x1

    .line 607
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 610
    :cond_1
    iget v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_3

    .line 611
    iget v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    if-lez v3, :cond_2

    .line 612
    add-int/lit8 v2, v2, -0x1

    .line 614
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 617
    iget v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 618
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 619
    int-to-double v3, v0

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 621
    .end local v1    # "emptyItems":I
    :cond_3
    new-instance v3, Lcom/biznessapps/widgets/wheel/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/biznessapps/widgets/wheel/ItemsRange;-><init>(II)V

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    new-instance v0, Lcom/biznessapps/widgets/wheel/WheelScroller;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingListener:Lcom/biznessapps/widgets/wheel/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/widgets/wheel/WheelScroller;-><init>(Landroid/content/Context;Lcom/biznessapps/widgets/wheel/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;

    .line 104
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->wheel_view_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/biznessapps/widgets/wheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 337
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/biznessapps/widgets/wheel/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 340
    :cond_2
    sget v0, Lcom/biznessapps/layout/R$drawable;->wheel_view_bg:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->setBackgroundResource(I)V

    .line 341
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 734
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    invoke-interface {v0}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    invoke-interface {v0}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layout(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    add-int/lit8 v0, p1, -0x14

    .line 449
    .local v0, "itemsWidth":I
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 450
    return-void
.end method

.method private rebuildItems()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 630
    const/4 v3, 0x0

    .line 631
    .local v3, "updated":Z
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemsRange()Lcom/biznessapps/widgets/wheel/ItemsRange;

    move-result-object v2

    .line 632
    .local v2, "range":Lcom/biznessapps/widgets/wheel/ItemsRange;
    iget-object v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    .line 633
    iget-object v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    iget-object v7, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lcom/biznessapps/widgets/wheel/ItemsCacher;->recycleItems(Landroid/widget/LinearLayout;ILcom/biznessapps/widgets/wheel/ItemsRange;)I

    move-result v0

    .line 634
    .local v0, "first":I
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    if-eq v6, v0, :cond_4

    move v3, v4

    .line 635
    :goto_0
    iput v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    .line 641
    .end local v0    # "first":I
    :goto_1
    if-nez v3, :cond_1

    .line 642
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsRange;->getFirst()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsRange;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_6

    :cond_0
    move v3, v4

    .line 645
    :cond_1
    :goto_2
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsRange;->getFirst()I

    move-result v7

    if-le v6, v7, :cond_8

    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsRange;->getLast()I

    move-result v7

    if-gt v6, v7, :cond_8

    .line 646
    iget v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsRange;->getFirst()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 647
    invoke-direct {p0, v1, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_7

    .line 656
    .end local v1    # "i":I
    :cond_2
    :goto_4
    iget v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    .line 657
    .restart local v0    # "first":I
    iget-object v4, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsRange;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 658
    iget v4, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lcom/biznessapps/widgets/wheel/WheelView;->addViewItem(IZ)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 659
    add-int/lit8 v0, v0, 0x1

    .line 657
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    :cond_4
    move v3, v5

    .line 634
    goto :goto_0

    .line 637
    .end local v0    # "first":I
    :cond_5
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->createItemsLayout()V

    .line 638
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    move v3, v5

    .line 642
    goto :goto_2

    .line 650
    .restart local v1    # "i":I
    :cond_7
    iput v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    .line 646
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 653
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v2}, Lcom/biznessapps/widgets/wheel/ItemsRange;->getFirst()I

    move-result v4

    iput v4, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    goto :goto_4

    .line 662
    .restart local v0    # "first":I
    .restart local v1    # "i":I
    :cond_9
    iput v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    .line 664
    return v3
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->calculateLayoutWidth(II)I

    .line 673
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->layout(II)V

    .line 675
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lcom/biznessapps/widgets/wheel/WheelViewAdapter;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .param p1, "clearCaches"    # Z

    .prologue
    .line 310
    if-eqz p1, :cond_2

    .line 311
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/wheel/ItemsCacher;->clearAll()V

    .line 312
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 315
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    .line 321
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->invalidate()V

    .line 322
    return-void

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->recycle:Lcom/biznessapps/widgets/wheel/ItemsCacher;

    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->firstItem:I

    new-instance v3, Lcom/biznessapps/widgets/wheel/ItemsRange;

    invoke-direct {v3}, Lcom/biznessapps/widgets/wheel/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/widgets/wheel/ItemsCacher;->recycleItems(Landroid/widget/LinearLayout;ILcom/biznessapps/widgets/wheel/ItemsRange;)I

    goto :goto_0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners()V
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    .line 225
    .local v1, "listener":Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;
    invoke-interface {v1, p0}, Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;->onStateChanged(Lcom/biznessapps/widgets/wheel/WheelView;)V

    goto :goto_0

    .line 227
    .end local v1    # "listener":Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 456
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    invoke-interface {v0}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->updateView()V

    .line 459
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 460
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 463
    :cond_0
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    .line 464
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 438
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->layout(II)V

    .line 439
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 413
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 414
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 415
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 416
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 418
    .local v2, "heightSize":I
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->buildViewForMeasuring()V

    .line 420
    invoke-direct {p0, v5, v4}, Lcom/biznessapps/widgets/wheel/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 423
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 424
    move v0, v2

    .line 433
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->setMeasuredDimension(II)V

    .line 434
    return-void

    .line 426
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lcom/biznessapps/widgets/wheel/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/biznessapps/widgets/wheel/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 428
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 429
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 507
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getViewAdapter()Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 519
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/biznessapps/widgets/wheel/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 513
    :pswitch_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 514
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 511
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public removeChangingListener(Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/biznessapps/widgets/wheel/WheelView$OnStateChangedListener;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 590
    .local v0, "distance":I
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/biznessapps/widgets/wheel/WheelScroller;->scroll(II)V

    .line 591
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->setCurrentItem(IZ)V

    .line 286
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v5, 0x0

    .line 245
    iget-object v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    invoke-interface {v3}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItemsCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    invoke-interface {v3}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 250
    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 251
    :cond_2
    iget-boolean v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    if-eqz v3, :cond_0

    .line 252
    :goto_1
    if-gez p1, :cond_3

    .line 253
    add-int/2addr p1, v0

    goto :goto_1

    .line 255
    :cond_3
    rem-int/2addr p1, v0

    .line 260
    :cond_4
    iget v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    if-eq p1, v3, :cond_0

    .line 261
    if-eqz p2, :cond_7

    .line 262
    iget v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    sub-int v1, p1, v3

    .line 263
    .local v1, "itemsToScroll":I
    iget-boolean v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    if-eqz v3, :cond_5

    .line 264
    iget v3, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v2, v3, v4

    .line 265
    .local v2, "scroll":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 266
    if-gez v1, :cond_6

    move v1, v2

    .line 269
    .end local v2    # "scroll":I
    :cond_5
    :goto_2
    invoke-virtual {p0, v1, v5}, Lcom/biznessapps/widgets/wheel/WheelView;->scroll(II)V

    goto :goto_0

    .line 266
    .restart local v2    # "scroll":I
    :cond_6
    neg-int v1, v2

    goto :goto_2

    .line 271
    .end local v1    # "itemsToScroll":I
    .end local v2    # "scroll":I
    :cond_7
    iput v5, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I

    .line 272
    iput p1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->currentItem:I

    .line 273
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->notifyChangingListeners()V

    .line 274
    invoke-virtual {p0}, Lcom/biznessapps/widgets/wheel/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 1
    .param p1, "isCyclic"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->isCyclic:Z

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->invalidateWheel(Z)V

    .line 303
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/biznessapps/widgets/wheel/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 143
    return-void
.end method

.method public setViewAdapter(Lcom/biznessapps/widgets/wheel/WheelViewAdapter;)V
    .locals 2
    .param p1, "viewAdapter"    # Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    .line 197
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->viewAdapter:Lcom/biznessapps/widgets/wheel/WheelViewAdapter;

    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 201
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->invalidateWheel(Z)V

    .line 202
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/biznessapps/widgets/wheel/WheelView;->visibleItems:I

    .line 163
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/wheel/WheelScroller;->stopScrolling()V

    .line 765
    return-void
.end method
