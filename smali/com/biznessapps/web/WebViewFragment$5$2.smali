.class Lcom/biznessapps/web/WebViewFragment$5$2;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/web/WebViewFragment$5;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/web/WebViewFragment$5;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field final synthetic val$passwordInput:Landroid/widget/EditText;

.field final synthetic val$usernameInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/web/WebViewFragment$5;Landroid/webkit/HttpAuthHandler;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment$5$2;->this$1:Lcom/biznessapps/web/WebViewFragment$5;

    iput-object p2, p0, Lcom/biznessapps/web/WebViewFragment$5$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iput-object p3, p0, Lcom/biznessapps/web/WebViewFragment$5$2;->val$usernameInput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/biznessapps/web/WebViewFragment$5$2;->val$passwordInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment$5$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment$5$2;->val$usernameInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/web/WebViewFragment$5$2;->val$passwordInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 311
    return-void
.end method
