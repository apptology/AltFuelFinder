.class Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;
.super Ljava/lang/Object;
.source "ChooseLocationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

.field final synthetic val$searchEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;->val$searchEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;->val$searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$002(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;->val$searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 83
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$1;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$100(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchAddress(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$200(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Ljava/lang/String;)V

    .line 84
    return-void
.end method
