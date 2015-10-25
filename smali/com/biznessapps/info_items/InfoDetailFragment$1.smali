.class Lcom/biznessapps/info_items/InfoDetailFragment$1;
.super Ljava/lang/Object;
.source "InfoDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/info_items/InfoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/info_items/InfoDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/info_items/InfoDetailFragment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/biznessapps/info_items/InfoDetailFragment$1;->this$0:Lcom/biznessapps/info_items/InfoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment$1;->this$0:Lcom/biznessapps/info_items/InfoDetailFragment;

    iget-object v0, v0, Lcom/biznessapps/info_items/InfoDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method
