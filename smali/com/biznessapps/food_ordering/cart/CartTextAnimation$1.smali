.class Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;
.super Ljava/util/TimerTask;
.source "CartTextAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

.field final synthetic val$inAnim:Landroid/view/animation/Animation;

.field final synthetic val$outAnim:Landroid/view/animation/Animation;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;Landroid/os/Handler;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->val$uiHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->val$outAnim:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->val$inAnim:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->val$uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;-><init>(Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
