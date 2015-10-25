.class public Lcom/biznessapps/golfcourse/SmartTableView;
.super Landroid/widget/FrameLayout;
.source "SmartTableView.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;


# instance fields
.field private mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

.field private mAdapterDataSetObjserver:Landroid/database/DataSetObserver;

.field private mCellClickListener:Lcom/biznessapps/golfcourse/OnCellClickListener;

.field private mContentBackroundResID:I

.field private mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

.field private mFrozenColumnHeaderBackroundResID:I

.field private mFrozenCrossHeaderBackroundResID:I

.field private mFrozenRowHeaderBackroundResID:I

.field private mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

.field private mIsBuilt:Z

.field private mTLContentTable:Landroid/widget/TableLayout;

.field private mTLFrozenColumnHeaderTable:Landroid/widget/TableLayout;

.field private mTLFrozenCrossHeaderTable:Landroid/widget/TableLayout;

.field private mTLFrozenRowHeaderTable:Landroid/widget/TableLayout;

.field private mTableCellClickListener:Landroid/view/View$OnClickListener;

.field private mVGRoot:Landroid/view/ViewGroup;

.field private mViewPositionMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mIsBuilt:Z

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mViewPositionMap:Ljava/util/Hashtable;

    .line 278
    new-instance v0, Lcom/biznessapps/golfcourse/SmartTableView$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/SmartTableView$3;-><init>(Lcom/biznessapps/golfcourse/SmartTableView;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTableCellClickListener:Landroid/view/View$OnClickListener;

    .line 289
    new-instance v0, Lcom/biznessapps/golfcourse/SmartTableView$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/golfcourse/SmartTableView$4;-><init>(Lcom/biznessapps/golfcourse/SmartTableView;)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapterDataSetObjserver:Landroid/database/DataSetObserver;

    .line 51
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->initView()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/golfcourse/SmartTableView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SmartTableView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/golfcourse/SmartTableView;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SmartTableView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mViewPositionMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/golfcourse/SmartTableView;)Lcom/biznessapps/golfcourse/OnCellClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SmartTableView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mCellClickListener:Lcom/biznessapps/golfcourse/OnCellClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/golfcourse/SmartTableView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SmartTableView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mIsBuilt:Z

    return v0
.end method

