.class Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$1;
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


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 123
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->access$200(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    iget-object v2, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->cancelled:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->access$100(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->cancelled:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method
