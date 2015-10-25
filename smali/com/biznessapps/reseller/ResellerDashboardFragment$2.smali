.class Lcom/biznessapps/reseller/ResellerDashboardFragment$2;
.super Ljava/lang/Object;
.source "ResellerDashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 124
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$2;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$2;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$2;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$200(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboardAndClearFocus(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 129
    const/4 v0, 0x0

    return v0
.end method
