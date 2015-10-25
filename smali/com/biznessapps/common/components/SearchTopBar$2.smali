.class Lcom/biznessapps/common/components/SearchTopBar$2;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/components/SearchTopBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;Lcom/biznessapps/api/UiSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/components/SearchTopBar;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$loadDataRunnable:Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/components/SearchTopBar;Landroid/content/Context;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/common/components/SearchTopBar$2;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    iput-object p2, p0, Lcom/biznessapps/common/components/SearchTopBar$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/biznessapps/common/components/SearchTopBar$2;->val$loadDataRunnable:Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar$2;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/common/components/SearchTopBar;->access$000(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "searchQuery":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/biznessapps/common/components/SearchTopBar$2;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/biznessapps/common/components/SearchTopBar;->access$000(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 55
    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar$2;->val$loadDataRunnable:Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;->setSearchQuery(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar$2;->val$loadDataRunnable:Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;

    invoke-virtual {v1}, Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;->run()V

    .line 57
    return-void
.end method
