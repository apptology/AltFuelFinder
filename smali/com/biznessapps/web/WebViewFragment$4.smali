.class Lcom/biznessapps/web/WebViewFragment$4;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


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
    .line 207
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment$4;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "urlToLoad"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment$4;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v1, v0}, Lcom/biznessapps/web/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method
