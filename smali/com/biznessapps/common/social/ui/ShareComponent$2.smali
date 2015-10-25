.class final Lcom/biznessapps/common/social/ui/ShareComponent$2;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$listener:Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$2;->val$commentEditView:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/biznessapps/common/social/ui/ShareComponent$2;->val$listener:Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$2;->val$commentEditView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "textToShare":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$2;->val$listener:Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$2;->val$listener:Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;

    invoke-interface {v1, v0}, Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;->onCommentEntered(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method
