.class Lcom/biznessapps/tip_calculator/TipCalculatorFragment$1;
.super Ljava/lang/Object;
.source "TipCalculatorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->initListeners()V
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
    .line 196
    iput-object p1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$1;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$1;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    # invokes: Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->calculate()V
    invoke-static {v0}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->access$000(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)V

    .line 201
    return-void
.end method
