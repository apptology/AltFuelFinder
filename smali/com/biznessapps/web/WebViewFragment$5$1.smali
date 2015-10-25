.class Lcom/biznessapps/web/WebViewFragment$5$1;
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

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/biznessapps/web/WebViewFragment$5;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment$5$1;->this$1:Lcom/biznessapps/web/WebViewFragment$5;

    iput-object p2, p0, Lcom/biznessapps/web/WebViewFragment$5$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 316
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment$5$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 317
    return-void
.end method
