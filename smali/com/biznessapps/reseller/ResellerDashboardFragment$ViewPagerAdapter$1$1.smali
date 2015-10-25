.class Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1$1;
.super Ljava/lang/Object;
.source "ResellerDashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;

.field final synthetic val$item:Lcom/biznessapps/reseller/ResellerInfo$AppInfo;


# direct methods
.method constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;Lcom/biznessapps/reseller/ResellerInfo$AppInfo;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1$1;->this$2:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;

    iput-object p2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1$1;->val$item:Lcom/biznessapps/reseller/ResellerInfo$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 414
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1$1;->this$2:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;

    iget-object v2, v2, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    iget-object v2, v2, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/layout/MainController;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "APPCODE"

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1$1;->val$item:Lcom/biznessapps/reseller/ResellerInfo$AppInfo;

    invoke-virtual {v2}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->getAppCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v1, "IS_FROM_RESELLER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1$1;->this$2:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;

    iget-object v1, v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    iget-object v1, v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v1, v0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 418
    return-void
.end method
