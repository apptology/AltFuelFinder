.class Lcom/biznessapps/reseller/ResellerDashboardFragment$8;
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
    .line 211
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$200(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboardAndClearFocus(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 216
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->reseller_dashboard_logout:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$8$1;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment$8;)V

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method
