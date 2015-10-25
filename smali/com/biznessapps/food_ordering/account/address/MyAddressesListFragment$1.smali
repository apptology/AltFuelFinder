.class Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$1;
.super Ljava/lang/Object;
.source "MyAddressesListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->openAccountItem(Landroid/app/Activity;Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    .line 74
    return-void
.end method
