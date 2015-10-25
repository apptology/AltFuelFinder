.class Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;
.super Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
.source "CommonListFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/fragments/CommonListFragmentNew;->initSearchBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/fragments/CommonListFragmentNew;)V
    .locals 0

    .prologue
    .line 176
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew.4;"
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;->this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;

    invoke-direct {p0}, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    .local p0, "this":Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;, "Lcom/biznessapps/common/fragments/CommonListFragmentNew.4;"
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;->this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;

    invoke-virtual {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->searchQuery:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonListFragmentNew$4;->this$0:Lcom/biznessapps/common/fragments/CommonListFragmentNew;

    invoke-virtual {v0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->loadData()V

    .line 180
    return-void
.end method
