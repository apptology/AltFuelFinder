.class Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;
.super Ljava/lang/Object;
.source "MortgageCalculatorFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->hideBottomContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;I)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    iput p2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;->val$originalHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    # getter for: Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->access$600(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->tip_indicator:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 317
    .local v1, "tipIndicator":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 318
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    # invokes: Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->updateContainerColor(Landroid/view/View;)V
    invoke-static {v3, v1}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->access$700(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;Landroid/view/View;)V

    .line 321
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;->val$originalHeight:I

    int-to-float v3, v3

    const v4, 0x3f051eb8    # 0.52f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v5, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 324
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$6;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    # getter for: Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->access$800(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->top_data_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 325
    .local v2, "topDataContainer":Landroid/view/ViewGroup;
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 326
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 312
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 308
    return-void
.end method
