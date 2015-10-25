.class Lcom/biznessapps/news/NewsFragment$3;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/news/NewsFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/news/NewsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/news/NewsFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/biznessapps/news/NewsFragment$3;->this$0:Lcom/biznessapps/news/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/news/SearchEntity;

    .line 209
    .local v1, "item":Lcom/biznessapps/news/SearchEntity;
    invoke-virtual {v1}, Lcom/biznessapps/news/SearchEntity;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment$3;->this$0:Lcom/biznessapps/news/NewsFragment;

    invoke-virtual {v2}, Lcom/biznessapps/news/NewsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "URL"

    invoke-virtual {v1}, Lcom/biznessapps/news/SearchEntity;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v2, "TAB_UNIQUE_ID"

    iget-object v3, p0, Lcom/biznessapps/news/NewsFragment$3;->this$0:Lcom/biznessapps/news/NewsFragment;

    invoke-virtual {v3}, Lcom/biznessapps/news/NewsFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/biznessapps/news/NewsFragment$3;->this$0:Lcom/biznessapps/news/NewsFragment;

    invoke-virtual {v2, v0}, Lcom/biznessapps/news/NewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 217
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
