.class Lcom/biznessapps/common/components/SearchTopBar$1;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/biznessapps/common/components/SearchTopBar;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    iput-object p2, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/biznessapps/common/components/SearchTopBar;->access$000(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->searchCloseView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/common/components/SearchTopBar;->access$100(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->titleTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/common/components/SearchTopBar;->access$200(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->searchIconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/biznessapps/common/components/SearchTopBar;->access$300(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/biznessapps/common/components/SearchTopBar;->access$000(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 47
    iget-object v0, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar$1;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/common/components/SearchTopBar;->access$000(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 48
    return-void
.end method
