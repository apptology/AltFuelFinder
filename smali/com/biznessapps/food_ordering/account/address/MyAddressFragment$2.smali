.class Lcom/biznessapps/food_ordering/account/address/MyAddressFragment$2;
.super Ljava/lang/Object;
.source "MyAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment$2;->this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment$2;->this$0:Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;

    # invokes: Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->saveData()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;->access$000(Lcom/biznessapps/food_ordering/account/address/MyAddressFragment;)V

    .line 132
    return-void
.end method