.method static synthetic access$400(Lcom/biznessapps/golfcourse/SmartTableView;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SmartTableView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->updateTableView()V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/golfcourse/SmartTableView;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/golfcourse/SmartTableView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->buildTableView()V

    return-void
.end method

.method private buildTableView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 178
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    if-nez v4, :cond_0

    .line 223
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mViewPositionMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 187
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenCrossHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 188
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenCrossHeaderTable:Landroid/widget/TableLayout;

    iget v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenCrossHeaderBackroundResID:I

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 189
    new-instance v3, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 190
    .local v3, "tableRow":Landroid/widget/TableRow;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v4, v7}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getFrozenCrossHeaderItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v6, v6}, Lcom/biznessapps/golfcourse/SmartTableView;->setViewListener(Landroid/view/View;II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 191
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenCrossHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenRowHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 195
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenRowHeaderTable:Landroid/widget/TableLayout;

    iget v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenRowHeaderBackroundResID:I

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 196
    new-instance v3, Landroid/widget/TableRow;

    .end local v3    # "tableRow":Landroid/widget/TableRow;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 197
    .restart local v3    # "tableRow":Landroid/widget/TableRow;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getColumnCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v4, v7, v1}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getFrozenRowHeaderItemView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v4, v6, v5}, Lcom/biznessapps/golfcourse/SmartTableView;->setViewListener(Landroid/view/View;II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenRowHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenColumnHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 204
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenColumnHeaderTable:Landroid/widget/TableLayout;

    iget v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenColumnHeaderBackroundResID:I

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 205
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getRowCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 206
    new-instance v3, Landroid/widget/TableRow;

    .end local v3    # "tableRow":Landroid/widget/TableRow;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 207
    .restart local v3    # "tableRow":Landroid/widget/TableRow;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v4, v7, v1}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getFrozenColumnHeaderItemView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/biznessapps/golfcourse/SmartTableView;->setViewListener(Landroid/view/View;II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 208
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenColumnHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLContentTable:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 213
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLContentTable:Landroid/widget/TableLayout;

    iget v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentBackroundResID:I

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 214
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_3
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getRowCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    .line 215
    new-instance v3, Landroid/widget/TableRow;

    .end local v3    # "tableRow":Landroid/widget/TableRow;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 216
    .restart local v3    # "tableRow":Landroid/widget/TableRow;
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_4
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getColumnCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_3

    .line 217
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v4, v7, v2, v0}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getContentView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/biznessapps/golfcourse/SmartTableView;->setViewListener(Landroid/view/View;II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 219
    :cond_3
    iget-object v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLContentTable:Landroid/widget/TableLayout;

    invoke-virtual {v4, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 222
    .end local v0    # "col":I
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mIsBuilt:Z

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->common_smart_tableview_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    .line 161
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/SmartTableView;->addView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->frozenTableCrossHeader:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenCrossHeaderTable:Landroid/widget/TableLayout;

    .line 164
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->fronzeTableRowHeader:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenRowHeaderTable:Landroid/widget/TableLayout;

    .line 165
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->frozenTableColumnHeader:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenColumnHeaderTable:Landroid/widget/TableLayout;

    .line 166
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->contentTable:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLContentTable:Landroid/widget/TableLayout;

    .line 168
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->contentTableHeaderHorizontalScrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    .line 169
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->setScrollViewListener(Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;)V

    .line 172
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->contentTableHorizontalScrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    iput-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    .line 173
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->setScrollViewListener(Lcom/biznessapps/golfcourse/HorizontalScrollViewListener;)V

    .line 175
    return-void
.end method

.method private setViewListener(Landroid/view/View;II)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mViewPositionMap:Ljava/util/Hashtable;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTableCellClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-object p1
.end method

.method private updateTableView()V
    .locals 7

    .prologue
    .line 226
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    if-nez v5, :cond_1

    .line 260
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenCrossHeaderTable:Landroid/widget/TableLayout;

    iget v6, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenCrossHeaderBackroundResID:I

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 233
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenCrossHeaderTable:Landroid/widget/TableLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 234
    .local v3, "tableRow":Landroid/widget/TableRow;
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v5, v3}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getFrozenCrossHeaderItemView(Landroid/view/View;)Landroid/view/View;

    .line 237
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenRowHeaderTable:Landroid/widget/TableLayout;

    iget v6, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenRowHeaderBackroundResID:I

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getColumnCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2

    .line 239
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenRowHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "tableRow":Landroid/widget/TableRow;
    check-cast v3, Landroid/widget/TableRow;

    .line 240
    .restart local v3    # "tableRow":Landroid/widget/TableRow;
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v5, v3, v1}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getFrozenRowHeaderItemView(Landroid/view/View;I)Landroid/view/View;

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_2
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenColumnHeaderTable:Landroid/widget/TableLayout;

    iget v6, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenColumnHeaderBackroundResID:I

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 245
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getRowCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 246
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenColumnHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "tableRow":Landroid/widget/TableRow;
    check-cast v3, Landroid/widget/TableRow;

    .line 247
    .restart local v3    # "tableRow":Landroid/widget/TableRow;
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v5, v3, v1}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getFrozenColumnHeaderItemView(Landroid/view/View;I)Landroid/view/View;

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_3
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLContentTable:Landroid/widget/TableLayout;

    iget v6, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentBackroundResID:I

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->setBackgroundResource(I)V

    .line 252
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_2
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getRowCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLContentTable:Landroid/widget/TableLayout;

    invoke-virtual {v5, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "tableRow":Landroid/widget/TableRow;
    check-cast v3, Landroid/widget/TableRow;

    .line 255
    .restart local v3    # "tableRow":Landroid/widget/TableRow;
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_3
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getColumnCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_4

    .line 256
    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 257
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v5, v4, v2, v0}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->getContentView(Landroid/view/View;II)Landroid/view/View;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 252
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public fitViewToContents(Lcom/biznessapps/golfcourse/OnTableResizeListener;)V
    .locals 12
    .param p1, "listener"    # Lcom/biznessapps/golfcourse/OnTableResizeListener;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mTLFrozenCrossHeaderTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v3, v4}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v10, v2, v3

    .line 69
    .local v10, "contentWidth":I
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v2, v4}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v3, v4}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/SmartTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    add-int v9, v2, v3

    .line 73
    .local v9, "contentHeight":I
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v11, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v2, v1

    move v3, v1

    move v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 78
    .local v0, "animation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 79
    new-instance v1, Lcom/biznessapps/golfcourse/SmartTableView$1;

    invoke-direct {v1, p0, p1, v10, v9}, Lcom/biznessapps/golfcourse/SmartTableView$1;-><init>(Lcom/biznessapps/golfcourse/SmartTableView;Lcom/biznessapps/golfcourse/OnTableResizeListener;II)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 95
    iget-object v1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    return-void
