.class Lcom/devicecollector/collectors/WebCollectorTask$1;
.super Ljava/lang/Object;
.source "WebCollectorTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devicecollector/collectors/WebCollectorTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devicecollector/collectors/WebCollectorTask;

.field final synthetic val$dcStartUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/devicecollector/collectors/WebCollectorTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/devicecollector/collectors/WebCollectorTask$1;->this$0:Lcom/devicecollector/collectors/WebCollectorTask;

    iput-object p2, p0, Lcom/devicecollector/collectors/WebCollectorTask$1;->val$dcStartUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 93
    iget-object v1, p0, Lcom/devicecollector/collectors/WebCollectorTask$1;->this$0:Lcom/devicecollector/collectors/WebCollectorTask;

    .line 94
    .local v1, "task":Lcom/devicecollector/collectors/WebCollectorTask;
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/devicecollector/collectors/WebCollectorTask$1;->this$0:Lcom/devicecollector/collectors/WebCollectorTask;

    iget-object v3, v3, Lcom/devicecollector/collectors/WebCollectorTask;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/devicecollector/collectors/WebCollectorTask;->webview:Landroid/webkit/WebView;
    invoke-static {v1, v2}, Lcom/devicecollector/collectors/WebCollectorTask;->access$002(Lcom/devicecollector/collectors/WebCollectorTask;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 97
    # getter for: Lcom/devicecollector/collectors/WebCollectorTask;->webview:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/devicecollector/collectors/WebCollectorTask;->access$000(Lcom/devicecollector/collectors/WebCollectorTask;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 99
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 101
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 105
    # getter for: Lcom/devicecollector/collectors/WebCollectorTask;->webview:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/devicecollector/collectors/WebCollectorTask;->access$000(Lcom/devicecollector/collectors/WebCollectorTask;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/devicecollector/collectors/WebCollectorTask$1$1;

    invoke-direct {v3, p0}, Lcom/devicecollector/collectors/WebCollectorTask$1$1;-><init>(Lcom/devicecollector/collectors/WebCollectorTask$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    # getter for: Lcom/devicecollector/collectors/WebCollectorTask;->webview:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/devicecollector/collectors/WebCollectorTask;->access$000(Lcom/devicecollector/collectors/WebCollectorTask;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/devicecollector/collectors/WebCollectorTask$1$2;

    invoke-direct {v3, p0}, Lcom/devicecollector/collectors/WebCollectorTask$1$2;-><init>(Lcom/devicecollector/collectors/WebCollectorTask$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 145
    # getter for: Lcom/devicecollector/collectors/WebCollectorTask;->webview:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/devicecollector/collectors/WebCollectorTask;->access$000(Lcom/devicecollector/collectors/WebCollectorTask;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lcom/devicecollector/collectors/WebCollectorTask$1;->val$dcStartUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 146
    return-void
.end method
