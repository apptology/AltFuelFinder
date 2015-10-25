.class Lcom/biznessapps/web/WebViewFragment$1;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/web/WebViewFragment;
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
    .line 99
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 108
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 111
    .local v3, "sizeBeforeChanging":I
    const-string v6, "about:blank"

    iget-object v7, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v7}, Lcom/biznessapps/web/WebViewFragment;->access$100(Lcom/biznessapps/web/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 112
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v7}, Lcom/biznessapps/web/WebViewFragment;->access$100(Lcom/biznessapps/web/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    :goto_0
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 120
    .local v2, "sizeAfterChanging":I
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_5

    if-ne v3, v2, :cond_5

    move v1, v4

    .line 123
    .local v1, "errorIsHappened":Z
    :goto_1
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$100(Lcom/biznessapps/web/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$100(Lcom/biznessapps/web/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-eqz v1, :cond_6

    :cond_1
    move v0, v4

    .line 124
    .local v0, "canGoBack":Z
    :goto_2
    if-eqz v0, :cond_2

    .line 125
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$100(Lcom/biznessapps/web/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->goBack()V

    .line 129
    :cond_2
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_3

    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/web/WebViewFragment;->access$200(Lcom/biznessapps/web/WebViewFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # invokes: Lcom/biznessapps/web/WebViewFragment;->loadContent()V
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$300(Lcom/biznessapps/web/WebViewFragment;)V

    .line 132
    :cond_3
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v1, :cond_7

    :goto_3
    return v4

    .line 114
    .end local v0    # "canGoBack":Z
    .end local v1    # "errorIsHappened":Z
    .end local v2    # "sizeAfterChanging":I
    :cond_4
    iget-object v6, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;
    invoke-static {v6}, Lcom/biznessapps/web/WebViewFragment;->access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/web/WebViewFragment$1;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/web/WebViewFragment;->access$200(Lcom/biznessapps/web/WebViewFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v2    # "sizeAfterChanging":I
    :cond_5
    move v1, v5

    .line 120
    goto :goto_1

    .restart local v1    # "errorIsHappened":Z
    :cond_6
    move v0, v5

    .line 123
    goto :goto_2

    .restart local v0    # "canGoBack":Z
    :cond_7
    move v4, v5

    .line 132
    goto :goto_3
.end method
