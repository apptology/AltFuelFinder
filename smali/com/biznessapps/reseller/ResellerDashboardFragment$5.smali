.class Lcom/biznessapps/reseller/ResellerDashboardFragment$5;
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

.field final synthetic val$typeSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$5;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    iput-object p2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$5;->val$typeSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$5;->val$typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 173
    return-void
.end method
