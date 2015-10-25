.class Lcom/biznessapps/web/WebViewFragment$6;
.super Landroid/webkit/WebChromeClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/web/WebViewFragment;->initControls(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/web/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/web/WebViewFragment;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment$6;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 331
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 332
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment$6;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # setter for: Lcom/biznessapps/web/WebViewFragment;->uploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v1, p1}, Lcom/biznessapps/web/WebViewFragment;->access$602(Lcom/biznessapps/web/WebViewFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment$6;->this$0:Lcom/biznessapps/web/WebViewFragment;

    const-string v2, "Image Browser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/web/WebViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/web/WebViewFragment$6;->openFileChooser(Landroid/webkit/ValueCallback;)V

    .line 343
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/web/WebViewFragment$6;->openFileChooser(Landroid/webkit/ValueCallback;)V

    .line 339
    return-void
.end method
