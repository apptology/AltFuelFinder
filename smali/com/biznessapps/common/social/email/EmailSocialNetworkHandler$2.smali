.class Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;
.super Ljava/lang/Object;
.source "EmailSocialNetworkHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->_login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

.field final synthetic val$etEmail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    iput-object p2, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->val$etEmail:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->val$etEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isCorrectEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->setEmailAccount(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->access$300(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    invoke-interface {v1, v2}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v1}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->access$600(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    iget-object v3, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->access$400(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->failed:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->access$500(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
