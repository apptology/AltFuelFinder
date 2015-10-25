.class Lcom/biznessapps/youtube/YoutubeDetailFragment$5;
.super Ljava/lang/Object;
.source "YoutubeDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/youtube/YoutubeDetailFragment;->initViews(Landroid/view/ViewGroup;)V
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
    .line 190
    iput-object p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$5;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment$5;->this$0:Lcom/biznessapps/youtube/YoutubeDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 194
    return-void
.end method
