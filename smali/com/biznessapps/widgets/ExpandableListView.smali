.class public Lcom/biznessapps/widgets/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/ExpandableListView$1;,
        Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;
    }
.end annotation


# instance fields
.field private mExpandOn:Z

.field private mListener:Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/widgets/ExpandableListView;->mExpandOn:Z

    .line 51
    new-instance v0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;-><init>(Lcom/biznessapps/widgets/ExpandableListView;Lcom/biznessapps/widgets/ExpandableListView$1;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/ExpandableListView;->mListener:Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/widgets/ExpandableListView;->mExpandOn:Z

    .line 51
    new-instance v0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;-><init>(Lcom/biznessapps/widgets/ExpandableListView;Lcom/biznessapps/widgets/ExpandableListView$1;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/ExpandableListView;->mListener:Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/widgets/ExpandableListView;->mExpandOn:Z

    .line 51
    new-instance v0, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;-><init>(Lcom/biznessapps/widgets/ExpandableListView;Lcom/biznessapps/widgets/ExpandableListView$1;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/ExpandableListView;->mListener:Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    .line 25
    invoke-direct {p0}, Lcom/biznessapps/widgets/ExpandableListView;->updateListener()V

    .line 26
    return-void
.end method

.method private updateListener()V
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/biznessapps/widgets/ExpandableListView;->mExpandOn:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/widgets/ExpandableListView;->mListener:Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/widgets/ExpandableListView;->mListener:Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ExpandableListView;->requestLayout()V

    .line 49
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/ExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/widgets/ExpandableListView;->mListener:Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 11
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/widgets/ExpandableListView;->mListener:Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/ExpandableListView$OnCustomGlobalLayoutListener;->setNeedsUpdate(Z)V

    .line 31
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    return-void
.end method

.method public setExpandOn(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/biznessapps/widgets/ExpandableListView;->mExpandOn:Z

    .line 37
    invoke-direct {p0}, Lcom/biznessapps/widgets/ExpandableListView;->updateListener()V

    .line 38
    return-void
.end method
