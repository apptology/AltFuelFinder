.class Lcom/biznessapps/food_ordering/cart/CartFragment$5;
.super Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;
.source "CartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartFragment;->checkAvailability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartFragment;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$5;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-direct {p0}, Lcom/biznessapps/food_ordering/CheckAvailabilityTask$CustomRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartFragment$5;->this$0:Lcom/biznessapps/food_ordering/cart/CartFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartFragment;->loadData()V

    .line 350
    return-void
.end method
