.class Lcom/biznessapps/reseller/ResellerDashboardFragment$7;
.super Ljava/lang/Object;
.source "ResellerDashboardFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$names:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    iput-object p2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->val$names:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # setter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->type:I
    invoke-static {v1, p3}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$502(Lcom/biznessapps/reseller/ResellerDashboardFragment;I)I

    .line 197
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->typeChooserView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$800(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->val$names:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    const/4 v2, 0x0

    # setter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->currentPageIndex:I
    invoke-static {v1, v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$002(Lcom/biznessapps/reseller/ResellerDashboardFragment;I)I

    .line 200
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$200(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboardAndClearFocus(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 202
    new-instance v0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    iget-object v3, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;
    invoke-static {v3}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$400(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/reseller/ResellerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/reseller/ResellerInfo;->getApps()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchText:Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$300(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->type:I
    invoke-static {v5}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$500(Lcom/biznessapps/reseller/ResellerDashboardFragment;)I

    move-result v5

    # invokes: Lcom/biznessapps/reseller/ResellerDashboardFragment;->getFilteredApps(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v2, v3, v4, v5}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$600(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;)V

    .line 203
    .local v0, "pagerAdapter":Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;
    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$700(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/widgets/ExtendedViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/widgets/ExtendedViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 204
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
