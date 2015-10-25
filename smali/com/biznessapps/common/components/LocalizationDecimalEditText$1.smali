.class Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;
.super Ljava/lang/Object;
.source "LocalizationDecimalEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/components/LocalizationDecimalEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOldStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->mOldStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 97
    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "sourceStr":Ljava/lang/String;
    const/16 v5, 0x2e

    :try_start_0
    iget-object v6, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    # getter for: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDecimalFormat:Ljava/text/DecimalFormat;
    invoke-static {v6}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$100(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Ljava/text/DecimalFormat;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "formattedStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    iget-object v6, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    # getter for: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mDecimalFormat:Ljava/text/DecimalFormat;
    invoke-static {v6}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$100(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Ljava/text/DecimalFormat;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v6

    # invokes: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->getSymbolCount(Ljava/lang/String;C)I
    invoke-static {v5, v1, v6}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$200(Lcom/biznessapps/common/components/LocalizationDecimalEditText;Ljava/lang/String;C)I

    move-result v2

    .line 108
    .local v2, "separatorCount":I
    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    .line 109
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-virtual {v5}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->getSelectionStart()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 110
    .local v4, "startSelection":I
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-virtual {v5}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->getSelectionEnd()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 112
    .local v0, "endSelection":I
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    iget-object v6, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->mOldStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-virtual {v5, v4, v0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setSelection(II)V

    .line 119
    .end local v0    # "endSelection":I
    .end local v4    # "startSelection":I
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 121
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-virtual {v5}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->getSelectionStart()I

    move-result v4

    .line 123
    .restart local v4    # "startSelection":I
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-virtual {v5, v1}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    invoke-virtual {v5, v4, v4}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "formattedStr":Ljava/lang/String;
    .end local v2    # "separatorCount":I
    .end local v3    # "sourceStr":Ljava/lang/String;
    .end local v4    # "startSelection":I
    :cond_1
    :goto_0
    return-void

    .line 129
    .restart local v3    # "sourceStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 132
    .end local v3    # "sourceStr":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    # getter for: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mWatcher:Landroid/text/TextWatcher;
    invoke-static {v5}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$000(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Landroid/text/TextWatcher;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 133
    iget-object v5, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    # getter for: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mWatcher:Landroid/text/TextWatcher;
    invoke-static {v5}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$000(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Landroid/text/TextWatcher;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    # getter for: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$000(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    # getter for: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$000(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->mOldStr:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    # getter for: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$000(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/biznessapps/common/components/LocalizationDecimalEditText$1;->this$0:Lcom/biznessapps/common/components/LocalizationDecimalEditText;

    # getter for: Lcom/biznessapps/common/components/LocalizationDecimalEditText;->mWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/biznessapps/common/components/LocalizationDecimalEditText;->access$000(Lcom/biznessapps/common/components/LocalizationDecimalEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 83
    :cond_0
    return-void
.end method
