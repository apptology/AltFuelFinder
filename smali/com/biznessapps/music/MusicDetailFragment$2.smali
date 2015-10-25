.class Lcom/biznessapps/music/MusicDetailFragment$2;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/music/MusicDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/music/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/music/MusicDetailFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/biznessapps/music/MusicDetailFragment$2;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/music/MusicDetailFragment$2;->this$0:Lcom/biznessapps/music/MusicDetailFragment;

    # getter for: Lcom/biznessapps/music/MusicDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;
    invoke-static {v0}, Lcom/biznessapps/music/MusicDetailFragment;->access$100(Lcom/biznessapps/music/MusicDetailFragment;)Lcom/biznessapps/widgets/SmartWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method
