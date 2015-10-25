.class Lcom/braintreepayments/cardform/view/FloatingLabelEditText$3;
.super Ljava/lang/Object;
.source "FloatingLabelEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braintreepayments/cardform/view/FloatingLabelEditText;


# direct methods
.method constructor <init>(Lcom/braintreepayments/cardform/view/FloatingLabelEditText;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$3;->this$0:Lcom/braintreepayments/cardform/view/FloatingLabelEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$3;->this$0:Lcom/braintreepayments/cardform/view/FloatingLabelEditText;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->mHintAlpha:I
    invoke-static {v1, v0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->access$202(Lcom/braintreepayments/cardform/view/FloatingLabelEditText;I)I

    .line 99
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/FloatingLabelEditText$3;->this$0:Lcom/braintreepayments/cardform/view/FloatingLabelEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/FloatingLabelEditText;->invalidate()V

    .line 100
    return-void
.end method