.end method

.method public getScrollPosoitionX()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollPosoitionY()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public onScrollChanged(Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;IIII)V
    .locals 1
    .param p1, "scrollView"    # Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldX"    # I
    .param p5, "oldY"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    if-ne p1, v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0, p2, p3}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->scrollTo(II)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    if-ne p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0, p2, p3}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public restoreViewToScreen(Lcom/biznessapps/golfcourse/OnTableResizeListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/biznessapps/golfcourse/OnTableResizeListener;

    .prologue
    const/4 v4, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 99
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 100
    iget-object v2, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v2, v1

    move v3, v1

    move v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 104
    .local v0, "animation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 105
    new-instance v1, Lcom/biznessapps/golfcourse/SmartTableView$2;

    invoke-direct {v1, p0, p1}, Lcom/biznessapps/golfcourse/SmartTableView$2;-><init>(Lcom/biznessapps/golfcourse/SmartTableView;Lcom/biznessapps/golfcourse/OnTableResizeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    iget-object v1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    return-void
.end method

.method public setAdapter(Lcom/biznessapps/golfcourse/SmartTableViewAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    .prologue
    .line 125
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->unregisterDataSetObserver()V

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    .line 131
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mIsBuilt:Z

    .line 134
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapterDataSetObjserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 135
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mAdapter:Lcom/biznessapps/golfcourse/SmartTableViewAdapter;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;->notifyDataSetChanged()V

    .line 137
    :cond_1
    return-void
.end method

.method public setContentBcakground(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentBackroundResID:I

    .line 153
    return-void
.end method

.method public setFrozenColumnHeaderBackground(I)V
    .locals 0
    .param p1, "resID"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenColumnHeaderBackroundResID:I

    .line 149
    return-void
.end method

.method public setFrozenCrossHeaderBackground(I)V
    .locals 0
    .param p1, "resID"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenCrossHeaderBackroundResID:I

    .line 141
    return-void
.end method

.method public setFrozenRowHeaderBackground(I)V
    .locals 0
    .param p1, "resID"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mFrozenRowHeaderBackroundResID:I

    .line 145
    return-void
.end method

.method public setOnCellClickListener(Lcom/biznessapps/golfcourse/OnCellClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/golfcourse/OnCellClickListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mCellClickListener:Lcom/biznessapps/golfcourse/OnCellClickListener;

    .line 157
    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mHeaderHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0, p1}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->setScrollX(I)V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView;->mContentHorizontalScrollView:Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;

    invoke-virtual {v0, p2}, Lcom/biznessapps/golfcourse/ObservableHorizontalScrollView;->setScrollY(I)V

    .line 65
    return-void
.end method
