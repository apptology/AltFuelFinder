.class Lcom/biznessapps/web/WebViewFragment$7;
.super Landroid/os/AsyncTask;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/web/WebViewFragment;->initControls(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/web/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/web/WebViewFragment;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment$7;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 387
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/web/WebViewFragment$7;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment$7;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/web/WebViewFragment;->access$700(Lcom/biznessapps/web/WebViewFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->getUrlsFromPlsStream(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 387
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/web/WebViewFragment$7;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "streams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 395
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    .local v1, "urlToLoad":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "externalIntent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 398
    iget-object v2, p0, Lcom/biznessapps/web/WebViewFragment$7;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v2, v0}, Lcom/biznessapps/web/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 399
    iget-object v2, p0, Lcom/biznessapps/web/WebViewFragment$7;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-virtual {v2}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 401
    .end local v0    # "externalIntent":Landroid/content/Intent;
    .end local v1    # "urlToLoad":Ljava/lang/String;
    :cond_0
    return-void
.end method
