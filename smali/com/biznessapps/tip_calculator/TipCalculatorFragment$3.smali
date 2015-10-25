.class Lcom/biznessapps/tip_calculator/TipCalculatorFragment$3;
.super Ljava/lang/Object;
.source "TipCalculatorFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 209
    iput-object p1, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$3;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

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

    .line 212
    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    move v0, v1

    .line 213
    .local v0, "actionDone":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/biznessapps/tip_calculator/TipCalculatorFragment$3;->this$0:Lcom/biznessapps/tip_calculator/TipCalculatorFragment;

    # getter for: Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->percentEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/biznessapps/tip_calculator/TipCalculatorFragment;->access$200(Lcom/biznessapps/tip_calculator/TipCalculatorFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 216
    :cond_0
    return v1

    .line 212
    .end local v0    # "actionDone":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
