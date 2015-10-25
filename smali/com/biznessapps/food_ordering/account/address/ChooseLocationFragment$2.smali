.class Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;
.super Ljava/lang/Object;
.source "ChooseLocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 86
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;->val$searchEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;->val$searchEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$302(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$2;->val$searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 95
    return-void
.end method
