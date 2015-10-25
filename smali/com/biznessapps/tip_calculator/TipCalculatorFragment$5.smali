.class Lcom/biznessapps/tip_calculator/TipCalculatorFragment$5;
.super Ljava/lang/Object;
.source "TipCalculatorFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->hideBottomContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$5;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x0

    .line 352
    iget-object v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$5;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    # getter for: Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->access$400(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->tip_indicator:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 353
    .local v1, "tipIndicator":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 354
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$5;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    # invokes: Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->updateContainerColor(Landroid/view/View;)V
    invoke-static {v3, v1}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->access$500(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;Landroid/view/View;)V

    .line 357
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 358
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$5;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    # getter for: Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->originalHeight:I
    invoke-static {v3}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->access$600(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v5, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 360
    iget-object v3, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$5;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    # getter for: Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->access$700(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->top_data_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 361
    .local v2, "topDataContainer":Landroid/view/ViewGroup;
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 362
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 348
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 344
    return-void
.end method
