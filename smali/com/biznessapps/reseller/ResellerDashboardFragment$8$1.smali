.class Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;
.super Ljava/lang/Object;
.source "ResellerDashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$8;


# direct methods
.method constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment$8;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$8;

    iget-object v1, v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "contentchangerviewcontroller"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "contentchangerviewcontroller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$8;

    iget-object v1, v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v1, v0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 223
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$8;

    iget-object v1, v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$8;

    iget-object v2, v2, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "RESELLER_ID_KEY"

    invoke-virtual {v1, v2, v3, v4}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$8;

    iget-object v1, v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 225
    return-void
.end method
