.class Lcom/biznessapps/mortgage/MortgageCalculatorFragment$4;
.super Ljava/lang/Object;
.source "MortgageCalculatorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 194
    iput-object p1, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$4;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$4;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    # invokes: Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->reset()V
    invoke-static {v0}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->access$400(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)V

    .line 198
    return-void
.end method
