.class Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;
.super Ljava/lang/Object;
.source "CartTextAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->currentPos:I
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->access$000(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->access$100(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v1, v1, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->val$outAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->access$200(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v1, v1, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->val$inAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v1, v1, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->currentPos:I
    invoke-static {v1}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->access$000(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    # setter for: Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->currentPos:I
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->access$002(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;I)I

    .line 67
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->access$100(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v1, v1, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->val$inAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v0, v0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->this$0:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    # getter for: Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->access$200(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1$1;->this$1:Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    iget-object v1, v1, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;->val$outAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
