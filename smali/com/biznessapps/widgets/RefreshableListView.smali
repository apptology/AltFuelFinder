.class public Lcom/biznessapps/widgets/RefreshableListView;
.super Lcom/biznessapps/widgets/ExpandableListView;
.source "RefreshableListView.java"


# instance fields
.field private positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setDividerHeight(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setDividerHeight(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/widgets/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setDividerHeight(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public removeListeners()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/widgets/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/biznessapps/common/adapters/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/biznessapps/widgets/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/AbstractAdapter;

    iget-object v1, p0, Lcom/biznessapps/widgets/RefreshableListView;->positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/adapters/AbstractAdapter;->removePositionListener(Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;)V

    .line 54
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 15
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/biznessapps/widgets/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    instance-of v0, p1, Lcom/biznessapps/common/adapters/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lcom/biznessapps/common/adapters/AbstractAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/biznessapps/widgets/RefreshableListView;->positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    invoke-virtual {p1, v0}, Lcom/biznessapps/common/adapters/AbstractAdapter;->addPositionListener(Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;)V

    .line 47
    :cond_0
    return-void
.end method

.method public setPositionListener(Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;)V
    .locals 0
    .param p1, "positionListener"    # Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/biznessapps/widgets/RefreshableListView;->positionListener:Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;

    .line 21
    return-void
.end method
