.class Lcom/biznessapps/common/fragments/CommonListFragment$1;
.super Ljava/lang/Object;
.source "CommonListFragment.java"

# interfaces
.implements Lcom/biznessapps/common/adapters/AbstractAdapter$PositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/fragments/CommonListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/fragments/CommonListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/fragments/CommonListFragment;)V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment$1;, "Lcom/biznessapps/common/fragments/CommonListFragment.1;"
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastPositionAchieved(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment$1;, "Lcom/biznessapps/common/fragments/CommonListFragment.1;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    iget-object v0, v0, Lcom/biznessapps/common/fragments/CommonListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    iget-object v0, v0, Lcom/biznessapps/common/fragments/CommonListFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    invoke-virtual {v0}, Lcom/biznessapps/common/fragments/CommonListFragment;->isUsedPositioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    iget-boolean v0, v0, Lcom/biznessapps/common/fragments/CommonListFragment;->isOffsetLoading:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    iput p1, v0, Lcom/biznessapps/common/fragments/CommonListFragment;->currentItemIndex:I

    .line 66
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    iget-object v1, v1, Lcom/biznessapps/common/fragments/CommonListFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/biznessapps/common/fragments/CommonListFragment;->offset:I

    .line 67
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/biznessapps/common/fragments/CommonListFragment;->isOffsetLoading:Z

    .line 68
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    iget-boolean v0, v0, Lcom/biznessapps/common/fragments/CommonListFragment;->noDataMore:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$1;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    invoke-virtual {v0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadData()V

    .line 73
    :cond_0
    return-void
.end method
