.class public Lcom/biznessapps/widgets/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public alwaysOverrideTouch:Z

.field protected currentX:I

.field private dataChanged:Z

.field private dataObserver:Landroid/database/DataSetObserver;

.field private displayOffset:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private leftViewIndex:I

.field protected listAdapter:Landroid/widget/ListAdapter;

.field private maxX:I

.field protected nextX:I

.field private onGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private onItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private onItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private removedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private rightViewIndex:I

.field protected scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->alwaysOverrideTouch:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    .line 23
    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    .line 26
    const v0, 0x7fffffff

    iput v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->maxX:I

    .line 27
    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    .line 34
    iput-boolean v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->dataChanged:Z

    .line 69
    new-instance v0, Lcom/biznessapps/widgets/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/HorizontalListView$1;-><init>(Lcom/biznessapps/widgets/HorizontalListView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->dataObserver:Landroid/database/DataSetObserver;

    .line 294
    new-instance v0, Lcom/biznessapps/widgets/HorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/HorizontalListView$3;-><init>(Lcom/biznessapps/widgets/HorizontalListView;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->onGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 38
    invoke-direct {p0}, Lcom/biznessapps/widgets/HorizontalListView;->initView()V

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/biznessapps/widgets/HorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/biznessapps/widgets/HorizontalListView;->dataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/widgets/HorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/HorizontalListView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/biznessapps/widgets/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/widgets/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/HorizontalListView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->onItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/widgets/HorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/HorizontalListView;

    .prologue
    .line 18
    iget v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/biznessapps/widgets/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/HorizontalListView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->onItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/widgets/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/HorizontalListView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->onItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x80000000

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 123
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/biznessapps/widgets/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 129
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 132
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "edge":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/biznessapps/widgets/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 190
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/biznessapps/widgets/HorizontalListView;->fillListRight(II)V

    .line 192
    const/4 v1, 0x0

    .line 193
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/biznessapps/widgets/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 197
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/biznessapps/widgets/HorizontalListView;->fillListLeft(II)V

    .line 199
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 223
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    if-ltz v1, :cond_0

    .line 224
    iget-object v2, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    iget-object v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/widgets/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 228
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    .line 229
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    goto :goto_0

    .line 231
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 4
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 203
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    iget-object v2, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    iget-object v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "child":Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/widgets/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 210
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    iget-object v2, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 211
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->currentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->maxX:I

    .line 214
    :cond_0
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->maxX:I

    if-gez v1, :cond_1

    .line 215
    const/4 v1, 0x0

    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->maxX:I

    .line 217
    :cond_1
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    goto :goto_0

    .line 220
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 3

    .prologue
    .line 42
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->currentX:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    .line 47
    const v0, 0x7fffffff

    iput v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->maxX:I

    .line 48
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    .line 49
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/widgets/HorizontalListView;->onGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->gestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .param p1, "dx"    # I

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 255
    iget v4, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    .line 256
    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    .line 257
    .local v3, "left":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 258
    invoke-virtual {p0, v2}, Lcom/biznessapps/widgets/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 260
    .local v1, "childWidth":I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 262
    add-int/2addr v3, v1

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childWidth":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .param p1, "dx"    # I

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0, v3}, Lcom/biznessapps/widgets/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 236
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->displayOffset:I

    .line 237
    iget-object v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 239
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->leftViewIndex:I

    .line 240
    invoke-virtual {p0, v3}, Lcom/biznessapps/widgets/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 246
    iget-object v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->removedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 248
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->rightViewIndex:I

    .line 249
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/biznessapps/widgets/HorizontalListView;->initView()V

    .line 112
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->removeAllViewsInLayout()V

    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 275
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 276
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 290
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 291
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/biznessapps/widgets/HorizontalListView;->maxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 283
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->requestLayout()V

    .line 286
    const/4 v0, 0x1

    return v0

    .line 283
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 139
    iget-object v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->dataChanged:Z

    if-eqz v3, :cond_2

    .line 144
    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->currentX:I

    .line 145
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lcom/biznessapps/widgets/HorizontalListView;->initView()V

    .line 146
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->removeAllViewsInLayout()V

    .line 147
    iput v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    .line 148
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->dataChanged:Z

    .line 151
    .end local v1    # "oldCurrentX":I
    :cond_2
    iget-object v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    iget-object v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 153
    .local v2, "scrollx":I
    iput v2, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    .line 156
    .end local v2    # "scrollx":I
    :cond_3
    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    if-gtz v3, :cond_4

    .line 157
    const/4 v3, 0x0

    iput v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    .line 158
    iget-object v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 160
    :cond_4
    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    iget v4, p0, Lcom/biznessapps/widgets/HorizontalListView;->maxX:I

    if-lt v3, v4, :cond_5

    .line 161
    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->maxX:I

    iput v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    .line 162
    iget-object v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 165
    :cond_5
    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->currentX:I

    iget v4, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    sub-int v0, v3, v4

    .line 167
    .local v0, "dx":I
    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/HorizontalListView;->removeNonVisibleItems(I)V

    .line 168
    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/HorizontalListView;->fillList(I)V

    .line 169
    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/HorizontalListView;->positionItems(I)V

    .line 171
    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    iput v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->currentX:I

    .line 173
    iget-object v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    new-instance v3, Lcom/biznessapps/widgets/HorizontalListView$2;

    invoke-direct {v3, p0}, Lcom/biznessapps/widgets/HorizontalListView$2;-><init>(Lcom/biznessapps/widgets/HorizontalListView;)V

    invoke-virtual {p0, v3}, Lcom/biznessapps/widgets/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    .end local v0    # "dx":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .param p1, "x"    # I

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/biznessapps/widgets/HorizontalListView;->nextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 269
    invoke-virtual {p0}, Lcom/biznessapps/widgets/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 18
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    .line 106
    iget-object v0, p0, Lcom/biznessapps/widgets/HorizontalListView;->listAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/biznessapps/widgets/HorizontalListView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 107
    invoke-direct {p0}, Lcom/biznessapps/widgets/HorizontalListView;->reset()V

    .line 108
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/widgets/HorizontalListView;->onItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 61
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/widgets/HorizontalListView;->onItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 67
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/biznessapps/widgets/HorizontalListView;->onItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 56
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 119
    return-void
.end method
