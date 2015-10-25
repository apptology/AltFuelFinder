.class Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;
.super Ljava/lang/Object;
.source "ExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/ExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCustomGlobalLayoutListener"
.end annotation


# instance fields
.field private childViewsHeight:I

.field private needsUpdate:Z

.field final synthetic this$0:Lcom/biznessapps/widgets/ExpandableListView;


# direct methods
.method private constructor <init>(Lcom/biznessapps/widgets/ExpandableListView;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->childViewsHeight:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->needsUpdate:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/widgets/ExpandableListView;Lcom/biznessapps/widgets/ExpandableListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/widgets/ExpandableListView;
    .param p2, "x1"    # Lcom/biznessapps/widgets/ExpandableListView$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;-><init>(Lcom/biznessapps/widgets/ExpandableListView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 62
    iget-object v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v9}, Lcom/biznessapps/widgets/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    if-nez v9, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v9}, Lcom/biznessapps/widgets/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 67
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    iget-object v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v9}, Lcom/biznessapps/widgets/ExpandableListView;->getMeasuredHeight()I

    move-result v4

    .line 69
    .local v4, "listViewHeight":I
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-eqz v9, :cond_0

    .line 73
    iget-boolean v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->needsUpdate:Z

    if-eqz v9, :cond_0

    .line 77
    iget-object v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v9}, Lcom/biznessapps/widgets/ExpandableListView;->getWidth()I

    move-result v7

    .line 79
    .local v7, "width":I
    const/4 v6, 0x0

    .line 80
    .local v6, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 81
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-interface {v2, v0, v9, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 82
    .local v3, "listItem":Landroid/view/View;
    const/high16 v9, -0x80000000

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 83
    .local v8, "widthSpec":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/view/View;->measure(II)V

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 85
    .local v1, "itemHeight":I
    add-int/2addr v6, v1

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "itemHeight":I
    .end local v3    # "listItem":Landroid/view/View;
    .end local v8    # "widthSpec":I
    :cond_2
    iget-object v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v9}, Lcom/biznessapps/widgets/ExpandableListView;->getDividerHeight()I

    move-result v9

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    add-int/2addr v9, v6

    iput v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->childViewsHeight:I

    .line 89
    iget v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->childViewsHeight:I

    if-eq v9, v4, :cond_3

    .line 90
    iget-object v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v9}, Lcom/biznessapps/widgets/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 91
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->childViewsHeight:I

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    iget-object v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v9, v5}, Lcom/biznessapps/widgets/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v9, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->this$0:Lcom/biznessapps/widgets/ExpandableListView;

    invoke-virtual {v9}, Lcom/biznessapps/widgets/ExpandableListView;->requestLayout()V

    goto :goto_0

    .line 95
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iput-boolean v11, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->needsUpdate:Z

    goto :goto_0
.end method

.method public setNeedsUpdate(Z)V
    .locals 0
    .param p1, "needsUpdate"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->needsUpdate:Z

    .line 58
    return-void
.end method
