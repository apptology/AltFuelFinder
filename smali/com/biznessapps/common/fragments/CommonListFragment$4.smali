.class Lcom/biznessapps/common/fragments/CommonListFragment$4;
.super Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
.source "CommonListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/fragments/CommonListFragment;->initSearchBar()V
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
    .line 197
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment$4;, "Lcom/biznessapps/common/fragments/CommonListFragment.4;"
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonListFragment$4;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    invoke-direct {p0}, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragment$4;, "Lcom/biznessapps/common/fragments/CommonListFragment.4;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$4;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragment$4;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/biznessapps/common/fragments/CommonListFragment;->searchQuery:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragment$4;->this$0:Lcom/biznessapps/common/fragments/CommonListFragment;

    invoke-virtual {v0}, Lcom/biznessapps/common/fragments/CommonListFragment;->loadData()V

    .line 201
    return-void
.end method
