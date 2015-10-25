.class Lcom/biznessapps/golfcourse/GameListFragment$1;
.super Ljava/lang/Object;
.source "GameListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/GameListFragment;->plugListView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/GameListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/GameListFragment;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/biznessapps/golfcourse/GameListFragment$1;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/GameListLayoutItem;

    .line 204
    .local v0, "item":Lcom/biznessapps/golfcourse/GameListLayoutItem;
    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$1;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    iget-object v2, v0, Lcom/biznessapps/golfcourse/GameListLayoutItem;->game:Lcom/biznessapps/golfcourse/model/Game;

    # setter for: Lcom/biznessapps/golfcourse/GameListFragment;->mSelectedGameItem:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/GameListFragment;->access$002(Lcom/biznessapps/golfcourse/GameListFragment;Lcom/biznessapps/golfcourse/model/Game;)Lcom/biznessapps/golfcourse/model/Game;

    .line 205
    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$1;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    # getter for: Lcom/biznessapps/golfcourse/GameListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/GameListFragment;->access$100(Lcom/biznessapps/golfcourse/GameListFragment;)Lcom/biznessapps/widgets/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/widgets/RefreshableListView;->showContextMenu()Z

    .line 207
    const/4 v1, 0x1

    return v1
.end method
