.class Lcom/devicecollector/collectors/WebCollectorTask$1$1;
.super Landroid/webkit/WebViewClient;
.source "WebCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devicecollector/collectors/WebCollectorTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field task:Lcom/devicecollector/collectors/WebCollectorTask;

.field final synthetic this$1:Lcom/devicecollector/collectors/WebCollectorTask$1;


# direct methods
.method constructor <init>(Lcom/devicecollector/collectors/WebCollectorTask$1;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$1;->this$1:Lcom/devicecollector/collectors/WebCollectorTask$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$1;->this$1:Lcom/devicecollector/collectors/WebCollectorTask$1;

    iget-object v0, v0, Lcom/devicecollector/collectors/WebCollectorTask$1;->this$0:Lcom/devicecollector/collectors/WebCollectorTask;

    iput-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$1;->task:Lcom/devicecollector/collectors/WebCollectorTask;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$1;->task:Lcom/devicecollector/collectors/WebCollectorTask;

    # invokes: Lcom/devicecollector/collectors/WebCollectorTask;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/devicecollector/collectors/WebCollectorTask;->access$100(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$1;->task:Lcom/devicecollector/collectors/WebCollectorTask;

    # invokes: Lcom/devicecollector/collectors/WebCollectorTask;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/devicecollector/collectors/WebCollectorTask;->access$200(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "ec"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$1;->task:Lcom/devicecollector/collectors/WebCollectorTask;

    # invokes: Lcom/devicecollector/collectors/WebCollectorTask;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/devicecollector/collectors/WebCollectorTask;->access$300(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$1;->task:Lcom/devicecollector/collectors/WebCollectorTask;

    # invokes: Lcom/devicecollector/collectors/WebCollectorTask;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    invoke-static {v0, p1, p2, p3}, Lcom/devicecollector/collectors/WebCollectorTask;->access$400(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 128
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/devicecollector/collectors/WebCollectorTask$1$1;->task:Lcom/devicecollector/collectors/WebCollectorTask;

    # invokes: Lcom/devicecollector/collectors/WebCollectorTask;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/devicecollector/collectors/WebCollectorTask;->access$500(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
