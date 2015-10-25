.class Lcom/biznessapps/mortgage/MortgageCalculatorFragment$2;
.super Ljava/lang/Object;
.source "MortgageCalculatorFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->initViews()V
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
    .line 173
    iput-object p1, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$2;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 176
    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    move v0, v1

    .line 177
    .local v0, "actionDone":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$2;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    # getter for: Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->rateEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->access$200(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 180
    :cond_0
    return v1

    .line 176
    .end local v0    # "actionDone":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
