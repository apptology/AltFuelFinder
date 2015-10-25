.class Lcom/biznessapps/food_ordering/FOMainActivity$2;
.super Ljava/lang/Object;
.source "FOMainActivity.java"

# interfaces
.implements Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/FOMainActivity;->initBraintreeAndTest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/FOMainActivity;

.field final synthetic val$clientToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/FOMainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/food_ordering/FOMainActivity$2;->this$0:Lcom/biznessapps/food_ordering/FOMainActivity;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/FOMainActivity$2;->val$clientToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBraintreeSetupFinished(ZLcom/braintreepayments/api/Braintree;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "setupSuccessful"    # Z
    .param p2, "braintree"    # Lcom/braintreepayments/api/Braintree;
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/FOMainActivity$2;->val$clientToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->setClientToken(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method
