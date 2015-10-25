.class Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$2;
.super Ljava/lang/Object;
.source "ResellerDashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 422
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$2;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$2;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    iget-object v0, v0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$2;->this$1:Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    iget-object v1, v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$200(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboardAndClearFocus(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 427
    const/4 v0, 0x0

    return v0
.end method
