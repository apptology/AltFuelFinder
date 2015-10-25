.class Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$2;
.super Ljava/lang/Object;
.source "MyAddressesListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;

.field final synthetic val$item:Lcom/biznessapps/food_ordering/account/AccountEntity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$2;->this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$2;->val$item:Lcom/biznessapps/food_ordering/account/AccountEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$2;->this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$2;->val$item:Lcom/biznessapps/food_ordering/account/AccountEntity;

    # invokes: Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->deleteAccount(Lcom/biznessapps/food_ordering/account/AccountEntity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->access$000(Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;Lcom/biznessapps/food_ordering/account/AccountEntity;)V

    .line 87
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment$2;->this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/address/MyAddressesListFragment;->loadData()V

    .line 88
    return-void
.end method
