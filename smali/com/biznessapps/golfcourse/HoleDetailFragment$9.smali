.class Lcom/biznessapps/golfcourse/HoleDetailFragment$9;
.super Ljava/lang/Object;
.source "HoleDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/HoleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$9;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$9;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mWebInfo:Lcom/biznessapps/widgets/SmartWebView;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$1400(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/widgets/SmartWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method
