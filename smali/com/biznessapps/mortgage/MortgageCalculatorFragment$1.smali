.class Lcom/biznessapps/mortgage/MortgageCalculatorFragment$1;
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
    .line 158
    iput-object p1, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$1;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 161
    const/4 v3, 0x5

    if-ne p2, v3, :cond_2

    move v0, v2

    .line 162
    .local v0, "actionDone":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 163
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$1;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    # getter for: Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->amountEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->access$000(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "amountText":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/mortgage/MortgageCalculatorFragment$1;->this$0:Lcom/biznessapps/mortgage/MortgageCalculatorFragment;

    # getter for: Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->termEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/biznessapps/mortgage/MortgageCalculatorFragment;->access$100(Lcom/biznessapps/mortgage/MortgageCalculatorFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 170
    .end local v1    # "amountText":Ljava/lang/String;
    :cond_1
    return v2

    .line 161
    .end local v0    # "actionDone":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
