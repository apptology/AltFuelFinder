.class Lcom/biznessapps/mortgage/MortgageCalculatorFragment$5;
.super Ljava/lang/Object;
.source "MortgageCalculatorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$5;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$5;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    # getter for: Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->calculateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->access$500(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 204
    return-void
.end method
