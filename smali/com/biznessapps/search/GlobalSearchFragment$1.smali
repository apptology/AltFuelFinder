.class Lcom/biznessapps/search/GlobalSearchFragment$1;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/search/GlobalSearchFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/search/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/search/GlobalSearchFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/biznessapps/search/GlobalSearchFragment$1;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment$1;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    iget-object v1, p0, Lcom/biznessapps/search/GlobalSearchFragment$1;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    # getter for: Lcom/biznessapps/search/GlobalSearchFragment;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/search/GlobalSearchFragment;->access$100(Lcom/biznessapps/search/GlobalSearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/biznessapps/search/GlobalSearchFragment;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/search/GlobalSearchFragment;->access$002(Lcom/biznessapps/search/GlobalSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment$1;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    # getter for: Lcom/biznessapps/search/GlobalSearchFragment;->searchQuery:Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/search/GlobalSearchFragment;->access$000(Lcom/biznessapps/search/GlobalSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment$1;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    # getter for: Lcom/biznessapps/search/GlobalSearchFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;
    invoke-static {v0}, Lcom/biznessapps/search/GlobalSearchFragment;->access$200(Lcom/biznessapps/search/GlobalSearchFragment;)Lcom/biznessapps/widgets/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/widgets/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment$1;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    # getter for: Lcom/biznessapps/search/GlobalSearchFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;
    invoke-static {v0}, Lcom/biznessapps/search/GlobalSearchFragment;->access$300(Lcom/biznessapps/search/GlobalSearchFragment;)Lcom/biznessapps/widgets/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/widgets/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/SeparatedListAdapter;->clear()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/search/GlobalSearchFragment$1;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    # invokes: Lcom/biznessapps/search/GlobalSearchFragment;->loadData()V
    invoke-static {v0}, Lcom/biznessapps/search/GlobalSearchFragment;->access$400(Lcom/biznessapps/search/GlobalSearchFragment;)V

    .line 106
    :cond_1
    return-void
.end method
