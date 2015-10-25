.class Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "ResellerDashboardFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->setAppsToView(Ljava/util/List;Landroid/widget/GridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 409
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;

    .line 410
    .local v0, "item":Lcom/biznessapps/reseller/ResellerInfo$AppInfo;
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    iget-object v5, v5, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->reseller_dashboard_login:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->getAppCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    iget-object v2, v2, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1$1;

    invoke-direct {v4, p0, v0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1$1;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;Lcom/biznessapps/reseller/ResellerInfo$AppInfo;)V

    invoke-static {v2, v3, v1, v4, v7}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 420
    return-void
.end method
