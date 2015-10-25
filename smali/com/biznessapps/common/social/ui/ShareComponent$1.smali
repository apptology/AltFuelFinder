.class final Lcom/biznessapps/common/social/ui/ShareComponent$1;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent;->showPostCommentDialog(Landroid/app/Activity;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$commentEditView:Landroid/widget/EditText;

.field final synthetic val$messageCounterView:Landroid/widget/TextView;

.field final synthetic val$textLimit:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$1;->val$commentEditView:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$1;->val$messageCounterView:Landroid/widget/TextView;

    iput p3, p0, Lcom/biznessapps/common/social/ui/ShareComponent$1;->val$textLimit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 119
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 109
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$1;->val$commentEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$1;->val$messageCounterView:Landroid/widget/TextView;

    iget v2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$1;->val$textLimit:I

    # invokes: Lcom/biznessapps/common/social/ui/ShareComponent;->setMessageCounterText(Ljava/lang/String;Landroid/widget/TextView;I)V
    invoke-static {v0, v1, v2}, Lcom/biznessapps/common/social/ui/ShareComponent;->access$000(Ljava/lang/String;Landroid/widget/TextView;I)V

    .line 111
    return-void
.end method
