.class Lcom/biznessapps/reseller/ResellerDashboardFragment$6;
.super Ljava/lang/Object;
.source "ResellerDashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reseller/ResellerDashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$200(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboardAndClearFocus(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 180
    new-instance v0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    iget-object v3, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;
    invoke-static {v3}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$400(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/reseller/ResellerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/reseller/ResellerInfo;->getApps()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchText:Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$300(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->type:I
    invoke-static {v5}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$500(Lcom/biznessapps/reseller/ResellerDashboardFragment;)I

    move-result v5

    # invokes: Lcom/biznessapps/reseller/ResellerDashboardFragment;->getFilteredApps(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v2, v3, v4, v5}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$600(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;)V

    .line 181
    .local v0, "pagerAdapter":Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$700(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/widgets/ExtendedViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/ExtendedViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 182
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$700(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/widgets/ExtendedViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->currentPageIndex:I
    invoke-static {v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$000(Lcom/biznessapps/reseller/ResellerDashboardFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/ExtendedViewPager;->setCurrentItem(I)V

    .line 183
    return-void
.end method
