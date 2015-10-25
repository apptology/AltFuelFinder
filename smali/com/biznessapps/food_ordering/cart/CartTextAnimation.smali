.class public Lcom/biznessapps/food_ordering/cart/CartTextAnimation;
.super Ljava/lang/Object;
.source "CartTextAnimation.java"


# static fields
.field private static final INTERVAL:Ljava/lang/Long;


# instance fields
.field private cartContainer:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private currentPos:I

.field private myTimer:Ljava/util/Timer;

.field private textView1:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0xa8c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->INTERVAL:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView1"    # Landroid/widget/TextView;
    .param p3, "textView2"    # Landroid/widget/TextView;
    .param p4, "cartContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView1:Landroid/widget/TextView;

    .line 30
    iput-object p3, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView2:Landroid/widget/TextView;

    .line 31
    iput-object p4, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->cartContainer:Landroid/view/ViewGroup;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    .prologue
    .line 18
    iget v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->currentPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartTextAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->currentPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView2:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getCartContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->cartContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public startAnim()V
    .locals 14

    .prologue
    .line 35
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v6

    .line 36
    .local v6, "cart":Lcom/biznessapps/food_ordering/entities/CartEntity;
    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 37
    .local v10, "itemsNumber":I
    if-lez v10, :cond_1

    .line 38
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->context:Landroid/content/Context;

    sget v1, Lcom/biznessapps/layout/R$anim;->cart_anim_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    .line 39
    .local v11, "outAnim":Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->context:Landroid/content/Context;

    sget v1, Lcom/biznessapps/layout/R$anim;->cart_anim_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 41
    .local v8, "inAnim":Landroid/view/animation/Animation;
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 43
    .local v13, "uiHandler":Landroid/os/Handler;
    const/4 v12, 0x0

    .line 44
    .local v12, "quantity":I
    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 45
    .local v9, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-virtual {v9}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v0

    add-int/2addr v12, v0

    goto :goto_0

    .line 48
    .end local v9    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->currentPos:I

    .line 49
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView1:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getTotalCharges()F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->myTimer:Ljava/util/Timer;

    .line 53
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->myTimer:Ljava/util/Timer;

    new-instance v1, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;

    invoke-direct {v1, p0, v13, v11, v8}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation$1;-><init>(Lcom/biznessapps/food_ordering/cart/CartTextAnimation;Landroid/os/Handler;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    sget-object v2, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->INTERVAL:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->INTERVAL:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 75
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "inAnim":Landroid/view/animation/Animation;
    .end local v11    # "outAnim":Landroid/view/animation/Animation;
    .end local v12    # "quantity":I
    .end local v13    # "uiHandler":Landroid/os/Handler;
    :goto_1
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->textView2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->myTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 80
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 82
    :cond_0
    return-void
.end method
