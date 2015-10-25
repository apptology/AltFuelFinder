.class Lcom/biznessapps/common/components/SearchTopBar$4;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;


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


# direct methods
.method constructor <init>(Lcom/biznessapps/common/components/SearchTopBar;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/biznessapps/common/components/SearchTopBar$4;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResumed()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar$4;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/common/components/SearchTopBar;->access$000(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    .line 83
    .local v0, "searchEditVisibility":I
    iget-object v1, p0, Lcom/biznessapps/common/components/SearchTopBar$4;->this$0:Lcom/biznessapps/common/components/SearchTopBar;

    # getter for: Lcom/biznessapps/common/components/SearchTopBar;->titleTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/biznessapps/common/components/SearchTopBar;->access$200(Lcom/biznessapps/common/components/SearchTopBar;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v0, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
