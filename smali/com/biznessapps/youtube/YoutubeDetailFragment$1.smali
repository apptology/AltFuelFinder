.class Lcom/biznessapps/youtube/YoutubeDetailFragment$1;
.super Ljava/lang/Object;
.source "YoutubeDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/youtube/YoutubeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$1;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$1;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    # getter for: Lcom/biznessapps/youtube/YoutubeDetailFragment;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->access$000(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method
