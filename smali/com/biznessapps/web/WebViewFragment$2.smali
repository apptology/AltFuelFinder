.class Lcom/biznessapps/web/WebViewFragment$2;
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
    .line 136
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment$2;->this$0:Lcom/biznessapps/web/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment$2;->this$0:Lcom/biznessapps/web/WebViewFragment;

    # getter for: Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/biznessapps/web/WebViewFragment;->access$100(Lcom/biznessapps/web/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method
